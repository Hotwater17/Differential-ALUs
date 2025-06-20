/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : U-2022.12-SP7-3
// Date      : Wed Mar 12 13:43:16 2025
/////////////////////////////////////////////////////////////


module mac_int8 ( a, b, c, o );
  input [7:0] a;
  input [7:0] b;
  input [7:0] c;
  output [7:0] o;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122;

   INVD1_DIFF U1 ( .A(a[3]), .YN
(n104) );
   INVD1_DIFF U2 ( .A(b[0]), .YN
(n9) );
   AND2 U3 ( .AN(n104), .BN(n9), .Y
(n18) );
   INVD1_DIFF U4 ( .A(a[1]), .YN
(n46) );
   INVD1_DIFF U5 ( .A(b[2]), .YN
(n52) );
   AND2 U6 ( .AN(n46), .BN(n52), .Y
(n17) );
   INVD1_DIFF U7 ( .A(b[3]), .YN
(n48) );
   INVD1_DIFF U8 ( .A(a[0]), .YN
(n33) );
   AND2 U9 ( .AN(n48), .BN(n33), .Y
(n16) );
   AND2 U10 ( .A(b[1]), .B(a[3]), .YN
(n2) );
   INVD1_DIFF U11 ( .A(c[4]), .YN
(n1) );
   AND3 U12 ( .A(b[1]), .B(a[3]), .C(c[4]), .Y
(n49) );
   AOI21 U13 ( .A(n2), .B(n1), .C(n49), .YN
(n38) );
   AND2 U14 ( .AN(n46), .BN(n48), .Y
(n37) );
   AND3 U15 ( .A(b[1]), .B(a[2]), .C(c[3]), .Y
(n36) );
   INVD1_DIFF U16 ( .A(a[4]), .YN
(n53) );
   AND2 U17 ( .AN(n9), .BN(n53), .Y
(n32) );
   INVD1_DIFF U18 ( .A(a[2]), .YN
(n47) );
   AND2 U19 ( .AN(n47), .BN(n52), .Y
(n31) );
   INVD1_DIFF U20 ( .A(b[4]), .YN
(n105) );
   AND2 U21 ( .AN(n105), .BN(n33), .Y
(n30) );
   AND2 U22 ( .A(b[1]), .B(a[2]), .YN
(n4) );
   INVD1_DIFF U23 ( .A(c[3]), .YN
(n3) );
   AOI21 U24 ( .A(n4), .B(n3), .C(n36), .YN
(n15) );
   AND2 U25 ( .AN(n9), .BN(n47), .Y
(n12) );
   AND3 U26 ( .A(b[1]), .B(a[0]), .C(c[1]), .Y
(n11) );
   AND2 U27 ( .A(a[1]), .B(b[1]), .Y
(n10) );
   AND3 U28 ( .A(b[2]), .B(a[0]), .C(c[2]), .Y
(n13) );
   AND2 U29 ( .A(b[2]), .B(a[0]), .YN
(n6) );
   INVD1_DIFF U30 ( .A(c[2]), .YN
(n5) );
   AOI21 U31 ( .A(n6), .B(n5), .C(n13), .YN
(n24) );
   AND2 U32 ( .A(b[1]), .B(a[0]), .YN
(n8) );
   INVD1_DIFF U33 ( .A(c[1]), .YN
(n7) );
   AOI21 U34 ( .A(n8), .B(n7), .C(n11), .YN
(n26) );
   AND2 U35 ( .AN(n46), .BN(n9), .Y
(n25) );
   AND3 U36 ( .A(a[0]), .B(b[0]), .C(c[0]), .Y
(n27) );
   FA32_DRD U37 ( .A(n12), .B(n11), .CI(n10), .COUT
(n14), .SUM(n22) );
   FA32_DRD U38 ( .A(n15), .B(n14), .CI(n13), .COUT
(n43), .SUM(n20) );
   FA32_DRD U39 ( .A(n18), .B(n17), .CI(n16), .COUT
(n41), .SUM(n19) );
   FA32_DRD U40 ( .A(n21), .B(n20), .CI(n19), .COUT
(n42), .SUM(o[3]) );
   FA32_DRD U41 ( .A(n24), .B(n23), .CI(n22), .COUT
(n21), .SUM(o[2]) );
   FA32_DRD U42 ( .A(n26), .B(n25), .CI(n27), .COUT
(n23), .SUM(o[1]) );
   AND2 U43 ( .A(a[0]), .B(b[0]), .YN
(n29) );
   INVD1_DIFF U44 ( .A(c[0]), .YN
(n28) );
   AOI21 U45 ( .A(n29), .B(n28), .C(n27), .YN
(o[0]) );
   FA32_DRD U46 ( .A(n32), .B(n31), .CI(n30), .COUT
(n56), .SUM(n39) );
   AND2 U47 ( .A(b[0]), .B(a[5]), .Y
(n59) );
   AND2 U48 ( .AN(n46), .BN(n105), .Y
(n58) );
   INVD1_DIFF U49 ( .A(b[5]), .YN
(n45) );
   AND2 U50 ( .AN(n45), .BN(n33), .Y
(n57) );
   AND2 U51 ( .A(b[1]), .B(a[4]), .YN
(n35) );
   INVD1_DIFF U52 ( .A(c[5]), .YN
(n34) );
   AND3 U53 ( .A(b[1]), .B(a[4]), .C(c[5]), .Y
(n73) );
   AOI21 U54 ( .A(n35), .B(n34), .C(n73), .YN
(n54) );
   FA32_DRD U55 ( .A(n38), .B(n37), .CI(n36), .COUT
(n63), .SUM(n40) );
   AND2 U56 ( .AN(n104), .BN(n52), .Y
(n51) );
   AND2 U57 ( .AN(n47), .BN(n48), .Y
(n50) );
   FA32_DRD U58 ( .A(n41), .B(n40), .CI(n39), .COUT
(n66), .SUM(n44) );
   FA32_DRD U59 ( .A(n44), .B(n43), .CI(n42), .COUT
(n65), .SUM(o[4]) );
   AND2 U60 ( .AN(n46), .BN(n45), .Y
(n108) );
   AND2 U61 ( .AN(n105), .BN(n47), .Y
(n107) );
   AND2 U62 ( .AN(n104), .BN(n48), .Y
(n106) );
   FA32_DRD U63 ( .A(n51), .B(n50), .CI(n49), .COUT
(n78), .SUM(n62) );
   AND2 U64 ( .AN(n53), .BN(n52), .Y
(n70) );
   AND2 U65 ( .A(b[0]), .B(a[6]), .Y
(n69) );
   AND2 U66 ( .A(b[6]), .B(a[0]), .Y
(n68) );
   FA32_DRD U67 ( .A(n56), .B(n55), .CI(n54), .COUT
(n90), .SUM(n64) );
   FA32_DRD U68 ( .A(n59), .B(n58), .CI(n57), .COUT
(n72), .SUM(n55) );
   AND2 U69 ( .A(b[1]), .B(a[5]), .YN
(n61) );
   INVD1_DIFF U70 ( .A(c[6]), .YN
(n60) );
   AND3 U71 ( .A(b[1]), .B(a[5]), .C(c[6]), .YN
(n97) );
   INVD1_DIFF U72 ( .A(n97), .YN
(n96) );
   AOI21 U73 ( .A(n61), .B(n60), .C(n96), .YN
(n71) );
   FA32_DRD U74 ( .A(n64), .B(n63), .CI(n62), .COUT
(n75), .SUM(n67) );
   FA32_DRD U75 ( .A(n67), .B(n66), .CI(n65), .COUT
(n74), .SUM(o[5]) );
   FA32_DRD U76 ( .A(n70), .B(n69), .CI(n68), .COUT
(n87), .SUM(n77) );
   INVD1_DIFF U77 ( .A(n87), .YN
(n88) );
   FA32_DRD U78 ( .A(n73), .B(n72), .CI(n71), .COUT
(n84), .SUM(n89) );
   INVD1_DIFF U79 ( .A(n84), .YN
(n85) );
   FA32_DRD U80 ( .A(n76), .B(n75), .CI(n74), .COUT
(n81), .SUM(o[6]) );
   INVD1_DIFF U81 ( .A(n81), .YN
(n82) );
   FA32_DRD U82 ( .A(n79), .B(n78), .CI(n77), .COUT
(n80), .SUM(n91) );
   MUX2 U83 ( .D0(n82), .D1(n81), .S(n80), .YN
(n83) );
   MUX2 U84 ( .D0(n85), .D1(n84), .S(n83), .YN
(n86) );
   MUX2 U85 ( .D0(n88), .D1(n87), .S(n86), .YN
(n122) );
   FA32_DRD U86 ( .A(n91), .B(n90), .CI(n89), .COUT
(n94), .SUM(n76) );
   INVD1_DIFF U87 ( .A(n94), .YN
(n93) );
   AND2 U88 ( .A(a[5]), .B(b[2]), .YN
(n92) );
   MUX2 U89 ( .D0(n94), .D1(n93), .S(n92), .YN
(n95) );
   MUX2 U90 ( .D0(n97), .D1(n96), .S(n95), .YN
(n121) );
   AND2 U91 ( .A(b[5]), .B(a[2]), .YN
(n99) );
   INVD1_DIFF U92 ( .A(n99), .YN
(n100) );
   AND2 U93 ( .A(b[1]), .B(a[6]), .YN
(n98) );
   MUX2 U94 ( .D0(n100), .D1(n99), .S(n98), .YN
(n119) );
   AND2 U95 ( .A(b[3]), .B(a[4]), .YN
(n102) );
   INVD1_DIFF U96 ( .A(n102), .YN
(n103) );
   AND2 U97 ( .A(a[0]), .B(b[7]), .YN
(n101) );
   MUX2 U98 ( .D0(n103), .D1(n102), .S(n101), .YN
(n118) );
   AND2 U99 ( .AN(n105), .BN(n104), .Y
(n116) );
   FA32_DRD U100 ( .A(n108), .B(n107), .CI(n106), .COUT
(n109), .SUM(n79) );
   INVD1_DIFF U101 ( .A(n109), .YN
(n110) );
   MUX2 U102 ( .D0(n110), .D1(n109), .S(c[7]), .YN
(n115) );
   AND2 U103 ( .A(b[6]), .B(a[1]), .YN
(n112) );
   INVD1_DIFF U104 ( .A(n112), .YN
(n113) );
   AND2 U105 ( .A(b[0]), .B(a[7]), .YN
(n111) );
   MUX2 U106 ( .D0(n113), .D1(n112), .S(n111), .YN
(n114) );
   FA32_DRD U107 ( .A(n116), .B(n115), .CI(n114), .SUM(n117) );
   FA32_DRD U108 ( .A(n119), .B(n118), .CI(n117), .SUM(n120) );
   FA32_DRD U109 ( .A(n122), .B(n121), .CI(n120), .SUM(o[7]) );
endmodule

module SYMM_AO6_WRAP(
    input   I0,
    input   I0N,
    input   I1,
    input   I1N,
    input   I2,
    input   I2N,
    input   I3,
    input   I3N,
    input   I4,
    input   I4N,
    input   I5,
    input   I5N,
    input   S0,
    input   S0N,
    input   S1,
    input   S1N,
    input   S2,
    input   S2N,
    input   S3,
    input   S3N,
    input   S4,
    input   S4N,
    input   S5,
    input   S5N,
    output  Y,
    output  YN,
    input   CLK,
    inout   VDD,
    inout   VSS
    );

endmodule

module SYMM_AO3_WRAP(
    input   I0,
    input   I0N,
    input   I1,
    input   I1N,
    input   I2,
    input   I2N,
    input   S0,
    input   S0N,
    input   S1,
    input   S1N,
    input   S2,
    input   S2N,
    output  Y,
    output  YN,
    input   CLK,
    inout   VDD,
    inout   VSS
    );

endmodule

module SYMM_AO2_WRAP(
    input   I0,
    input   I0N,
    input   I1,
    input   I1N,
    input   S0,
    input   S0N,
    input   S1,
    input   S1N,
    output  Y,
    output  YN,
    input   CLK,
    inout   VDD,
    inout   VSS
    );

endmodule

module SYMM_AO2(
    input           CLK,
    input   [1:0]   REGI,
    input   [1:0]   REGIN,
    input           SEL,
    input           SELN,
    output          Y,
    output          YN
);
endmodule

module SYMM_AO3(
    input           CLK,
    input   [2:0]   REGI,
    input   [2:0]   REGIN,
    input   [2:0]   SEL,
    input   [2:0]   SELN,
    output          Y,
    output          YN
);
endmodule

module SYMM_AO6(
    input           CLK,
    input   [5:0]   REGI,
    input   [5:0]   REGIN,
    input   [5:0]   SEL,
    input   [5:0]   SELN,
    output          Y,
    output          YN
);
endmodule

module SE2DIFF(
    input   A,
    output  Y,
    output  YN,
    input   CLK,
    inout   VDD,
    inout   VSS
    );


endmodule

module DIFF2SE(
    input   A,
    input   AN,
    output  Y,
    input   CLK,
    inout   VDD,
    inout   VSS
    );

endmodule

module AND2(
    input   A,
    input   AN,
    input   B,
    input   BN,
    output  Y,
    output  YN,
    input   CLK,
    inout   VDD,
    inout   VSS
    );

endmodule

module AND3(
    input   A,
    input   AN,
    input   B,
    input   BN,
    input   C,
    input   CN,
    output  Y,
    output  YN,
    input   CLK,
    inout   VDD,
    inout   VSS
    );

endmodule

module AND4(
    input   A,
    input   AN,
    input   B,
    input   BN,
    input   C,
    input   CN,
    input   D,
    input   DN,
    output  Y,
    output  YN,
    input   CLK,
    inout   VDD,
    inout   VSS
    );

endmodule

module XOR2(
    input   A,
    input   AN,
    input   B,
    input   BN,
    output  Y,
    output  YN,
    input   CLK,
    inout   VDD,
    inout   VSS
    );

endmodule

module MUX2(
    input   D0,
    input   D0N,
    input   D1,
    input   D1N,
    input   S,
    input   SN,
    output  Y,
    output  YN,
    input   CLK,
    inout   VDD,
    inout   VSS
    );

endmodule


module FA32_DRD (
    input   A,
    input   AN,
    input   B,
    input   BN,
    input   CI,
    input   CIN,
    output  SUM,
    output  SUMN,
    output  COUT,
    output  COUTN,
    input   CLK,
    inout   VDD,
    inout   VSS
    );

endmodule

module HA_DRD(
    input   A,
    input   AN,
    input   B,
    input   BN,
    output  SUM,
    output  SUMN,
    output  COUT,
    output  COUTN,
    input   CLK,
    inout   VDD,
    inout   VSS
    );

endmodule

module AOI22(
    input   A,
    input   AN,
    input   B,
    input   BN,
    input   C,
    input   CN,
    input   D,
    input   DN,
    output  Y,
    output  YN,
    input   CLK,
    inout   VDD,
    inout   VSS
    );

endmodule

module AOI21(
    input   A,
    input   AN,
    input   B,
    input   BN,
    input   C,
    input   CN,
    output  Y,
    output  YN,
    input   CLK,
    inout   VDD,
    inout   VSS
    );

endmodule

module OAI22(
    input   A,
    input   AN,
    input   B,
    input   BN,
    input   C,
    input   CN,
    input   D,
    input   DN,
    output  Y,
    output  YN,
    input   CLK,
    inout   VDD,
    inout   VSS
    );

endmodule

module CMPE42(
    input   A,
    input   AN,
    input   B,
    input   BN,
    input   C,
    input   CN,
    input   D,
    input   DN,
    input   CIX,
    input   CIXN,
    output  SUM,
    output  SUMN,
    output  COUT,
    output  COUTN,
    output  COX,
    output  COXN,
    input   CLK,
    inout   VDD,
    inout   VSS
    );

endmodule

module INVD1_DIFF(
    input   A,
    input   AN,
    output Y,
    input   CLK,
    output YN
    );
endmodule

module CKLNQD24(
    input   TE,
    input   E,
    input   CP,
    output  Q
);
endmodule

module CKLNQD12(
    input   TE,
    input   E,
    input   CP,
    output  Q
);
endmodule


module CKAN8_4X(
    input   E,
    input   CK,
    output   OUT
);
endmodule

module CKAN8_8X(
    input   E,
    input   CK,
    output   OUT
);
endmodule

module AO7X22(
    input   I0,
    input   I0N,
    input   I1,
    input   I1N,
    input   I2,
    input   I2N,
    input   I3,
    input   I3N,
    input   I4,
    input   I4N,
    input   I5,
    input   I5N,
    input   I6,
    input   I6N,
    input   S0,
    input   S0N,
    input   S1,
    input   S1N,
    input   S2,
    input   S2N,
    input   S3,
    input   S3N,
    input   S4,
    input   S4N,
    input   S5,
    input   S5N,
    input   S6,
    input   S6N,
    output  Y,
    output  YN,
    input   CLK,
    inout   VDD,
    inout   VSS
    );

endmodule

module AO6X22(
    input   I0,
    input   I0N,
    input   I1,
    input   I1N,
    input   I2,
    input   I2N,
    input   I3,
    input   I3N,
    input   I4,
    input   I4N,
    input   I5,
    input   I5N,
    input   S0,
    input   S0N,
    input   S1,
    input   S1N,
    input   S2,
    input   S2N,
    input   S3,
    input   S3N,
    input   S4,
    input   S4N,
    input   S5,
    input   S5N,
    output  Y,
    output  YN,
    input   CLK,
    inout   VDD,
    inout   VSS
    );

endmodule

module AO3X22(
    input   I0,
    input   I0N,
    input   I1,
    input   I1N,
    input   I2,
    input   I2N,
    input   S0,
    input   S0N,
    input   S1,
    input   S1N,
    input   S2,
    input   S2N,
    output  Y,
    output  YN,
    input   CLK,
    inout   VDD,
    inout   VSS
    );

endmodule

module DEC_ADDSUB(
    input [6:0]     ocode,
    input [6:0]     ocode_N,
    output          out_e,
    output          out_e_N,
    inout           CLK,
    inout           VDD,
    inout           VSS
);

endmodule

module DEC_LOGIC(
    input [6:0]     ocode,
    input [6:0]     ocode_N,
    output          out_e,
    output          out_e_N,
    inout           CLK,
    inout           VDD,
    inout           VSS
);

endmodule

module DEC_SHIFT(
    input [6:0]     ocode,
    input [6:0]     ocode_N,
    output          out_e,
    output          out_e_N,
    inout           CLK,
    inout           VDD,
    inout           VSS
);

endmodule


module DEC_COM(
    input [6:0]     ocode,
    input [6:0]     ocode_N,
    output          out_e,
    output          out_e_N,
    inout           CLK,
    inout           VDD,
    inout           VSS
);

endmodule

module DEC_MUL(
    input [6:0]     ocode,
    input [6:0]     ocode_N,
    output          out_e,
    output          out_e_N,
    inout           CLK,
    inout           VDD,
    inout           VSS
);

endmodule

module DEC_MAC(
    input [6:0]     ocode,
    input [6:0]     ocode_N,
    output          out_e,
    output          out_e_N,
    inout           CLK,
    inout           VDD,
    inout           VSS
);

endmodule

module DEC_MUL_SEL(
    input [6:0]     ocode,
    input [6:0]     ocode_N,
    output          hi_e,
    output          hi_e_N,
    output          low_e,
    output          low_e_N,
    inout           CLK,
    inout           VDD,
    inout           VSS
);

endmodule

module SRL_REG(
    input   [31:0]  D,
    input   [31:0]  DN,
    output  [31:0]  Q,
    output  [31:0]  QN,
    input           E,
    inout           CLK,
    inout           VDD,
    inout           VSS
);
endmodule

module SRL_EN_CELL(
    input           D,
    input           DN,
    output          Y,
    output          YN,
    input           E,
    inout           CLK,
    inout           VDD,
    inout           VSS
);
endmodule

module RAM_CELL(
    input           D,
    input           DN,
    output          Y,
    output          YN,
    input           E,
    inout           CLK,
    inout           VDD,
    inout           VSS
);
endmodule


module BUF_OR_SEL(
    input [31:0]    REGI,
    input [31:0]    REGIN,
    input [31:0]    SEL,
    input [31:0]    SELN,
    output          Y,
    output          YN,
    inout           CLK,
    inout           VDD,
    inout           VSS
);
endmodule