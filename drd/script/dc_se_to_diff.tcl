###########################################
# Title:  dc_se_to_diff.tcl
# Author: Michal Gorywoda
# Date:   07.03.2024
###########################################


#set top_module ALU
set netlist_file "./diffcell_input/${top_module}.v"

read_verilog -netlist $netlist_file

current_design $top_module



current_design $top_module
set standalone_submodule 0

## Create SE2DIFF converter cells on inputs
##Get ports of the top module ONLY
#Ignore ports of other modules
set ports [filter_collection [get_ports [all_inputs]] "name!= VDD and name!= VSS and name!= clk_i"]
set master SE2DIFF
set num_pins [get_attribute -q $master number_of_pins]
set iso_master [get_attribute $master name]
#The get_lib_pins doesn't work here. Change to just get_pins and extract name. 
#set iso_out_pin [get_attribute [filter_collection [get_lib_pins -of_objects $master] "direction==out and name==Y"] name]
#set iso_in_pin [get_attribute [filter_collection [get_lib_pins -of_objects $master] "direction==in and name!=CLK"] name]
set iso_out_pin "Y"
set iso_in_pin "A"


foreach_in_collection port $ports {
    puts "Processing port [get_attribute [get_port $port] name]"
    set skip_cell 0
    set net_connection [get_pins -of_objects [get_nets -of_objects [get_port $port]]]
    if {$net_connection == "" } {
        set skip_cell 1
    }
    if {$skip_cell == 1} {
        continue
    }
    set net_to_isolate [get_nets -of_objects $port]
    foreach_in_collection net $net_to_isolate {
        set net_name [get_attribute $net name]
        set iso_inst [regsub {(.*)\[([\d]+)\]$} [get_attribute $net name] {\1_\2}]_conv
        set iso_net [regsub {(.*)(\[[\d]+\])?$} [get_attribute $net name] {\1_d\2}]
        #Instantiate converter cell
        create_cell $iso_inst $master
        set_size_only [get_cell $iso_inst] true
        create_net $iso_net

        #Create connections to converter
        set connections [remove_from_collection [all_connected $net] $port]
        disconnect_net $net $connections
        set direction [get_attribute -q $port port_direction]
        if { $direction == "out" } {
            connect_net $net $iso_inst/$iso_out_pin
            connect_net $iso_net $iso_inst/$iso_in_pin
        } else {
            connect_net $net $iso_inst/$iso_in_pin
            connect_net $iso_net $iso_inst/$iso_out_pin
        }
            connect_net $iso_net $connections
            set_dont_touch [get_net $net] true
        
    }
}


## Create DIFF2SE converter cells on outputs
set ports [filter_collection [get_ports [all_outputs]] "name!= VDD and name!= VSS"]
set master DIFF2SE
set num_pins [get_attribute -q $master number_of_pins]
set iso_master [get_attribute $master name]
#The get_lib_pins doesn't work here. Change to just get_pins and extract name. 
#set iso_out_pin [get_attribute [filter_collection [get_lib_pins -of_objects $master] "direction==out and name==Y"] name]
#set iso_in_pin [get_attribute [filter_collection [get_lib_pins -of_objects $master] "direction==in and name!=CLK"] name]
set iso_out_pin "Y"
set iso_in_pin "A"
#AN output pin will be connected by the next part of the script 

foreach_in_collection port $ports {
    puts "Processing port [get_attribute [get_port $port] name]"
    set skip_cell 0
    set net_connection [get_pins -of_objects [get_nets -of_objects [get_port $port]]]
    if {$net_connection == "" } {
        set skip_cell 1
    }
    if {$skip_cell == 1} {
        continue
    }
    set net_to_isolate [get_nets -of_objects $port]
    foreach_in_collection net $net_to_isolate {
        set net_name [get_attribute $net name]
        set iso_inst [regsub {(.*)\[([\d]+)\]$} [get_attribute $net name] {\1_\2}]_conv
        set iso_net [regsub {(.*)(\[[\d]+\])?$} [get_attribute $net name] {\1_d\2}]
        #Instantiate converter cell
        create_cell $iso_inst $master
        set_size_only [get_cell $iso_inst] true
        create_net $iso_net

        #Create connections to converter
        set connections [remove_from_collection [all_connected $net] $port]
        disconnect_net $net $connections
        set direction [get_attribute -q $port port_direction]
        if { $direction == "out" } {
            connect_net $net $iso_inst/$iso_out_pin
            connect_net $iso_net $iso_inst/$iso_in_pin
        } else {
            connect_net $net $iso_inst/$iso_in_pin
            connect_net $iso_net $iso_inst/$iso_out_pin
        }
            connect_net $iso_net $connections
            set_dont_touch [get_net $net] true
        
    }
}

#Set clock gates to ignore when creating differential connections
set global_clock_gate_cells [filter_collection [get_cells] "ref_name==CKLNQD_TALL_WEA or ref_name==CKLNQD_TALL_STR"]

## Connect clock

create_port -direction in CLK
create_net CLK
connect_net CLK CLK
create_clock CLK -period 10.0
set all_clk_pins [filter_collection [get_pins -of_objects [get_cells *]] "name==CLK"]
    
set clock_connections 0
#disconnect_net $all_clk_pins
connect_net CLK $all_clk_pins


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

set input_converter_n 0
set output_converter_n 0

set in_cells [filter_collection [get_cells] "ref_name==SE2DIFF"]
foreach_in_collection cell $in_cells {
    set input_converter_n [expr {$input_converter_n + 1}]
}

set out_cells [filter_collection [get_cells] "ref_name==DIFF2SE"]
foreach_in_collection cell $out_cells {
    set output_converter_n [expr {$output_converter_n + 1}]
}

puts "Number of input converter cells: $input_converter_n"
puts "Number of output converter cells: $output_converter_n"



#write -format verilog -output ./output/${top_module}_diff.v
write -format verilog -hierarchy -output ./output/${top_module}_hier_diff.v
#write -format verilog -pg -output ./output/${top_module}_diff_pg.v

#ungroup -all
#write -format verilog -output ./output/${top_module}_flat_diff.v
#exit