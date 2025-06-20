/*
 * File: template.sv
 * Author: Michal Gorywoda
 * Created Date: March 9th 2025
 * 
 * Copyright (c) 2025 Michal Gorywoda, KAIST SEED Lab
 */

 `default_nettype none
 module mul_int32 #(
    parameter N = 32
 ) (

   input   logic    [N-1:0]  a,
   input   logic    [N-1:0]  b,
   output  logic    [N-1:0]  o
 );
    
   assign o = a * b;
 endmodule