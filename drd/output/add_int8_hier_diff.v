/////////////////////////////////////////////////////////////
// Created by: Synopsys Design Compiler(R)
// Version   : U-2022.12-SP7-3
// Date      : Wed Mar 12 15:06:44 2025
/////////////////////////////////////////////////////////////



module add_int8 ( a, b, o );
  input [7:0] a;
  input [7:0] b;
  output [7:0] o;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, net4, net8, net10,
         net12, net16, net20, net24, net27, net30, net34, net38, net42, net45,
         net47, \a[7]_d , net49, \a[6]_d , net51, \a[5]_d , net53, \a[4]_d ,
         net55, \a[3]_d , net57, \a[2]_d , net59, \a[1]_d , net61, \a[0]_d ,
         net63, \b[7]_d , net65, \b[6]_d , net67, \b[5]_d , net69, \b[4]_d ,
         net71, \b[3]_d , net73, \b[2]_d , net75, \b[1]_d , net77, \b[0]_d ,
         net80, \o[7]_d , net83, \o[6]_d , net86, \o[5]_d , net89, \o[4]_d ,
         net92, \o[3]_d , net95, \o[2]_d , net98, \o[1]_d , net101, \o[0]_d ,
         n5_N, \o[3]_d_N , n6_N, \o[2]_d_N , n2_N, \o[1]_d_N , n3_N, n4_N,
         \o[0]_d_N , \o[4]_d_N , n7_N, \o[5]_d_N , n8_N, \o[6]_d_N , n11_N,
         n12_N, n9_N, n10_N, \o[7]_d_N , \a[7]_d_N , \a[6]_d_N , \a[5]_d_N ,
         \a[4]_d_N , \a[3]_d_N , \a[2]_d_N , \a[1]_d_N , \a[0]_d_N ,
         \b[7]_d_N , \b[6]_d_N , \b[5]_d_N , \b[4]_d_N , \b[3]_d_N ,
         \b[2]_d_N , \b[1]_d_N , \b[0]_d_N ;

  AND2 U2 ( .A(\a[0]_d ), .AN(\a[0]_d_N ), .B(\b[0]_d ), .BN(\b[0]_d_N ), .Y(
        n5), .YN(n5_N), .CLK(CLK) );
  FA32_DRD U3 ( .A(\b[3]_d ), .AN(\b[3]_d_N ), .B(\a[3]_d ), .BN(\a[3]_d_N ), 
        .CI(n2), .CIN(n2_N), .SUM(\o[3]_d ), .SUMN(\o[3]_d_N ), .COUT(n6), 
        .COUTN(n6_N), .CLK(CLK) );
  FA32_DRD U4 ( .A(\b[2]_d ), .AN(\b[2]_d_N ), .B(\a[2]_d ), .BN(\a[2]_d_N ), 
        .CI(n3), .CIN(n3_N), .SUM(\o[2]_d ), .SUMN(\o[2]_d_N ), .COUT(n2), 
        .COUTN(n2_N), .CLK(CLK) );
  FA32_DRD U5 ( .A(\b[1]_d ), .AN(\b[1]_d_N ), .B(\a[1]_d ), .BN(\a[1]_d_N ), 
        .CI(n5), .CIN(n5_N), .SUM(\o[1]_d ), .SUMN(\o[1]_d_N ), .COUT(n3), 
        .COUTN(n3_N), .CLK(CLK) );
  AND2 U6 ( .A(\a[0]_d_N ), .AN(\a[0]_d ), .B(\b[0]_d_N ), .BN(\b[0]_d ), .Y(
        n4), .YN(n4_N), .CLK(CLK) );
  AND2 U7 ( .A(n5_N), .AN(n5), .B(n4_N), .BN(n4), .Y(\o[0]_d ), .YN(\o[0]_d_N ), .CLK(CLK) );
  FA32_DRD U8 ( .A(\b[4]_d ), .AN(\b[4]_d_N ), .B(\a[4]_d ), .BN(\a[4]_d_N ), 
        .CI(n6), .CIN(n6_N), .SUM(\o[4]_d ), .SUMN(\o[4]_d_N ), .COUT(n7), 
        .COUTN(n7_N), .CLK(CLK) );
  FA32_DRD U9 ( .A(\b[5]_d ), .AN(\b[5]_d_N ), .B(\a[5]_d ), .BN(\a[5]_d_N ), 
        .CI(n7), .CIN(n7_N), .SUM(\o[5]_d ), .SUMN(\o[5]_d_N ), .COUT(n8), 
        .COUTN(n8_N), .CLK(CLK) );
  FA32_DRD U10 ( .A(\b[6]_d ), .AN(\b[6]_d_N ), .B(\a[6]_d ), .BN(\a[6]_d_N ), 
        .CI(n8), .CIN(n8_N), .SUM(\o[6]_d ), .SUMN(\o[6]_d_N ), .COUT(n11), 
        .COUTN(n11_N), .CLK(CLK) );
  INVD1_DIFF U11 ( .A(n11), .AN(n11_N), .Y(n12_N), .CLK(CLK), .YN(n12) );
  INVD1_DIFF U12 ( .A(\b[7]_d ), .AN(\b[7]_d_N ), .Y(n9_N), .CLK(CLK), .YN(
        n9) );
  MUX2 U13 ( .D0(n9), .D0N(n9_N), .D1(\b[7]_d ), .D1N(\b[7]_d_N ), .S(\a[7]_d ), .SN(\a[7]_d_N ), .Y(n10_N), .YN(n10), .CLK(CLK) );
  MUX2 U14 ( .D0(n12), .D0N(n12_N), .D1(n11), .D1N(n11_N), .S(n10), .SN(n10_N), 
        .Y(\o[7]_d_N ), .YN(\o[7]_d ), .CLK(CLK) );
  SE2DIFF a_7_conv ( .A(a[7]), .Y(\a[7]_d ), .YN(\a[7]_d_N ), .CLK(CLK) );
  SE2DIFF a_6_conv ( .A(a[6]), .Y(\a[6]_d ), .YN(\a[6]_d_N ), .CLK(CLK) );
  SE2DIFF a_5_conv ( .A(a[5]), .Y(\a[5]_d ), .YN(\a[5]_d_N ), .CLK(CLK) );
  SE2DIFF a_4_conv ( .A(a[4]), .Y(\a[4]_d ), .YN(\a[4]_d_N ), .CLK(CLK) );
  SE2DIFF a_3_conv ( .A(a[3]), .Y(\a[3]_d ), .YN(\a[3]_d_N ), .CLK(CLK) );
  SE2DIFF a_2_conv ( .A(a[2]), .Y(\a[2]_d ), .YN(\a[2]_d_N ), .CLK(CLK) );
  SE2DIFF a_1_conv ( .A(a[1]), .Y(\a[1]_d ), .YN(\a[1]_d_N ), .CLK(CLK) );
  SE2DIFF a_0_conv ( .A(a[0]), .Y(\a[0]_d ), .YN(\a[0]_d_N ), .CLK(CLK) );
  SE2DIFF b_7_conv ( .A(b[7]), .Y(\b[7]_d ), .YN(\b[7]_d_N ), .CLK(CLK) );
  SE2DIFF b_6_conv ( .A(b[6]), .Y(\b[6]_d ), .YN(\b[6]_d_N ), .CLK(CLK) );
  SE2DIFF b_5_conv ( .A(b[5]), .Y(\b[5]_d ), .YN(\b[5]_d_N ), .CLK(CLK) );
  SE2DIFF b_4_conv ( .A(b[4]), .Y(\b[4]_d ), .YN(\b[4]_d_N ), .CLK(CLK) );
  SE2DIFF b_3_conv ( .A(b[3]), .Y(\b[3]_d ), .YN(\b[3]_d_N ), .CLK(CLK) );
  SE2DIFF b_2_conv ( .A(b[2]), .Y(\b[2]_d ), .YN(\b[2]_d_N ), .CLK(CLK) );
  SE2DIFF b_1_conv ( .A(b[1]), .Y(\b[1]_d ), .YN(\b[1]_d_N ), .CLK(CLK) );
  SE2DIFF b_0_conv ( .A(b[0]), .Y(\b[0]_d ), .YN(\b[0]_d_N ), .CLK(CLK) );
  DIFF2SE o_7_conv ( .A(\o[7]_d ), .AN(\o[7]_d_N ), .Y(o[7]), .CLK(CLK) );
  DIFF2SE o_6_conv ( .A(\o[6]_d ), .AN(\o[6]_d_N ), .Y(o[6]), .CLK(CLK) );
  DIFF2SE o_5_conv ( .A(\o[5]_d ), .AN(\o[5]_d_N ), .Y(o[5]), .CLK(CLK) );
  DIFF2SE o_4_conv ( .A(\o[4]_d ), .AN(\o[4]_d_N ), .Y(o[4]), .CLK(CLK) );
  DIFF2SE o_3_conv ( .A(\o[3]_d ), .AN(\o[3]_d_N ), .Y(o[3]), .CLK(CLK) );
  DIFF2SE o_2_conv ( .A(\o[2]_d ), .AN(\o[2]_d_N ), .Y(o[2]), .CLK(CLK) );
  DIFF2SE o_1_conv ( .A(\o[1]_d ), .AN(\o[1]_d_N ), .Y(o[1]), .CLK(CLK) );
  DIFF2SE o_0_conv ( .A(\o[0]_d ), .AN(\o[0]_d_N ), .Y(o[0]), .CLK(CLK) );
endmodule

