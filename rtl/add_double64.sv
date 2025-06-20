/*
 * File: add_double64.sv
 * Author: Michal Gorywoda
 * Created Date: March 9th 2025
 * 
 * Copyright (c) 2025 Michal Gorywoda, KAIST SEED Lab
 */

 `default_nettype none
 module add_double64 #(
   parameter   N_SIG    = 52,
   parameter   N_EXP    = 11,
   parameter   N_DATA   = N_EXP + N_SIG + 1
 ) (
   input    logic [N_DATA-1:0]   a,
   input    logic [N_DATA-1:0]   b,
   input    logic [2:0]          rnd,
   output   logic [N_DATA-1:0]   o,
   output   logic [7:0]          status
 );
 
 
DW_fp_add #
(
   .sig_width(N_SIG), 
   .exp_width(N_EXP), 
   .ieee_compliance(1)
) ADD ( 
   .a(a), 
   .b(b), 
   .rnd(rnd), 
   .z(o), 
   .status(status) 
);
    
endmodule