#/*
# * File: sim.tcl
# * Author: Michal Gorywoda
# * Created Date: March 7th 2025
# * 
# * Copyright (c) 2025 Michal Gorywoda, KAIST SEED Lab
# */


set rtl_files [list	../rtl/### RTL_FILES ###.sv ]
set top_design ### TOP MODULE ###
set tb_files ./tb/### TB FILES ###.sv
exec vcs -full64 -sverilog -debug_access -timescale=10ns/1ns -lca -kdb $rtl_files $tb_files -t $top_design +define+SIM_TASKS

