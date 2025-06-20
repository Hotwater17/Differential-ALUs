###########################################
# Title:  SE_to_DIFF.tcl
# Author: Michal Gorywoda
# Date:   28.06.2023
###########################################

###### Source setup files, load design ######
#Ah damn i need to make another .ndm lib for SABL
#open_lib /home/hotwater/Voltage_Stacking/PipelinedCore/Design/SIGNOFF/LIBERATE/run_char/pnr_test/icc2/NormalWorkspace2.ndm
set WRITE_GDS_LAYER_MAP_FILE "/home/hotwater/Voltage_Stacking/PipelinedCore/Design/SIGNOFF/LIBERATE/run_char/pnr_test/inputs/gdsout_6X1Z.map"
set OUTPUTS_DIR ../outputs
set LIB_NAME CMOS_240822
open_lib /home/hotwater/Voltage_Stacking/PipelinedCore/Design/SIGNOFF/LIBERATE/run_char/pnr_test/icc2/$LIB_NAME.ndm

create_lib -technology "/home/hotwater/Voltage_Stacking/PipelinedCore/Design/SIGNOFF/LIBERATE/run_char/pnr_test/inputs/tsmcn65_CMOS.tf" -ref_libs $LIB_NAME MUL_CMOS
derive_design_level_via_regions


set VERILOG_NETLIST [list   "/home/hotwater/Voltage_Stacking/PipelinedCore/Design/SIGNOFF/LIBERATE/run_char/pnr_test/inputs/MUL_CMOS.v"
                    ]
#read_verilog_outline -library MUL_CMOS "/home/hotwater/Voltage_Stacking/PipelinedCore/Design/SIGNOFF/LIBERATE/run_char/pnr_test/inputs/ALU_BARE_v3.v"
#read_verilog_outline -library MUL_CMOS "/home/hotwater/Voltage_Stacking/PipelinedCore/Design/SIGNOFF/LIBERATE/run_char/pnr_test/inputs/SHIFTER.v"
read_verilog_outline -library MUL_CMOS $VERILOG_NETLIST
link_block
#set_working_design_stack DUPASABL:ALU.outline
set_working_design_stack MUL_CMOS:SYN_MUL.outline
expand_outline
set top_module SYN_MUL


#set parasitic1 
set parasitic1_file "/technology/TSMC_65nm_MS_RF_LP_1.2_2.5V_full/STD/TSMCHOME/digital/Back_End/milkyway/tcbn65lp_200a/techfiles/tluplus/cln65lp_1p09m+alrdl_rcworst_top2.tluplus"
set parasitic1_map "/technology/TSMC_65nm_MS_RF_LP_1.2_2.5V_full/STD/TSMCHOME/digital/Back_End/milkyway/tcbn65lp_200a/techfiles/tluplus/star.map_9M"

#set parasitic2 
set parasitic2_file "/technology/TSMC_65nm_MS_RF_LP_1.2_2.5V_full/STD/TSMCHOME/digital/Back_End/milkyway/tcbn65lp_200a/techfiles/tluplus/cln65lp_1p09m+alrdl_rcbest_top2.tluplus"
set parasitic2_map "/technology/TSMC_65nm_MS_RF_LP_1.2_2.5V_full/STD/TSMCHOME/digital/Back_End/milkyway/tcbn65lp_200a/techfiles/tluplus/star.map_9M"
read_parasitic_tech -tlup $parasitic1_file -layermap $parasitic1_map -name worst
read_parasitic_tech -tlup $parasitic2_file -layermap $parasitic2_map -name best
set_parasitic_parameters -corners default -early_spec worst -late_spec best


###### Setup floorplan ######

#initialize_floorplan -side_length {150 150} -core_offset {10}

### Placement
#initialize_floorplan -side_length {300 300} -core_offset {10} -site_def CoreSite -use_site_row
initialize_floorplan -core_utilization 0.7 -side_ratio {1.0 0.7}  -core_offset {5} 

place_pins -self

create_placement -effort high



### PG connection
connect_pg_net -automatic

create_pg_ring_pattern ring_pattern -horizontal_layer M8 -vertical_layer M9 -horizontal_width {5} -vertical_width {5} -track_alignment auto -horizontal_spacing {10} -vertical_spacing {10}
create_pg_mesh_pattern mesh_pattern -layers {{{vertical_layer : M9} {width : 2} {spacing : interleaving} {pitch : 30} {trim : true} {track_alignment : auto}} {{horizontal_layer : M8} {width : 2} {spacing : interleaving} {pitch : 30} {trim : true} {track_alignment : auto}}}

set_pg_strategy STRAT_RING -core -pattern {{name : ring_pattern}{nets : {VDD VSS}}{offset : 5 5}}
set_pg_strategy STRAT_MESH -core -pattern {{name : mesh_pattern}{nets : {VDD VSS}}} -extension {{{stop : innermost_ring}}}

create_pg_std_cell_conn_pattern std_cell_pattern
set_pg_strategy STRAT_STD -core -pattern {{name : std_cell_pattern}{nets : {VDD VSS}}} -blockage {{placement_blockages : all}} -extension {{{stop : innermost_ring}}}

compile_pg -strategies {STRAT_STD STRAT_RING STRAT_MESH}
legalize_placement

set SUBMODULE_CLOCKS [get_clocks]
create_clock -name main_clock -period 5 [get_nets clk_i]


connect_pg_net
#check_mv_design -all
#check_pg_drc 

#Route nets

route_auto
check_routes
route_detail -incremental true -initial_drc_from_input true
add_redundant_vias
check_lvs -max_error 2000

compute_clock_latency

check_pg_drc

check_pg_connectivity
check_routes

set DECAP_CELLS "$LIB_NAME/DCAP64 $LIB_NAME/DCAP32 $LIB_NAME/DCAP16 $LIB_NAME/DCAP8 $LIB_NAME/DCAP4 $LIB_NAME/DCAP $LIB_NAME/DCAP"
create_stdcell_filler -lib_cells $DECAP_CELLS
connect_pg_net
remove_stdcell_fillers_with_violation 
route_detail -incremental true -initial_drc_from_input true	


set FILLER_CELLS "$LIB_NAME/FILL64 $LIB_NAME/FILL32 $LIB_NAME/FILL16 $LIB_NAME/FILL8 $LIB_NAME/FILL4 $LIB_NAME/FILL2 $LIB_NAME/FILL1"
create_stdcell_filler -lib_cells $FILLER_CELLS
connect_pg_net
remove_stdcell_fillers_with_violation
route_detail -incremental true -initial_drc_from_input true	

connect_pg_net -net VDD [get_pins */VDD]
connect_pg_net -net VSS [get_pins */VSS]

check_lvs -max_error 2000
check_pg_drc


create_abstract -read_only
change_names -rules verilog -hierarchy

#save_block
#ungroup -all
write_verilog -exclude {scalar_wire_declarations leaf_module_declarations pg_objects end_cap_cells well_tap_cells filler_cells  physical_only_cells cover_cells unconnected_ports} -hierarchy all ${OUTPUTS_DIR}/${top_module}_CMOS.v
write_verilog -exclude {scalar_wire_declarations leaf_module_declarations pg_objects end_cap_cells well_tap_cells filler_cells pad_spacer_cells physical_only_cells cover_cells diode_cells unconnected_ports} -hierarchy all ${OUTPUTS_DIR}/${top_module}_CMOS.dc.v
write_verilog -exclude {scalar_wire_declarations leaf_module_declarations end_cap_cells well_tap_cells filler_cells pad_spacer_cells empty_modules corner_cells unconnected_ports} -hierarchy all ${OUTPUTS_DIR}/${top_module}_CMOS.lvs.v


write_def -version 5.8 ${OUTPUTS_DIR}/${top_module}_CMOS.def

create_abstract -estimate_timing -timing_level compact -target_use implementation
create_frame -block_all true
#save_block
#save_lib

update_timing
write_parasitics -output ${OUTPUTS_DIR}_CMOS/${top_module}


#write_gds -allow_design_mismatch -lib_cell_view design -hierarchy all -long_names ${OUTPUTS_DIR}/${WRITE_DATA_BLOCK_NAME}.gds -layer_map $WRITE_GDS_LAYER_MAP_FILE
write_gds -allow_design_mismatch -lib_cell_view frame -hierarchy all -long_names ${OUTPUTS_DIR}/${top_module}_CMOS.gds -layer_map $WRITE_GDS_LAYER_MAP_FILE
