###########################################
# Title:  MUL_DRD_PNR.tcl
# Author: Michal Gorywoda
###########################################

###### Source setup files, load design ######
set WRITE_GDS_LAYER_MAP_FILE "/home/hotwater/Voltage_Stacking/PipelinedCore/Design/SIGNOFF/LIBERATE/run_char/pnr_test/inputs/gdsout_6X1Z.map"
#set WRITE_GDS_LAYER_MAP_FILE "/technology/TSMC_65nm_MS_RF_LP_1.2_2.5V_full/TECH_LIB/PDK/OA/T-N65-CM-SP-007-K3/1_7A/tsmcN65/tsmcN65.layermap"

set OUTPUTS_DIR ../output
set LIB_NAME DRD_240902
set BUFFER_LIB BUFF_DRD_240911
set LIBS_NAMES $LIB_NAME $BUFFER_LIB
#set LIBS_DIR [list "/home/hotwater/Voltage_Stacking/PipelinedCore/Design/SIGNOFF/LIBERATE/run_char/pnr_test/icc2/$LIB_NAME.ndm
#                /home/hotwater/Voltage_Stacking/PipelinedCore/Design/SIGNOFF/LIBERATE/run_char/pnr_test/icc2/$BUFFER_LIB.ndm"]
set LIB_DIR "/home/hotwater/Voltage_Stacking/PipelinedCore/Design/SIGNOFF/LIBERATE/run_char/pnr_test/icc2/$LIB_NAME.ndm"
set BUFF_LIB_DIR "/home/hotwater/Voltage_Stacking/PipelinedCore/Design/SIGNOFF/LIBERATE/run_char/pnr_test/icc2/$BUFFER_LIB.ndm"


open_lib $LIB_DIR
open_lib $BUFF_LIB_DIR 

create_lib -technology "/home/hotwater/Voltage_Stacking/PipelinedCore/Design/SIGNOFF/LIBERATE/run_char/pnr_test/inputs/tsmcn65_9lmT2.tf" -ref_libs [get_libs *] TEST_DRD
derive_design_level_via_regions

#set_app_options -name signoff.check_drc.runset -value /technology/TSMC_65nm_MS_RF_LP_1.2_2.5V_full/TECH_LIB/VERIFY_RULE_FILE/DRC/T-N65-CL-DR-001-C1/2_5A/CLN65S_9M_6X1Z1U.25a

set DESIGN mac_float32

set VERILOG_NETLIST [list   "/home/hotwater/Voltage_Stacking/PipelinedCore/Design/ALUs/drd/output/${DESIGN}_hier_diff.v"
                    ]
read_verilog_outline -library TEST_DRD $VERILOG_NETLIST
link_block
#set_working_design_stack DUPASABL:ALU.outline
set_working_design_stack TEST_DRD:${DESIGN}.outline
expand_outline
set top_module $DESIGN
report_references
set_app_option -name cts.multisource.cell_em_aware -value true

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
set_app_options -list {place.rules.min_vt_filler_size 3}


### Placement
#initialize_floorplan -side_length {300 300} -core_offset {10} -site_def CoreSite -use_site_row
initialize_floorplan -core_utilization 0.7 -side_ratio {1.0 0.7}  -core_offset {5} -site_def CoreSite -use_site_row

#set_individual_pin_constraints -ports CLK -location {100.0 72.5} -length 0.05 -width 0.05 -off_edge -allowed_layers [get_layers {M5 M6}]


place_pins -self


create_clock -name CLK -period 5 [get_nets CLK]
create_clock -name MUL_CLK -period 5 [get_nets n1]
### Create placement
#Set the placement spacing label for cells with non-rectangular NWELL
set WEIRD_NWELL_CELLS "$LIB_NAME/INVD1_DIFF $LIB_NAME/SE2DIFF $LIB_NAME/DIFF2SE $LIB_NAME/BUFFD1 $LIB_NAME/BUFFD2 $LIB_NAME/BUFFD4
                        $LIB_NAME/BUFFD6 $LIB_NAME/BUFFD8 $LIB_NAME/BUFFD12 $LIB_NAME/CKAN2D8 $LIB_NAME/CKBD4 $LIB_NAME/CKBD20
                        $LIB_NAME/TIEH $LIB_NAME/TIEL $BUFFER_LIB/CKBD0 $BUFFER_LIB/CKBD1 $BUFFER_LIB/CKBD2" 
set_placement_spacing_label -name NWELL -side both -lib_cells [get_lib_cells $WEIRD_NWELL_CELLS] 
set_placement_spacing_rule -labels {NWELL NWELL} -unit micron {0 0.13}
create_placement -effort high

refine_placement

### PG connection
connect_pg_net -automatic

create_pg_ring_pattern ring_pattern -horizontal_layer M8 -vertical_layer M9 -horizontal_width {5} -vertical_width {5} -track_alignment auto -horizontal_spacing {10} -vertical_spacing {10}
create_pg_mesh_pattern mesh_pattern -layers {{{vertical_layer : M9} {width : 2} {spacing : interleaving} {pitch : 40} {trim : true} {track_alignment : auto}} {{horizontal_layer : M8} {width : 2} {spacing : interleaving} {pitch : 40} {trim : true} {track_alignment : auto}}}

set_pg_strategy STRAT_RING -core -pattern {{name : ring_pattern}{nets : {VDD VSS}}{offset : 5 5}}
set_pg_strategy STRAT_MESH -core -pattern {{name : mesh_pattern}{nets : {VDD VSS}}} -extension {{{stop : innermost_ring}}}

create_pg_std_cell_conn_pattern std_cell_pattern
set_pg_strategy STRAT_STD -core -pattern {{name : std_cell_pattern}{nets : {VDD VSS}}} -blockage {{placement_blockages : all}} -extension {{{stop : innermost_ring}}}

compile_pg -strategies {STRAT_STD STRAT_RING STRAT_MESH}

### Clock mesh


set CTS_NDR_MIN_ROUTING_LAYER       M4
set CTS_NDR_MAX_ROUTING_LAYER       M6
set CTS_LEAF_NDR_MIN_ROUTING_LAYER  M1
set CTS_LEAF_NDR_MAX_ROUTING_LAYER  M6
set CTS_NDR_RULE_NAME               CLOCK_INPUT
set CTS_LEAF_NDR_RULE_NAME          cts_w1_s2

# Clock routing rule for Clock tree
if {$CTS_NDR_RULE_NAME != ""} {
    remove_routing_rules $CTS_NDR_RULE_NAME > /dev/null
    
    #create_routing_rule $CTS_NDR_RULE_NAME \
        -default_reference_rule \
        -widths { M1 0.1 M2 0.11 M3 0.11 M4 0.11 M5 0.11 M6 0.11 } \
        -spacings { M2 0.16 M3 0.45 M4 0.45 M5 1.1 M6 1.1 } 
    
    set_clock_routing_rules -rules $CTS_NDR_RULE_NAME \
    -min_routing_layer $CTS_NDR_MIN_ROUTING_LAYER \
    -max_routing_layer $CTS_NDR_MAX_ROUTING_LAYER

}

#If subtree tap is used, 1
#Else, if mesh direct connection, 0
#set MULTISOURCE_SUBTREE_CTS 1

set MESH_ARRAY 3x3
set MESH_MAT {5 4}


set CTS_LIB_CELLS "$BUFFER_LIB/CKBD0 $BUFFER_LIB/CKBD1 $BUFFER_LIB/CKBD2 $BUFFER_LIB/CKBD4 $BUFFER_LIB/CKBD20 $BUFFER_LIB/CKAN2D2 $BUFFER_LIB/CKAN2D8"
set_lib_cell_purpose -include all [get_lib_cells $CTS_LIB_CELLS]
set_clock_tree_reference_subset -clocks MUL_CLK -lib_cells [get_lib_cells $CTS_LIB_CELLS]

set_app_option -name cts.multisource.cell_em_aware -value true

#create_clock_drivers -loads [get_nets n1] -boxes $MESH_MAT -template -short_outputs


create_clock_drivers -loads [get_nets n1] -boxes $MESH_MAT -lib_cells [get_lib_cells $BUFFER_LIB/CKBD2] -short_outputs -prefix "MESH"
create_clock_straps -nets [get_net MESH_1] -layers {M5 M6} -widths {0.2 0.2} \
                    -types {stripe stripe} -grids {{5 200 15} {5 200 15}} \
                    -margins {10 10}

legalize_placement
synthesize_multisource_global_clock_trees -nets [get_nets n1] -use_zroute_for_pin_connections \
    -lib_cells [get_lib_cells $CTS_LIB_CELLS] 
#synthesize_multisource_global_clock_trees -roots [get_pins *GATE/Z] -leaves [get_pins *MESH*/I] -use_zroute_for_pin_connections

route_clock_straps -nets MESH_1




set_annotated_delay
set_annotated_transition


if {$MULTISOURCE_SUBTREE_CTS == 1} {
    set_multisource_clock_subtree_options 
    synthesize_multisource_clock_subtrees 
    clock_opt -from build_clock -to route_clock
}

append_to_collection DUPA123 [get_nets *cts*]
append_to_collection DUPA123 [get_nets n1]
append_to_collection DUPA123 [get_cells *GATE*]
append_to_collection DUPA123 [get_cells *MESH*]
append_to_collection DUPA123 [get_cells *msgts*]
change_selection $DUPA123

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
check_pg_connectivity


#signoff_check_drc

#Write_data

create_abstract -read_only
change_names -rules verilog -hierarchy

#save_block

write_verilog -exclude {scalar_wire_declarations leaf_module_declarations pg_objects end_cap_cells well_tap_cells filler_cells  physical_only_cells cover_cells unconnected_ports} -hierarchy all ${OUTPUTS_DIR}/${top_module}_${MESH_ARRAY}.v
write_verilog -exclude {scalar_wire_declarations leaf_module_declarations pg_objects end_cap_cells well_tap_cells filler_cells pad_spacer_cells physical_only_cells cover_cells diode_cells unconnected_ports} -hierarchy all ${OUTPUTS_DIR}/${top_module}_${MESH_ARRAY}.dc.v
write_verilog -exclude {scalar_wire_declarations leaf_module_declarations end_cap_cells well_tap_cells filler_cells pad_spacer_cells empty_modules corner_cells unconnected_ports} -hierarchy all ${OUTPUTS_DIR}/${top_module}_${MESH_ARRAY}.lvs.v


write_def -version 5.8 ${OUTPUTS_DIR}/${top_module}_${MESH_ARRAY}.def

create_abstract -estimate_timing -timing_level compact -target_use implementation
create_frame -block_all true
#save_block
#save_lib

update_timing
write_parasitics -output ${OUTPUTS_DIR}/${top_module}_${MESH_ARRAY}


#write_gds -allow_design_mismatch -lib_cell_view design -hierarchy all -long_names ${OUTPUTS_DIR}/${WRITE_DATA_BLOCK_NAME}.gds -layer_map $WRITE_GDS_LAYER_MAP_FILE
write_gds -allow_design_mismatch -lib_cell_view frame -hierarchy all -long_names ${OUTPUTS_DIR}/${top_module}_${MESH_ARRAY}.gds -layer_map $WRITE_GDS_LAYER_MAP_FILE
