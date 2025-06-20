
 `default_nettype none
 module mac_int8 #(
    parameter N = 8
 ) (
      input    logic [N-1:0]  a,
      input    logic [N-1:0]  b,
      input    logic [N-1:0]  c,
      output   logic [N-1:0]  o
   
      
 );
   assign o = a*b + c;
 endmodule