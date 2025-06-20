

define_design_lib work -path ./work
## Set this path to your synopsys installation
set SYNOPSYS /tools/Synopsys/syn/S-2021.06-SP3

source ./script/dc_setup.tcl


#Set the RTL (SystemVerilog) files
set rtl 	 [list	../rtl/${MODULE}.sv ]



#Set used gates
set dont_use_cell_collection [get_lib_cells tcbn65lptc/*]
set use_cell_collection {tcbn65lptc/AN2D0 \
                        tcbn65lptc/AN3D0 \
                        tcbn65lptc/AN4D0 \
                        tcbn65lptc/ND2D0 \
                        tcbn65lptc/ND3D0 \
                        tcbn65lptc/ND4D0 \
                        tcbn65lptc/INVD0 \
                        tcbn65lptc/INVD1 \
                        tcbn65lptc/OR2D0 \
                        tcbn65lptc/NR2D0 \
                        tcbn65lptc/FA1D0 \
                        tcbn65lptc/HA1D0 \
                        tcbn65lptc/AOI22D0 \
                        tcbn65lptc/AOI21D0 \
                        tcbn65lptc/AO22D0 \
                        tcbn65lptc/AO21D0 \
                        tcbn65lptc/OA22D0 \
                        tcbn65lptc/OAI22D0 \
                        tcbn65lptc/MUX2D0 \
                        tcbn65lptc/MUX2ND0 
                        }

set dont_use_cell_collection [remove_from_collection $dont_use_cell_collection [get_lib_cells $use_cell_collection]]
set_dont_use $dont_use_cell_collection

set mul_arch benc_radix4 
#set mul_arch benc_radix4_mux
#set mul_arch benc_radix8
#set mul_arch benc_radix8_mux
#set_implementation DW02_mult/$mul_arch U1
set_dp_smartgen_options -mult_arch $mul_arch -optimize_for area

#Set the top module name 
set top_design $MODULE

analyze -format sverilog $rtl 
elaborate -architecture verilog $top_design  

check_mv_design -verbose
current_design $top_design
redirect -tee -file rpt/$MODULE/0_link.rpt {link}
check_mv_design
redirect -tee -file rpt/$MODULE/1_check_design {check_design}

redirect -tee -file rpt/$MODULE/2_source.rpt {source -echo -verbose cons/cons.tcl}
redirect -tee -file rpt/$MODULE/3_check_timing.rpt {check_timing}
redirect -tee -file rpt/$MODULE/4_report.rpt {report_port -verbose}

redirect -tee -file rpt/$MODULE/5_compile.rpt {compile_ultra -no_autoungroup -no_boundary_optimization}
redirect -tee -file rpt/$MODULE/6_report_constraint.rpt {report_constraint -all_violators}
redirect -tee -file rpt/$MODULE/7_report_timing_setup.rpt {report_timing -max_path 50 -nworst 50 -delay_type max}
redirect -tee -file rpt/$MODULE/8_report_timing_hold.rpt {report_timing -max_path 50 -nworst 50 -delay_type min}
redirect -tee -file rpt/$MODULE/9_report_path_group.rpt {report_path_group}
redirect -tee -file rpt/$MODULE/10_report_area.rpt {report_area}
redirect -tee -file rpt/$MODULE/11_report_power.rpt {report_power -analysis_effort medium}
set verilogout_no_tri true
change_names -rules verilog -hierarchy



write -format verilog -hierarchy -output ./output/$MODULE/$top_design.v
write -format verilog -hierarchy -pg -output ./output/$MODULE/$top_design.pg.v
write -format ddc -hierarchy -output ./output/$MODULE/mapped.ddc


write_sdc ./output/$MODULE/$top_design.sdc
write_sdf ./output/$MODULE/$top_design.sdf

set_svf -off

#gui_start

exit