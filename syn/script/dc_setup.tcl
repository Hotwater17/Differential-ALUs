
#Set the path to the technology library
#set library_path ". /technology/TSMC_180nm_BCD/STD/tcb018gbwp7t_290a/TSMCHOME/digital/Front_End/timing_power_noise/NLDM/tcb018gbwp7t_270a/"
set library_path ". /technology/TSMC_65nm_MS_RF_LP_1.2_2.5V_full/STD/TSMCHOME/digital/Front_End/timing_power_noise/NLDM/tcbn65lp_220a"
set rtl_source_path [list   . ../rtl ]

                   
set search_path "$search_path $library_path $rtl_source_path" 

#Name of technology library
#set target_library "tcb018gbwp7ttc.db"
set target_library "tcbn65lptc.db"
set synthetic_library dw_foundation.sldb
set link_library "* $target_library $synthetic_library"


set hdlin_check_no_latch true
set hdlin_enable_configurations true
