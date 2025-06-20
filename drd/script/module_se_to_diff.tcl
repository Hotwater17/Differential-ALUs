###########################################
# Title:  module_se_to_diff.tcl
# Author: Michal Gorywoda
# Date:   07.03.2024
###########################################

#Get all submodule cells
set cells [get_cells $submodule/*]

# Connect clock in submodule
set module_clk_net [get_net -of_objects $submodule/module_clk_i]
#set module_clk_port [get_port $submodule/clk_i]
set clock_gate_cells [get_cells $submodule/*GATE*]
set clock_gate_clk_pin [get_pins -of_objects [get_cells $submodule/*GATE*] -filter "name==Q"]
set module_clk_pins [get_pins -of_objects $cells -filter "name==CLK"]
connect_pin -from $clock_gate_clk_pin -to $module_clk_pins
set gated_clock_net [get_nets -of_objects $clock_gate_clk_pin]
# Process submodule ports

# Convert submodule cell connections
set cells [remove_from_collection $cells $clock_gate_cells]
set connected_outputs ""
set new_endpoints ""

foreach_in_collection cell $cells {
    
    set inst_pin [get_pins -of_objects $cell]
    set skip_cell 0
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

        #If net is not connected at the current pin, check the other pin from diff. pair
        if {$pin_connection != "" } {
            if { $pin_connection_N != "" } {
                puts "Cell [get_attribute $cell name] has its output already connected. Skipping"
                set skip_cell 1
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


        if { $skip_cell == 1} {
            #This doesn't work!!!
            continue 
        } 

        #Create new net name
        ##?? Do I call it based on polarity since I convert it from SE? If yes, then the original net should be P, new N
        #set new_net_name [get_attribute $current_net name]_N
        #create_net $new_net_name


        #Change current net name
        #$ ### DOESN WORK
        #set_attribute $current_net name [get_attribute $current_net name]_P


        #Connect new net to a new startpoint
        #puts "Connecting net [get_attribute $new_net_name name] to pin [get_attribute $new_startpoint full_name]"
        #connect_net [get_net $new_net_name] [get_pin $new_startpoint]


        set endpoints [filter_collection $current_net_pins direction!=out]
        if {$endpoints == ""} {
            puts "Warning: No endpoints found for the net [get_attribute $current_net name]"
        } 
        #HERE IS THE ISSUE: it should be new endpoints.
        
        #set new_endpoints [remove_from_collection $new_endpoints $new_endpoints]

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
            puts "New endpoint: $new_endpoint"
            #puts "Connecting net [get_attribute $new_net_name name] to pin [get_attribute $new_endpoint full_name]"
            #connect_net [get_net $new_net_name] [get_pin $new_endpoint]
            #append_to_collection new_endpoints $new_endpoint
            connect_pin -from $new_startpoint -to $new_endpoint
        } 
        #query_objects $new_endpoints
        #connect_pin -from $new_startpoint -to $new_endpoints
    } 
} 




set submodule_ports [filter_collection [get_ports $submodule/*] "name!= VDD and name!= VSS and name != module_clk_i and name != e_i"]

set submodule_inputs [filter_collection $submodule_ports "port_direction==in"]


foreach_in_collection port $submodule_inputs {
    puts "Processing port [get_attribute [get_port $port] name]"
    set port_name [get_attribute $port name]
    #set port_direction [get_attribute $port_name port_direction]
    set port_direction [get_attribute [get_port $port] port_direction]
    #create_port -direction $port_direction $submodule/${port_name}P
    #create_port -direction $port_direction $submodule/${port_name}N

    
    set port_net [get_nets -of_objects [get_pins -of_objects [get_ports $port]]]

    set port_endpoints [filter_collection [get_pins -of_objects [get_nets -of_objects [get_ports $port]]] "direction==in"]
    set ignored_endpoint [filter_collection [get_pins -of_objects [get_nets -of_objects [get_pins $port]]] "direction==in"]
    set port_endpoints [remove_from_collection $port_endpoints [get_pins $ignored_endpoint]]

    #Set an inverted endpoint
    set new_endpoints ""
    set new_endpoints [remove_from_collection $new_endpoints $new_endpoints]
    foreach_in_collection endpoint $port_endpoints {
        set endpoint_name [get_attribute $endpoint full_name]
        if { [string first N $endpoint_name] == -1 } {
            if {$submodule == "READ"} {
                set new_endpoint N${endpoint_name}
            } else {
                set new_endpoint ${endpoint_name}N
            }
            #set new_endpoint ${endpoint_name}N
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
    if {$standalone_submodule == 0} {
        set port_startpoints [filter_collection [get_pins -of_objects [get_net $port_net]] "direction==out"]

    } else {
        set port_startpoints [filter_collection [get_pins -of_objects [get_net $port_net]] "direction==in"]
        set port_startpoints [get_ports [filter_collection $port_startpoints "full_name=~$submodule/*"]]

    }

    set new_startpoints ""
    set new_startpoints [remove_from_collection $new_startpoints $new_startpoints]
    foreach_in_collection startpoint $port_startpoints {
        set startpoint_name [get_attribute $startpoint full_name]
        if { [string first N $startpoint_name] == -1 } {
            set new_startpoint ${startpoint_name}N
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

    connect_pin -from $new_startpoints -to $new_endpoints -port_name $submodule/${port_name}N


    ## NOW FOR THE P
    #Disconnect the original net
    #foreach_in_collection net $port_nets {
    #    disconnect_net $net $port_name
    #}
    #connect_pin -from $port_startpoints -to $port_endpoints -port_name $submodule/${port_name}P
    #Remove the original port
    #remove_port $port
}


set submodule_ports [filter_collection [get_ports $submodule/*] "name!= VDD and name!= VSS and name != module_clk_i and name != e_i"]

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
            set new_endpoint ${endpoint_name}N
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
    #if {$submodule == "I_SEL"} {
    #    set port_startpoints [get_pins -of_objects [get_net $port_net]]
    #    set ignored_startpoint [get_ports [get_pins -of_objects [get_net $port_net]]]
    #    #set ignored_startpoint [filter_collection [get_pins -of_objects [get_nets -of_objects [get_pins $port]]] "direction==in"]
    #    set port_startpoints [remove_from_collection $port_endpoints [get_pins $ignored_startpoint]]
#
    #} else {
    #    set port_startpoints [filter_collection [get_pins -of_objects [get_net $port_net]] "direction==in"]
    #}
    if {$submodule == "SELECTOR_I"} {
        set port_startpoints [filter_collection [get_pins -of_objects [get_net $port_net] -leaf] "direction==out"]
    } else {
        set port_startpoints [filter_collection [get_pins -of_objects [get_net $port_net]] "direction==in"]
    }

    set new_startpoints ""
    set new_startpoints [remove_from_collection $new_startpoints $new_startpoints]
    foreach_in_collection startpoint $port_startpoints {
        set startpoint_name [get_attribute $startpoint full_name]
        if { [string first N $startpoint_name] == -1 } {
            set new_startpoint ${startpoint_name}N
        } else {
            set new_startpoint [string map {N ""} $startpoint_name]
        } 
        puts "New startpoint: $new_startpoint"
        append_to_collection new_startpoints [get_pins $new_startpoint]
        #connect_pin -from $new_endpoint -to $endpoint -port_name $submodule/${port_name}_P
    
    }

    query_objects $new_startpoints

    if {$submodule == "SELECTOR_I"} {
        set new_endpoints [remove_from_collection $new_endpoints $new_startpoints]
        query_objects $new_endpoints
        connect_pin -from $new_startpoints -to $new_endpoints

    } else {
        connect_pin -from $new_startpoints -to $new_endpoints -port_name $submodule/${port_name}N
    }
    
    

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