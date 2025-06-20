###########################################
# Title:  module_se_to_diff.tcl
# Author: Michal Gorywoda
# Date:   07.03.2024
###########################################



set submodule_ports [filter_collection [get_ports $submodule/*] "name!= VDD and name!= VSS and name != module_clk_i and name != e_i and name != resetn_i and name != clk_i"]

foreach_in_collection port $submodule_ports {
    puts "Processing port [get_attribute [get_port $port] name]"
    set port_name [get_attribute $port name]
    #set port_direction [get_attribute $port_name port_direction]
    set port_direction [get_attribute [get_port $port] port_direction]
    #set port_name [string map {[ "" ] ""} $port_name]
    create_port -direction $port_direction $submodule/${port_name}N
}

