/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : U-2022.12-SP7-3
// Date      : Wed Mar 12 13:42:32 2025
/////////////////////////////////////////////////////////////


module add_int8 ( a, b, o );
  input [7:0] a;
  input [7:0] b;
  output [7:0] o;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12;

  AN2D0 U2 ( .A1(a[0]), .A2(b[0]), .Z(n5) );
  FA1D0 U3 ( .A(b[3]), .B(a[3]), .CI(n2), .CO(n6), .S(o[3]) );
  FA1D0 U4 ( .A(b[2]), .B(a[2]), .CI(n3), .CO(n2), .S(o[2]) );
  FA1D0 U5 ( .A(b[1]), .B(a[1]), .CI(n5), .CO(n3), .S(o[1]) );
  NR2D0 U6 ( .A1(a[0]), .A2(b[0]), .ZN(n4) );
  NR2D0 U7 ( .A1(n5), .A2(n4), .ZN(o[0]) );
  FA1D0 U8 ( .A(b[4]), .B(a[4]), .CI(n6), .CO(n7), .S(o[4]) );
  FA1D0 U9 ( .A(b[5]), .B(a[5]), .CI(n7), .CO(n8), .S(o[5]) );
  FA1D0 U10 ( .A(b[6]), .B(a[6]), .CI(n8), .CO(n11), .S(o[6]) );
  INVD0 U11 ( .I(n11), .ZN(n12) );
  INVD0 U12 ( .I(b[7]), .ZN(n9) );
  MUX2ND0 U13 ( .I0(n9), .I1(b[7]), .S(a[7]), .ZN(n10) );
  MUX2ND0 U14 ( .I0(n12), .I1(n11), .S(n10), .ZN(o[7]) );
endmodule

