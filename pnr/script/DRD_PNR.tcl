###########################################
# Title:  DRD_PNR.tcl
# Author: Michal Gorywoda
###########################################

###### Source setup files, load design ######

set WRITE_GDS_LAYER_MAP_FILE "/home/hotwater/Voltage_Stacking/PipelinedCore/Design/SIGNOFF/LIBERATE/run_char/pnr_test/inputs/gdsout_6X1Z.map"
set OUTPUTS_DIR ../outputs
set LIB_NAME DRD_240902
set BUFFER_LIB BUFF_DRD_240911
set LIBS_NAMES $LIB_NAME $BUFFER_LIB
set LIB_DIR "/home/hotwater/Voltage_Stacking/PipelinedCore/Design/SIGNOFF/LIBERATE/run_char/pnr_test/icc2/$LIB_NAME.ndm"
set BUFF_LIB_DIR "/home/hotwater/Voltage_Stacking/PipelinedCore/Design/SIGNOFF/LIBERATE/run_char/pnr_test/icc2/$BUFFER_LIB.ndm"


open_lib $LIB_DIR
open_lib $BUFF_LIB_DIR 
create_lib -technology "/home/hotwater/Voltage_Stacking/PipelinedCore/Design/SIGNOFF/LIBERATE/run_char/pnr_test/inputs/tsmcn65_9lmT2.tf" -ref_libs [get_libs *] LANE_DRD
derive_design_level_via_regions

set ROUTING_LAYER_DIRECTION_OFFSET_LIST "{M1 vertical} {M2 horizontal} {M3 vertical} {M4 horizontal} {M5 vertical} {M6 horizontal} {M7 vertical} {M8 horizontal} {M9 vertical} {AP horizontal}"
set MIN_ROUTING_LAYER		"M3"	;# Min routing layer name; normally should be specified; otherwise tool can use all metal layers
set MAX_ROUTING_LAYER		"M7"	;# Max routing layer name; normally should be specified; otherwise tool can use all metal layers
set DESIGN_STYLE		"flat"
set VERILOG_NETLIST [list   "/home/hotwater/Voltage_Stacking/PipelinedCore/Design/SIGNOFF/LIBERATE/run_char/pnr_test/inputs/SYMM_AO8_BLOCK.v" \
                            "/home/hotwater/Voltage_Stacking/PipelinedCore/Design/SIGNOFF/LIBERATE/run_char/pnr_test/inputs/LANE_DRD_V2.v"
                    ]
#read_verilog_outline -library LANE_DRD "/home/hotwater/Voltage_Stacking/PipelinedCore/Design/SIGNOFF/LIBERATE/run_char/pnr_test/inputs/ALU_BARE_v3.v"
#read_verilog_outline -library LANE_DRD "/home/hotwater/Voltage_Stacking/PipelinedCore/Design/SIGNOFF/LIBERATE/run_char/pnr_test/inputs/SHIFTER.v"
read_verilog_outline -library LANE_DRD $VERILOG_NETLIST
link_block


#set_working_design_stack DUPASABL:ALU.outline
set_working_design_stack LANE_DRD:lane.outline
expand_outline
set top_module lane

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

set BUFF_CELL "*/BUFFD1 */INVD1"
set_lib_cell_purpose -include all [get_lib_cells $BUFF_CELL]

### Placement
#initialize_floorplan -side_length {300 300} -core_offset {10} -site_def CoreSite -use_site_row
initialize_floorplan -core_utilization 0.7 -side_ratio {1.0 0.7}  -core_offset {5} -site_def CoreSite -use_site_row

place_pins -self

### Create bounds
set TOP_LOGIC [get_cells -physical_context valu/ALU_I/LOGIC*]
set TOP_LOGIC [remove_from_collection $TOP_LOGIC [get_cells -physical_context valu/ALU_I/LOGIC/OR*]]
set TOP_LOGIC [remove_from_collection $TOP_LOGIC [get_cells -physical_context valu/ALU_I/LOGIC/XOR*]]
set TOP_LOGIC [remove_from_collection $TOP_LOGIC [get_cells -physical_context valu/ALU_I/LOGIC/AD*]]
create_bound -name "MUL_BOUND" -type hard -boundary {{120 140} {373 262}} [get_cells valu/ALU_I/I_MUL/* -physical_context ] 
create_bound -name "COM_BOUND" -type hard -boundary {{35 160} {95 245}} [get_cells valu/ALU_I/COM/* -physical_context ] 
create_bound -name "ADDSUB_BOUND" -type hard -boundary {{100 180} {150 262}} [get_cells valu/ALU_I/ADDSUB/* -physical_context ] 
create_bound -name "AD_BOUND" -type hard -boundary {{70 155} {115 180}} [get_cells valu/ALU_I/LOGIC/AD* -physical_context ]
create_bound -name "OR_BOUND" -type hard -boundary {{70 180} {115 205}} [get_cells valu/ALU_I/LOGIC/OR* -physical_context ]
create_bound -name "LOGIC_BOUND" -type hard -boundary {{70 205} {115 230}} [get_cells $TOP_LOGIC -physical_context ]
create_bound -name "XOR_BOUND" -type hard -boundary {{70 230} {115 262}} [get_cells valu/ALU_I/LOGIC/XOR* -physical_context ]
create_bound -name "SHIFTER_BOUND" -type hard -boundary {{5 165} {70 262}} [get_cells valu/ALU_I/SHIFTER/* -physical_context ]
 
set MUL_BBOX        [get_attribute [get_bounds MUL_BOUND] "bbox"]
set COM_BBOX        [get_attribute [get_bounds COM_BOUND] "bbox"]
set ADDSUB_BBOX     [get_attribute [get_bounds ADDSUB_BOUND] "bbox"]
set LOGIC_BBOX      [get_attribute [get_bounds LOGIC_BOUND] "bbox"]
set AD_BBOX         [get_attribute [get_bounds AD_BOUND] "bbox"]
set OR_BBOX         [get_attribute [get_bounds OR_BOUND] "bbox"]
set XOR_BBOX        [get_attribute [get_bounds XOR_BOUND] "bbox"]
set SHIFTER_BBOX    [get_attribute [get_bounds SHIFTER_BOUND] "bbox"]


create_clock -name clk_i -period 5 [get_nets clk_i]

create_clock -name clk_ad -period 5 [get_nets valu/ALU_I/LOGIC/clk_ad]
create_clock -name clk_gated -period 5 [get_nets valu/ALU_I/LOGIC/clk_gated]
create_clock -name clk_or -period 5 [get_nets valu/ALU_I/LOGIC/clk_or]
create_clock -name clk_xor -period 5 [get_nets valu/ALU_I/LOGIC/clk_xor]


### Create placement
#Set the placement spacing label for cells with non-rectangular NWELL
set WEIRD_NWELL_CELLS "$LIB_NAME/INVD1_DIFF $LIB_NAME/SE2DIFF $LIB_NAME/DIFF2SE $LIB_NAME/BUFFD1 $LIB_NAME/BUFFD2 $LIB_NAME/BUFFD4
                        $LIB_NAME/BUFFD6 $LIB_NAME/BUFFD8 $LIB_NAME/BUFFD12 $LIB_NAME/CKAN2D2 $LIB_NAME/CKAN2D8 $LIB_NAME/CKBD4 $LIB_NAME/CKBD20
                        $LIB_NAME/TIEH $LIB_NAME/TIEL $BUFFER_LIB/CKBD0 $BUFFER_LIB/CKBD1 $BUFFER_LIB/CKBD2" 
set_placement_spacing_label -name NWELL -side both -lib_cells [get_lib_cells $WEIRD_NWELL_CELLS] 
set_placement_spacing_rule -labels {NWELL NWELL} -unit micron {0 0.13}
create_placement -effort high
refine_placement


### PG connection
connect_pg_net -automatic


create_pg_ring_pattern ring_pattern -horizontal_layer M8 -vertical_layer M9 \
                                    -horizontal_width {5} -vertical_width {5} \
                                    -track_alignment auto -horizontal_spacing {10} -vertical_spacing {10} \
                                    -via_rule {{intersection: adjacent }{via_master: default}} \
                                    -corner_bridge false

create_pg_mesh_pattern mesh_pattern -layers {{{vertical_layer : M9} {width : 3} {spacing : interleaving} {pitch : 40} {trim : true} {track_alignment : auto}} {{horizontal_layer : M8} {width : 1} {offset : 1.1} {spacing : interleaving} {pitch : 19.2} {trim : true} {track_alignment : auto}}} \
                                    -via_rule { {intersection: adjacent} {via_master : default} }
set_pg_strategy STRAT_RING -core -pattern {{name : ring_pattern}{nets : {VDD VSS}}{offset : {5 5}}}
set_pg_strategy STRAT_MESH -core -pattern {{name : mesh_pattern}{nets : {VDD VSS}}} -extension {{{stop : outermost_ring}}}

create_pg_std_cell_conn_pattern std_cell_pattern
set_pg_strategy STRAT_STD -core -pattern {{name : std_cell_pattern}{nets : {VDD VSS}}} -blockage {{placement_blockages : all}} -extension {{{stop : outermost_ring}}} \
                            
set_pg_strategy_via_rule STD_VIA_STRAT -via_rule {{intersection: adjacent}{via_master: default}}

compile_pg -strategies {STRAT_RING STRAT_MESH  STRAT_STD}
legalize_placement

### Clock mesh

set CTS_NDR_MIN_ROUTING_LAYER       M4
set CTS_NDR_MAX_ROUTING_LAYER       M6
set CTS_LEAF_NDR_MIN_ROUTING_LAYER  M2
set CTS_LEAF_NDR_MAX_ROUTING_LAYER  M6
set CTS_NDR_RULE_NAME               CLOCK_INPUT
set CTS_LEAF_NDR_RULE_NAME          cts_w1_s2

# Clock routing rule for Clock tree
if {$CTS_NDR_RULE_NAME != ""} {
    remove_routing_rules $CTS_NDR_RULE_NAME > /dev/null
    
    create_routing_rule $CTS_NDR_RULE_NAME \
        -default_reference_rule \
        -widths {M2 0.11 M3 0.11 M4 0.11 M5 0.11 M6 0.11 } \
        -spacings { M2 0.16 M3 0.45 M4 0.45 M5 0.45 M6 0.45 } 
    
    set_clock_routing_rules -rules $CTS_NDR_RULE_NAME \
    -min_routing_layer $CTS_NDR_MIN_ROUTING_LAYER \
    -max_routing_layer $CTS_NDR_MAX_ROUTING_LAYER

}

set CTS_LIB_CELLS "$BUFFER_LIB/CKBD0 $BUFFER_LIB/CKBD1 $BUFFER_LIB/CKBD2 $BUFFER_LIB/CKBD4 $BUFFER_LIB/CKBD20 $BUFFER_LIB/CKAN2D2 $BUFFER_LIB/CKAN2D8"
set_lib_cell_purpose -include all [get_lib_cells $CTS_LIB_CELLS]
set_clock_tree_reference_subset -clocks clk_i -lib_cells [get_lib_cells $CTS_LIB_CELLS]

set_app_option -name cts.multisource.cell_em_aware -value true

#set get_attribute [get_core_area] "bbox"
set MESH_OFFSET 5
set CURRENT_OFFSET 20
set MESH_SPACING 17

set MESH_ARRAY 3x3
set MESH_MAT {2 2}



#set CLOCKS [get_nets -of_objects [get_pins -of_objects [get_cells *GATE -physical_context ] -filter "name==Z"]]

#set BOUNDS [list  $AD_BBOX $LOGIC_BBOX $OR_BBOX $XOR_BBOX $MUL_BBOX $ADDSUB_BBOX $COM_BBOX $SHIFTER_BBOX]
#set CLOCKS [list valu/ALU_I/LOGIC/clk_ad valu/ALU_I/LOGIC/clk_gated valu/ALU_I/LOGIC/clk_or valu/ALU_I/LOGIC/clk_xor valu/ALU_I/I_MUL/n1 valu/ALU_I/ADDSUB/n3 valu/ALU_I/COM/n132 valu/ALU_I/SHIFTER/n407]

set BOUNDS [list  $AD_BBOX $LOGIC_BBOX $OR_BBOX $XOR_BBOX ]
set CLOCKS [list valu/ALU_I/LOGIC/clk_ad valu/ALU_I/LOGIC/clk_gated valu/ALU_I/LOGIC/clk_or valu/ALU_I/LOGIC/clk_xor]


set CLOCK_IDX 0
foreach CLOCK_NET $CLOCKS {
    set CLOCK_FULL [get_attribute $CLOCK_NET full_name]
    set CLOCK_BBOX [lindex $BOUNDS $CLOCK_IDX]
    set CLOCK_SHORT [get_attribute $CLOCK_NET name]
    create_clock -name [get_attribute $CLOCK_NET name] -period 5 [get_attribute $CLOCK_NET full_name]
    puts $CLOCK_FULL
    puts $CLOCK_BBOX
    puts $CLOCK_IDX
    #create_clock_drivers -loads [get_nets $CLOCK_FULL] -boxes $MESH_MAT -boundary $CLOCK_BBOX -template -short_outputs
    
    create_clock_drivers -loads [get_nets $CLOCK_FULL] -boxes $MESH_MAT -boundary $CLOCK_BBOX  -lib_cells [get_lib_cells $BUFFER_LIB/CKBD0] -short_outputs -prefix "MESH_$CLOCK_SHORT"
    legalize_placement
    set NEW_CLOCK_NET [get_nets */MESH_${CLOCK_SHORT}_* -physical_context]
    create_clock_straps -nets [get_net $NEW_CLOCK_NET] -layers {M5 M6} -widths {0.15 0.15} \
                    -types {stripe stripe} -grids {{0 370 10} {0 370 10}} -boundary $CLOCK_BBOX \
                    -margins {5 5}
    
    route_clock_straps -nets [get_nets $NEW_CLOCK_NET]
    set CLOCK_IDX [expr $CLOCK_IDX + 1]
}

set BOUNDS [list  $ADDSUB_BBOX $COM_BBOX $SHIFTER_BBOX]
set CLOCKS [list  valu/ALU_I/ADDSUB/n3 valu/ALU_I/COM/n132 valu/ALU_I/SHIFTER/n407]

set MESH_MAT {2 3}

set CLOCK_IDX 0
foreach CLOCK_NET $CLOCKS {
    set CLOCK_FULL [get_attribute $CLOCK_NET full_name]
    set CLOCK_BBOX [lindex $BOUNDS $CLOCK_IDX]
    set CLOCK_SHORT [get_attribute $CLOCK_NET name]
    create_clock -name [get_attribute $CLOCK_NET name] -period 5 [get_attribute $CLOCK_NET full_name]
    puts $CLOCK_FULL
    puts $CLOCK_BBOX
    puts $CLOCK_IDX
    create_clock_drivers -loads [get_nets $CLOCK_FULL] -boxes $MESH_MAT -boundary $CLOCK_BBOX  -lib_cells [get_lib_cells $BUFFER_LIB/CKBD1] -short_outputs -prefix "MESH_$CLOCK_SHORT"
    legalize_placement
    set NEW_CLOCK_NET [get_nets */MESH_${CLOCK_SHORT}_* -physical_context]
    
    #set CURRENT_OFFSET {expr $CURRENT_OFFSET + $MESH_OFFSET}
    #create_clock_straps -nets [get_nets $CLOCK_FULL] -layers {M5 M6} -widths {0.2 0.2} -types {stripe stripe} -grids {{0 370 8} {0 370 8}} -boundary $CLOCK_BBOX
    create_clock_straps -nets [get_net $NEW_CLOCK_NET] -layers {M5 M6} -widths {0.15 0.15} \
                    -types {stripe stripe}  -grids {{0 370 10} {0 370 10}} -boundary $CLOCK_BBOX \
                    -margins {5 5}
    route_clock_straps -nets [get_nets $NEW_CLOCK_NET]
    set CLOCK_IDX [expr $CLOCK_IDX + 1]
}

set BOUNDS [list   $MUL_BBOX]
set CLOCKS [list valu/ALU_I/I_MUL/n1]

set MESH_MAT {5 4}

set CLOCK_IDX 0
foreach CLOCK_NET $CLOCKS {
    set CLOCK_FULL [get_attribute $CLOCK_NET full_name]
    set CLOCK_BBOX [lindex $BOUNDS $CLOCK_IDX]
    set CLOCK_SHORT [get_attribute $CLOCK_NET name]
    create_clock -name [get_attribute $CLOCK_NET name] -period 5 [get_attribute $CLOCK_NET full_name]
    puts $CLOCK_FULL
    puts $CLOCK_BBOX
    puts $CLOCK_IDX
    create_clock_drivers -loads [get_nets $CLOCK_FULL] -boxes $MESH_MAT -boundary $CLOCK_BBOX  -lib_cells [get_lib_cells $BUFFER_LIB/CKBD2] -short_outputs -prefix "MESH_$CLOCK_SHORT"
    legalize_placement
    set NEW_CLOCK_NET [get_nets */MESH_${CLOCK_SHORT}_* -physical_context]
    #set CURRENT_OFFSET {expr $CURRENT_OFFSET + $MESH_OFFSET}
    #create_clock_straps -nets [get_nets $CLOCK_FULL] -layers {M5 M6} -widths {0.2 0.2} -types {stripe stripe} -grids {{0 370 8} {0 370 8}} -boundary $CLOCK_BBOX
    create_clock_straps -nets [get_net $NEW_CLOCK_NET] -layers {M5 M6} -widths {0.2 0.2} \
                    -types {stripe stripe}  -grids {{0 370 15} {0 370 15}} -boundary $CLOCK_BBOX \
                    -margins {10 10}
    
    route_clock_straps -nets [get_nets $NEW_CLOCK_NET]
    set CLOCK_IDX [expr $CLOCK_IDX + 1]
}



set SUBMODULE_CLOCKS [get_clocks]

#synthesize_multisource_global_clock_trees -nets [get_nets clk_i] -use_zroute_for_pin_connections \
    -lib_cells [get_lib_cells $CTS_LIB_CELLS] 
#synthesize_multisource_global_clock_trees -nets [get_nets *clk_or -physical_context ] \
    -use_zroute_for_pin_connections -lib_cells [get_lib_cells $CTS_LIB_CELLS]

set CLOCKS_TO_ROUTE [list *I_MUL/n1 *ADDSUB/n3 *COM/n132 *SHIFTER/n407]

foreach CLOCK_NET $CLOCKS_TO_ROUTE {
    synthesize_multisource_global_clock_trees -nets [get_nets $CLOCK_NET -physical_context ] \
    -use_zroute_for_pin_connections -lib_cells [get_lib_cells $CTS_LIB_CELLS]
    #puts [get_nets $CLOCK_NET -physical_context]
}

legalize_placement


create_clock -name main_clock -period 5 [get_nets clk_i]

clock_opt -from build_clock -to build_clock
clock_opt -from route_clock -to route_clock

synthesize_clock_trees -propagate_only
#clock_opt -from final_opto -to final_opto
clock_opt -from route_clock -to final_opto
report_utilization

connect_pg_net
#check_mv_design -all
#check_pg_drc 



#Route nets

route_auto
check_routes
route_detail -incremental true -initial_drc_from_input true


add_redundant_vias
check_lvs -max_error 2000


## ICV In-Design DRC
#save_block
set ICV_DRC_RULE_FILE /technology/TSMC_65nm_MS_RF_LP_1.2_2.5V_full/TECH_LIB/VERIFY_RULE_FILE/DRC/T-N65-CL-DR-001-C1/2_5A/CLN65S_9M_6X1Z1U.25a

#set ICV_DRC_RULE_FILE /technology/TSMC_65nm_MS_RF_LP_1.2_2.5V_full/TECH_LIB//PDK/iPDK/T-N65-CM-SP-007-W1/1_7C/Calibre/online/rcx_online/1p9m_6X1Z1U/calibre.rcx

# Save block before invoking ICV - ICV works on saved data
set_app_options -name signoff.check_drc.runset              -value $ICV_DRC_RULE_FILE
set_app_options -name signoff.check_drc.max_errors_per_rule -value 1000
set_app_options -name signoff.check_drc.run_dir             -value "${OUTPUTS_DIR}/ICV_DRC_run"

# Run DRC
# Check only metal layers
#signoff_check_drc -select_rules { "M1* M2*" "M3*" "M4*" "M5*" "M6*" "M7*" "M8*" "M9*" }

# Fix DRC Violations after Run DRC
#set_app_options -name signoff.fix_drc.init_drc_error_db -value "${OUTPUTS_DIR}/ICV_DRC_run"
#signoff_fix_drc -select_rules { "M1* M2*" "M3*" "M4*" "M5*" "M6*" "M7*" "M8*" "M9*" }

compute_clock_latency

check_pg_drc

check_pg_connectivity
check_routes

set DECAP_CELLS "$LIB_NAME/DCAP64_TALL $LIB_NAME/DCAP32_TALL $LIB_NAME/DCAP16_TALL $LIB_NAME/DCAP8_TALL $LIB_NAME/DCAP4_TALL $LIB_NAME/DCAP_TALL $LIB_NAME/DCAP3_TALL"
create_stdcell_filler -lib_cells $DECAP_CELLS
connect_pg_net
remove_stdcell_fillers_with_violation 
route_detail -incremental true -initial_drc_from_input true	


set FILLER_CELLS "$LIB_NAME/FILL64_TALL $LIB_NAME/FILL32_TALL $LIB_NAME/FILL16_TALL $LIB_NAME/FILL8_TALL $LIB_NAME/FILL4_TALL $LIB_NAME/FILL2_TALL $LIB_NAME/FILL1_TALL"
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
save_block
save_lib
#save_block
ungroup_cells -all
write_verilog -exclude {scalar_wire_declarations leaf_module_declarations pg_objects end_cap_cells well_tap_cells filler_cells  physical_only_cells cover_cells unconnected_ports} -hierarchy top ${OUTPUTS_DIR}/${top_module}_MESH.v
write_verilog -exclude {scalar_wire_declarations leaf_module_declarations pg_objects end_cap_cells well_tap_cells filler_cells pad_spacer_cells physical_only_cells cover_cells diode_cells unconnected_ports} -hierarchy top ${OUTPUTS_DIR}/${top_module}_MESH.dc.v
write_verilog -exclude {scalar_wire_declarations leaf_module_declarations end_cap_cells well_tap_cells filler_cells pad_spacer_cells empty_modules corner_cells unconnected_ports} -hierarchy top ${OUTPUTS_DIR}/${top_module}_MESH.lvs.v


write_def -version 5.8 ${OUTPUTS_DIR}/${top_module}_MESH.def

create_abstract -estimate_timing -timing_level compact -target_use implementation
create_frame -block_all true
#save_block
#save_lib

update_timing
write_parasitics -output ${OUTPUTS_DIR}/${top_module}_MESH


#write_gds -allow_design_mismatch -lib_cell_view design -hierarchy all -long_names ${OUTPUTS_DIR}/${WRITE_DATA_BLOCK_NAME}.gds -layer_map $WRITE_GDS_LAYER_MAP_FILE
write_gds -allow_design_mismatch -lib_cell_view frame -hierarchy all -long_names ${OUTPUTS_DIR}/${top_module}_MESH.gds -layer_map $WRITE_GDS_LAYER_MAP_FILE
