/*
 * File: add_int8.sv
 * Author: Michal Gorywoda
 * Created Date: March 10th 2025
 * 
 * Copyright (c) 2025 Michal Gorywoda, KAIST SEED Lab
 */


 `default_nettype none
 module add_int8 #(
    parameter  N = 8
 ) (
      input  logic [N-1:0] a,
      input  logic [N-1:0] b,
      output logic [N-1:0] o
   );
   
      assign o = a + b;
    
 endmodule