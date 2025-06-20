###########################################
# Title:  standalone_module_se_to_diff.tcl
# Author: Michal Gorywoda
# Date:   28.03.2024
###########################################


set mul_arch benc_radix4


#set top_module LOGIC_DATA_WIDTH32
set top_module ALU
#set netlist_file /home/hotwater/Voltage_Stacking/PipelinedCore/Design/SIGNOFF/LIBERATE/run_char/syn_test/SYN_DC/output/${top_module}.v_master.v
set netlist_file "/home/hotwater/Voltage_Stacking/PipelinedCore/Design/SIGNOFF/LIBERATE/run_char/syn_test/SYN_DC/output/ALU_benc_radix4_BARE.v_master.v"
#set netlist_file "/home/hotwater/Voltage_Stacking/PipelinedCore/Design/SIGNOFF/LIBERATE/run_char/syn_test/SYN_DC/output/ALU_NOMAC_BARE.v_master.v"


#read_file -format verilog 
read_verilog -netlist $netlist_file

current_design $top_module

#ungroup -all


# Create all inverted ports in top module
set module_ports [filter_collection [get_ports *] "name!= VDD and name!= VSS and name != module_clk_i and name != e_i"]

foreach_in_collection port $module_ports {
    puts "Processing port [get_attribute [get_port $port] name]"
    set port_name [get_attribute $port name]
    #set port_direction [get_attribute $port_name port_direction]
    set port_direction [get_attribute [get_port $port] port_direction]
    #Remove square brackets 
    set port_name [string map {[ "" ] ""} $port_name]
    create_port -direction $port_direction ${port_name}N
}



#Set clock gates to ignore when creating differential connections
set global_clock_gate_cells [filter_collection [get_cells] "ref_name==CKLNQD_TALL_WEA or ref_name==CKLNQD_TALL_STR"]
#set global_clock_gate_cells [filter_collection [get_cells] "ref_name==CKAN8_4X or ref_name==CKAN8_8X"]

#Get other modules
#Process each module separately for internal differential connections
#Also, add differential ports for modules that are connected to the top module
set submodules [filter_collection [get_cells -hierarchical] -regexp {is_hierarchical==true}]
#Iterate through modules for differential connections, create ports 
foreach_in_collection submodule_i $submodules {
    #set submodule [get_cell [get_attribute $submodule_i name]]
    set standalone_submodule 1
    set submodule [get_attribute [get_cells $submodule_i] full_name]
    puts $submodule
    source ./module_ports.tcl
}
#Minus the I_SEL! It has to be processed separately
#Or just swap the order so that submodules are processed first
set submodules [filter_collection [get_cells -hierarchical] -regexp {is_hierarchical==true}]

set submodules [remove_from_collection $submodules [filter_collection $submodules "name==I_MUL"]]
set submodules [remove_from_collection $submodules [filter_collection $submodules "name==SELECTOR_I"]]

#set submodules [remove_from_collection $submodules [filter_collection $submodules "name==I_SEL"]]

set submodule LOGIC_DATA_WIDTH32
current_design $submodule
set logic_submodules [filter_collection [get_cells -hierarchical] -regexp {is_hierarchical==true}]
#set logic_submodules [remove_from_collection $logic_submodules [filter_collection $logic_submodules "name==I_SEL"]]

##Flatten hierarchy of LOGIC module after the clocks are connected
foreach_in_collection submodule_i $logic_submodules {
    set submodule [get_attribute [get_cells $submodule_i] full_name]
    set module_clk_net [get_net -of_objects $submodule/module_clk_i]
    set cells [get_cells $submodule/*]
    #set module_clk_port [get_port $submodule/clk_i]
    set clock_gate_cells [get_cells ${submodule}_GATE]
    set clock_gate_clk_pin [get_pins -of_objects [get_cells ${submodule}_GATE] -filter "name==Q"]
    set module_clk_pins [get_pins -of_objects $cells -filter "name==CLK"]
    #connect_pin -from $clock_gate_clk_pin -to $module_clk_pins -port $submodule/module_clk_i
    if {$submodule == "I_SEL" } {
        connect_pin -from [get_pins LOGIC_GATE/Q] -to $module_clk_pins -port $submodule/module_clk_i
    } else {
        connect_pin -from $clock_gate_clk_pin -to $module_clk_pins -port $submodule/module_clk_i
    }
}

ungroup [filter_collection [get_cells -hierarchical] -regexp {is_hierarchical==true}]
current_design $top_module

#Now add I_SEL in the end
append_to_collection submodules [filter_collection [get_cells -hierarchical] "name==I_MUL"]
append_to_collection submodules [filter_collection [get_cells -hierarchical] "name==SELECTOR_I"]
#append_to_collection submodules [filter_collection [get_cells -hierarchical] "name==I_SEL"]

#Iterate through modules for differential connections, create ports 
foreach_in_collection submodule_i $submodules {
    #set submodule [get_cell [get_attribute $submodule_i name]]
    set standalone_submodule 1
    set submodule [get_attribute [get_cells $submodule_i] full_name]
    puts $submodule
    source ./module_se_to_diff.tcl
    set cells [get_cells $submodule/*]
    # Connect clock in submodule
    set module_clk_net [get_net -of_objects $submodule/module_clk_i]
    #set module_clk_port [get_port $submodule/clk_i]
    set clock_gate_cells [get_cells ${submodule}_GATE]
    set clock_gate_clk_pin [get_pins -of_objects [get_cells ${submodule}_GATE] -filter "name==Q"]
    set module_clk_pins [get_pins -of_objects $cells -filter "name==CLK"]
    connect_pin -from $clock_gate_clk_pin -to $module_clk_pins -port $submodule/module_clk_i
    if {$submodule == "I_SEL" } {
        connect_pin -from [get_pins LOGIC_GATE/Q] -to $module_clk_pins -port $submodule/module_clk_i
    } elseif {$submodule == "SELECTOR_I" } {
        connect_pin -from $submodule/module_clk_i -to $module_clk_pins 
    } else {
        connect_pin -from $clock_gate_clk_pin -to $module_clk_pins -port $submodule/module_clk_i
    }
    set gated_clock_net [get_nets -of_objects $clock_gate_clk_pin]
}
set standalone_submodule 0
#source ./com_fix.tcl


## Connect clock

#create_port -direction in CLK
#create_net CLK
#connect_net CLK CLK
#create_clock CLK -period 10.0
set all_clk_pins [filter_collection [get_pins -of_objects [get_cells *]] "name==CLK"]


set clock_connections 0
#disconnect_net $all_clk_pins
connect_net module_clk_i $all_clk_pins

## Create clock buffers? Or clock mesh




###### Change netlist ######

## Make the script recognize outputs regardless of naming
## I.E. the FA cells have different output names than generic gates 


#Write fat variant without differential connections 
#write -format verilog -output ${top_module}_FAT.v
#write -format verilog -pg -output ${top_module}_FAT.pg.v

#Get all cells
set cells [get_cells] 
#Remove clock gate cells from collection
set cells [remove_from_collection $cells $global_clock_gate_cells]
#Remove submodule cells
set submodules [filter_collection [get_cells] -regexp {is_hierarchical==true}]
set cells [remove_from_collection $cells $submodules]

#Remove output converter cells
set cells [remove_from_collection $cells [filter_collection $cells "ref_name==DIFF2SE"]]

#But remove cells of processed modules!

set connected_outputs ""
foreach_in_collection cell $cells {
    
    set inst_pin [get_pins -of_objects $cell]
    set skip_cell 0
    set already_connected 0
    puts "Processing cell [get_attribute [get_cell $cell ] name]"
    #This is a check assuming Y, YN output name convention.
    #Ideally, check all the outputs of a cell should the naming be different
    #What if the cell has many outputs? Consider this.
    set cell_outputs [filter_collection [get_pins $inst_pin] "direction==out"]

    #set outptus_processed
    #get_attribute [get_net -of_objects [get_pins $cell_outputs]] name
    #set connected_outputs [filter_collection [get_attribute [get_net -of_objects [get_pins $cell_outputs]] name] "name!="]
    #set connected_outputs $cell_outputs
    #set connected_outputs
    set connected_outputs [remove_from_collection $connected_outputs $connected_outputs]
    append_to_collection connected_outputs $cell_outputs
    foreach_in_collection cell_output $cell_outputs {
        ##set cell_output_net [get_attribute $cell_output net]
        set pin_connection [get_nets -of_objects $cell_output]
        if {$pin_connection != "" } {
            puts "Pin [get_attribute $cell_output full_name] is connected to net [get_attribute [get_nets $pin_connection] name]"
            #append_to_collection connected_outputs [get_attribute [get_nets $pin_connection] name]
        } else {
            puts "Pin [get_attribute $cell_output full_name] is not connected"
            set connected_outputs [remove_from_collection $connected_outputs [get_attribute $cell_output full_name]]
        } 
    } 
    query_objects $connected_outputs
    foreach_in_collection connected_output $connected_outputs {
        puts "Connected output: [get_attribute $connected_output full_name]"
        set cell_startpoint [filter_collection [get_pins $connected_output] "name==Y or name==COUT or name==SUM"]
        set cell_startpoint_N [filter_collection [get_pins $connected_output] "name==YN or name==COUTN or name==SUMN "]
        if {$cell_startpoint_N == "" } {
            set base_name [string map {P ""} [get_attribute $cell_startpoint full_name]]
            set cell_startpoint_N ${base_name}N
        } elseif {$cell_startpoint == "" } {
            set base_name [string map {N ""} [get_attribute $cell_startpoint_N full_name]]
            set cell_startpoint ${base_name}
        } else {
            puts "Warning: Both outputs of cell [get_attribute $cell name] are connected. Skipping"
            set skip_cell 1
        } 
        puts "Outputs: [get_attribute [get_pins $cell_startpoint] name], [get_attribute [get_pins $cell_startpoint_N] name ]"

    
        #Previously the curly bracket was here

         # set cell_startpoint [filter_collection [get_pins $cell_outputs] "name==Y or name==COUTP or name==SUMP"]
        # set cell_startpoint_N [filter_collection [get_pins $cell_outputs] "name==YN or name==COUTN or name==SUMN "]
        # if {$cell_startpoint_N == "" } {
        #     set cell_startpoint_N [get_attribute $cell_startpoint full_name]N
        # } 
        # puts "Outputs: [get_attribute [get_pins $cell_startpoint] name], [get_attribute [get_pins $cell_startpoint_N] name ]"

        set pin_connection [get_nets -of_objects $cell_startpoint]
        set pin_connection_N [get_nets -of_objects $cell_startpoint_N]

        #foreach_in_collection
        #If net is not connected at the current pin, check the other pin from diff. pair
        if {$pin_connection != "" } {
            if { $pin_connection_N != "" } {
                puts "Warning: Cell [get_attribute $cell name] has its output already connected. Fixing"
                #set skip_cell 1
                ##CHANGE THIS SECTION. DO NOT SKIP
                #Check if net has N in its name
                set already_connected 1
                if { [string first N [get_attribute [get_nets $pin_connection] name]] == -1 } {
                    set startpoint $cell_startpoint
                    set polarity P
                    set new_startpoint $cell_startpoint_N 
                    set new_polarity N
                } else {
                    set startpoint $cell_startpoint_N
                    set polarity N
                    set new_startpoint $cell_startpoint
                    set new_polarity P
                }

            } else {
                set startpoint $cell_startpoint
                set polarity P
                set new_startpoint $cell_startpoint_N 
                set new_polarity N
            }

        } elseif { $pin_connection_N != "" } {
            if { $pin_connection != "" } {
                puts "Cell [get_attribute $cell name] has its output already connected. Skipping"
                set skip_cell 1
            } else {
                set startpoint $cell_startpoint_N
                set polarity N
                set new_startpoint $cell_startpoint
                set new_polarity P
            }

        } else {
            error "Cell [get_attribute $cell name] startpoints (outputs) not connected!"
            set skip_cell 1
        }


        set current_net [get_nets -of_objects $startpoint]
        set current_net_pins [get_pins -of_objects $current_net]
        set inverted_net [get_nets -of_objects $new_startpoint]
        #No, thats not how the endpoints works.It gets CURRENT ones.
        #set inverted_net_pins [get_pins -of_objects $inverted_net]  
        #You have to get new pins based on the current pins and process them

        if { $skip_cell == 1} {
            #This doesn't work!!!
            continue 
        } 

        if { $already_connected == 1 } {
            puts "Already connected"
            puts "Startpoint: [get_attribute $startpoint full_name]"
            puts "New startpoint: [get_attribute $new_startpoint full_name]"
            set new_net_name [get_attribute $inverted_net name]
            #set new_endpoints [filter_collection [get_pins $inverted_net] direction!=out]
            puts "New endpoints: [get_pins $new_endpoints]"
        } else {
            set new_net_name [get_attribute $current_net name]_N
            create_net $new_net_name
            puts "Connecting net [get_attribute $new_net_name name] to pin [get_attribute $new_startpoint full_name]"
            connect_net [get_net $new_net_name] [get_pin $new_startpoint]

        }


        #Change current net name
        #$ ### DOESN WORK
        #set_attribute $current_net name [get_attribute $current_net name]_P


        #Connect new net to a new startpoint


        set endpoints [filter_collection $current_net_pins direction!=out]
        if {$endpoints == ""} {
            puts "Warning: No endpoints found for the net [get_attribute $current_net name]"
        } 

        foreach_in_collection endpoint $endpoints {

            #1. Find the N in endpoint - if not, it's P (if there is an explicit P, it would be much easier...)
            #2. The new_endpoint is current endpoint with N added(P) or removed(N)
            if { [string first N [get_attribute $endpoint name ]] == -1 } {
                #No N in name - currently processed endpoint is P, new is N. Add N
                set new_endpoint [get_attribute $endpoint full_name]N  

            } else {
                #N in name - currently processed endpoint is N, new is P. Remove N
                set new_endpoint [string map {N ""} [get_attribute $endpoint full_name]]
            } 
            puts "Connecting net [get_attribute $new_net_name name] to pin [get_attribute $new_endpoint full_name]"
            connect_net [get_net $new_net_name] [get_pin $new_endpoint]
        } 
    } 
} 

## Iterate through ports

set submodule_ports [filter_collection [get_ports ] "name!= VDD and name!= VSS and name != module_clk_i and name != e_i"]

set submodule_inputs [filter_collection $submodule_ports "port_direction==in"]
set standalone_submodule 1

foreach_in_collection port $submodule_inputs {
    puts "Processing port [get_attribute [get_port $port] name]"
    set port_name [get_attribute $port name]
    #set port_direction [get_attribute $port_name port_direction]
    set port_direction [get_attribute [get_port $port] port_direction]
    #create_port -direction $port_direction $submodule/${port_name}P
    #create_port -direction $port_direction $submodule/${port_name}N

    
    set port_net [get_nets -of_objects [get_pins -of_objects [get_ports $port]]]

    set port_endpoints [filter_collection [get_pins -of_objects [get_nets -of_objects [get_ports $port]]] "direction==in"]
    #Set an inverted endpoint
    set new_endpoints ""
    set new_endpoints [remove_from_collection $new_endpoints $new_endpoints]
    foreach_in_collection endpoint $port_endpoints {
        set endpoint_name [get_attribute $endpoint full_name]
        if { [string first N $endpoint_name] == -1 } {

            #set new_endpoint_name [string map {[ "" ] ""} $endpoint_name]
            #set new_endpoint ${new_endpoint_name}N
            set new_endpoint ${endpoint_name}N

        } else {
            #here.
            set new_endpoint [string map {N ""} $endpoint_name]
        } 
        puts "New endpoint: $new_endpoint"
        append_to_collection new_endpoints [get_pins $new_endpoint]
        #connect_pin -from $new_endpoint -to $endpoint -port_name $submodule/${port_name}_P
    }
    query_objects $new_endpoints
    #set new_port_endpoint 

    #Startpoint - get the startpoint from outside of current submodule 
    set port_nets [get_nets -of_objects [get_pins -of_objects [get_ports $port]]] 
    if {$standalone_submodule == 0} {
        set port_startpoints [filter_collection [get_pins -of_objects [get_net $port_net]] "direction==out"]

    } else {
        set port_startpoints [filter_collection [get_ports -of_objects [get_net $port_net]] "direction==in"]

    }

    set new_startpoints ""
    set new_startpoints [remove_from_collection $new_startpoints $new_startpoints]
    foreach_in_collection startpoint $port_startpoints {
        set startpoint_name [get_attribute $startpoint full_name]
        if { [string first N $startpoint_name] == -1 } {
            set new_startpoint_name [string map {[ "" ] ""} $startpoint_name]
            set new_startpoint ${new_startpoint_name}N
            #set new_startpoint ${startpoint_name}N
            ####################
            #Also here 
            
        } else {
            set new_startpoint [string map {N ""} $startpoint_name]
        } 
        puts "New startpoint: $new_startpoint"
        if {$standalone_submodule == 0} {
            append_to_collection new_startpoints [get_pins $new_startpoint]
        } else {
            append_to_collection new_startpoints [get_ports $new_startpoint]
        }
        #connect_pin -from $new_endpoint -to $endpoint -port_name $submodule/${port_name}_P
    }
    query_objects $new_startpoints

    #connect_pin -from $new_startpoints -to $new_endpoints -port_name $submodule/${port_name}N
    create_net [get_attribute $new_startpoint "name"]
    set new_net [get_net $new_startpoint]
    connect_net $new_net $new_startpoint
    connect_net $new_net $new_endpoints
    ## NOW FOR THE P
    #Disconnect the original net
    #foreach_in_collection net $port_nets {
    #    disconnect_net $net $port_name
    #}
    #connect_pin -from $port_startpoints -to $port_endpoints -port_name $submodule/${port_name}P
    #Remove the original port
    #remove_port $port
}


set submodule_outputs [filter_collection $submodule_ports "port_direction==out"]


foreach_in_collection port $submodule_outputs {
    puts "Processing port [get_attribute [get_port $port] name]"
    set port_name [get_attribute [get_port $port] name]
    set port_direction [get_attribute [get_port $port] port_direction]
    #create_port -direction $port_direction $submodule/${port_name}P
    #create_port -direction $port_direction $submodule/${port_name}N

    
    set port_net [get_nets -of_objects [get_pins -of_objects [get_ports $port]]]

    set port_endpoints [filter_collection [get_pins -of_objects [get_nets -of_objects [get_ports $port]]] "direction==out"]

    #Set an inverted endpoint
    set new_endpoints ""
    set new_endpoints [remove_from_collection $new_endpoints $new_endpoints]
    foreach_in_collection endpoint $port_endpoints {
        set endpoint_name [get_attribute $endpoint full_name]
        if { [string first N $endpoint_name] == -1 } {
            #set new_endpoint_name [string map {[ "" ] ""} $endpoint_name]
            #set new_endpoint ${new_endpoint_name}N
            set new_endpoint ${endpoint_name}N
            ## Here...
        } else {
            set new_endpoint [string map {N ""} $endpoint_name]
        } 
        puts "New endpoint: $new_endpoint"
        append_to_collection new_endpoints [get_pins $new_endpoint]
        
        #connect_pin -from $new_endpoint -to $endpoint -port_name $submodule/${port_name}_P
    }
    query_objects $new_endpoints
    #set new_port_endpoint 

    #Startpoint - get the startpoint from outside of current submodule 
    set port_nets [get_nets -of_objects [get_pins -of_objects [get_ports $port]]] 
    #set port_startpoints [filter_collection [get_pins -of_objects [get_net $port_net]] "direction==in"]
    set port_startpoints [get_ports $port] 
    set new_startpoints ""
    set new_startpoints [remove_from_collection $new_startpoints $new_startpoints]
    foreach_in_collection startpoint $port_startpoints {
        set startpoint_name [get_attribute $startpoint full_name]
        if { [string first N $startpoint_name] == -1 } {
            set new_startpoint_name [string map {[ "" ] ""} $startpoint_name]
            set new_startpoint ${new_startpoint_name}N
            #set new_startpoint ${startpoint_name}N
            #And here
        } else {
            set new_startpoint [string map {N ""} $startpoint_name]
        } 
        puts "New startpoint: $new_startpoint"
        append_to_collection new_startpoints [get_ports $new_startpoint]
        #connect_pin -from $new_endpoint -to $endpoint -port_name $submodule/${port_name}_P
    
    }
    query_objects $new_startpoints

    connect_pin -from $new_endpoints -to $new_startpoints 
    #create_net [get_attribute $new_startpoint "name"]
    #set new_net [get_net $new_startpoint]
    #connect_net $new_net $new_startpoint
    #connect_net $new_net $new_endpoints

    ## NOW FOR THE P
    #Disconnect the original net
    #foreach_in_collection net $port_nets {
    #    disconnect_net $net $port_name
    #}
    #connect_pin -from $port_startpoints -to $port_endpoints -port_name $submodule/${port_name}P
    #Remove the original port
    #remove_port $port
}

set standalone_submodule 0


if {$top_module == "LOGIC_DATA_WIDTH32"} {
    set j 0
    set out_pins [filter_collection [get_pins -of_objects I_SEL/genblk1_*__MUX] "name==YN"]
    set module_out_ports [filter_collection [get_ports] "name=~result_o[*]N"]
    foreach_in_collection port $module_out_ports {
        set target_port result_o[${j}]N
        set target_pin I_SEL/genblk1_${j}__MUX/YN
        set port_thru I_SEL/data_o[${j}]N
        set j [expr {$j + 1}]
        puts "Connecting pin $target_pin to port $target_port"
        connect_pin -from $target_pin -to $port_thru
    }
}

###### Check for unconnected pins ######
set floating_pins 0
set unconnected ""
foreach_in_collection check_cell $cells {
    set inst_pins [filter_collection [get_pins -of_objects $check_cell] "name!= VDD and name!= VSS"]
    foreach_in_collection pin $inst_pins {
        if {[get_attribute $pin net] == ""} {
            puts "Warning: pin [get_attribute $pin name] of cell [get_attribute $check_cell name] has no net connection"
            puts "[get_attribute $pin full_name]"
            incr floating_pins
            #append_to_collection $unconnected [get_attribute $pin full_name]
        }
    }
    
}

###### Check for shorted pins ######
set shorted_pins 0
foreach_in_collection check_cell_short $cells {
    #puts "Checking cell [get_attribute $check_cell_short name]"
    set inst_pins [filter_collection [get_pins -of_objects $check_cell_short] "name!= VDD and name!= VSS"]
    foreach_in_collection pin $inst_pins {
        set remaining_pins [filter_collection $inst_pins "name!=[get_attribute $pin name]"]
        set checked_net [get_nets -of_objects $pin]
        foreach_in_collection checked_pin $remaining_pins {
            set net1 [get_attribute [get_nets -of_objects $checked_pin] name]
            set net2 [get_attribute [get_net $checked_net] name]
            if { [string compare $net1 $net2] == 0 } {
                set shorted_pin $checked_pin
                puts "Warning: pin [get_attribute $pin name] of cell [get_attribute $check_cell_short name] is shorted with pin [get_attribute $shorted_pin name] of the same cell."
                incr shorted_pins
            }
        }
    }
}

set port_connected_nets 0
set port_connected_out_pins 0
set port_connected_in_pins 0

set ports [filter_collection [get_ports] "name!= VDD and name!= VSS"]
foreach_in_collection port $ports {
    puts "Processing port [get_attribute $port full_name]"
    #Check if net is connected to a port. Ignore (or connect to a converter later) if yes.
    set port_connected_nets [expr {$port_connected_nets + [sizeof_collection [get_nets -of_objects $port]]}]
    set port_connected_in_pins [expr {$port_connected_in_pins + [sizeof_collection [filter_collection [get_pins -of_objects [get_nets -of_objects $port]] "direction==in"]]}]
    set port_connected_out_pins [ expr {$port_connected_out_pins + [sizeof_collection [filter_collection [get_pins -of_objects [get_nets -of_objects $port]] "direction==out"]]}]
}


###### Check for pin cell consistency for endpoints ######


puts "Number of unconnected cell pins: $floating_pins" 
puts "Number of port connected nets: $port_connected_nets"
puts "Number of port connected input pins: $port_connected_in_pins"
puts "Number of port connected output pins: $port_connected_out_pins"
puts "Number of port shorted pins: $shorted_pins"

#write -format verilog -output ./output/${top_module}_diff.v
write -format verilog -hierarchy -output ./output/${top_module}_hier_diff.v
#write -format verilog -pg -output ./output/${top_module}_diff_pg.v

#ungroup -all
#write -format verilog -output ./output/${top_module}_flat_diff.v
#exit