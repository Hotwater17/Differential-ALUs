reset_design



set_max_area 0 


create_clock -period 3 -name MAIN_CLOCK [get_ports clk_i];

set_clock_uncertainty -setup 0.2 [get_clocks MAIN_CLOCK]

set_clock_latency -source -max 0.2 [get_clocks MAIN_CLOCK]

set_clock_latency -max 0.2 [get_clocks MAIN_CLOCK]

set_clock_transition 0.5 [get_clocks MAIN_CLOCK]



set_input_delay -max 0.5 -clock MAIN_CLOCK [all_inputs]
//set_input_delay -min 2.0 -clock MAIN_CLOCK [all_inputs]
remove_input_delay [get_ports "clk_i VDD VSS"]
set_input_delay -max 0.5 -clock MAIN_CLOCK [get_ports resetn_i]
//set_input_delay -min 2.0 -clock MAIN_CLOCK [get_ports resetn_i]

set_output_delay -max 0.5 -clock MAIN_CLOCK [all_outputs]
//set_output_delay -min -2.0 -clock MAIN_CLOCK [all_outputs]
remove_output_delay [get_ports "VDD VSS"]


//set_isolate_ports [remove_from_collection [all_outputs] [get_ports MAIN_VDD MAIN_VSS]]

//set_load [expr 30.0/1000] [remove_from_collection [all_outputs] [get_ports MAIN_VDD MAIN_VSS]]

//set_input_transition 0.12 [remove_from_collection [all_inputs] [get_ports MAIN_VDD MAIN_VSS clk_i]]
set_input_transition 0.12 [remove_from_collection [all_inputs] [get_ports clk_i]]

set_operating_conditions -max "NCCOM"



set_ideal_network [get_ports "clk_i resetn_i"]

# group_path -name INPUTS -from [all_inputs]
# 
# group_path -name OUTPUTS -to [all_outputs]
# 
# group_path -name COMBO -from [all_inputs] -to [all_outputs]
# 
# group_path -name MAIN_CLOCK -weight 5 -critical 0.5
# 
# group_path -name INPUTS -weight 1 -critical 0.5
# 
# group_path -name OUTPUTS -weight 1 -critical 0.5
# 
# group_path -name COMBO -weight 5 -critical 1.0



set_fix_multiple_port_nets -all -buffer_constants; 

set verilogout_no_tri true

set hdlin_check_no_latch true

set_fix_hold [all_clocks]









