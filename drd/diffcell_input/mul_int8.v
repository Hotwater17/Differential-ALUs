/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : U-2022.12-SP7-3
// Date      : Wed Mar 12 13:44:34 2025
/////////////////////////////////////////////////////////////


module mul_int8 ( a, b, o );
  input [7:0] a;
  input [7:0] b;
  output [7:0] o;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103;

   AND2 U1 ( .A(b[0]), .B(a[4]), .YN
(n2) );
   AND2 U2 ( .A(b[1]), .B(a[3]), .YN
(n1) );
   AND4 U3 ( .A(b[0]), .B(b[1]), .C(a[3]), .D(a[4]), .Y
(n45) );
   AOI21 U4 ( .A(n2), .B(n1), .C(n45), .YN
(n32) );
   INVD1_DIFF U5 ( .A(a[2]), .YN
(n46) );
   INVD1_DIFF U6 ( .A(b[2]), .YN
(n28) );
   AND2 U7 ( .AN(n46), .BN(n28), .Y
(n27) );
   INVD1_DIFF U8 ( .A(b[3]), .YN
(n49) );
   INVD1_DIFF U9 ( .A(a[1]), .YN
(n36) );
   AND2 U10 ( .AN(n49), .BN(n36), .Y
(n26) );
   INVD1_DIFF U11 ( .A(b[4]), .YN
(n47) );
   INVD1_DIFF U12 ( .A(a[0]), .YN
(n29) );
   AND2 U13 ( .AN(n47), .BN(n29), .Y
(n25) );
   AND4 U14 ( .A(b[0]), .B(b[1]), .C(a[2]), .D(a[3]), .Y
(n30) );
   AND2 U15 ( .A(b[0]), .B(a[3]), .YN
(n4) );
   AND2 U16 ( .A(b[1]), .B(a[2]), .YN
(n3) );
   AOI21 U17 ( .A(n4), .B(n3), .C(n30), .YN
(n16) );
   AND2 U18 ( .A(b[1]), .B(a[1]), .YN
(n7) );
   AND2 U19 ( .A(a[0]), .B(b[2]), .YN
(n6) );
   AND4 U20 ( .A(a[0]), .B(b[1]), .C(a[1]), .D(b[2]), .YN
(n13) );
   INVD1_DIFF U21 ( .A(n13), .YN
(n5) );
   AOI21 U22 ( .A(n7), .B(n6), .C(n5), .YN
(n18) );
   INVD1_DIFF U23 ( .A(b[0]), .YN
(n22) );
   AND2 U24 ( .AN(n46), .BN(n22), .Y
(n17) );
   AND4 U25 ( .A(a[0]), .B(b[0]), .C(b[1]), .D(a[1]), .Y
(n19) );
   AND2 U26 ( .A(a[1]), .B(b[2]), .YN
(n11) );
   INVD1_DIFF U27 ( .A(n11), .YN
(n10) );
   AND2 U28 ( .AN(n49), .BN(n29), .Y
(n8) );
   INVD1_DIFF U29 ( .A(n8), .YN
(n12) );
   MUX2 U30 ( .D0(n8), .D1(n12), .S(n13), .YN
(n9) );
   MUX2 U31 ( .D0(n11), .D1(n10), .S(n9), .YN
(n14) );
   AOI21 U32 ( .A(n13), .B(n12), .C(n11), .YN
(n33) );
   FA32_DRD U33 ( .A(n16), .B(n15), .CI(n14), .COUT
(n34), .SUM(o[3]) );
   FA32_DRD U34 ( .A(n18), .B(n17), .CI(n19), .COUT
(n15), .SUM(o[2]) );
   AND2 U35 ( .A(a[0]), .B(b[1]), .YN
(n21) );
   AND2 U36 ( .A(b[0]), .B(a[1]), .YN
(n20) );
   AOI21 U37 ( .A(n21), .B(n20), .C(n19), .YN
(o[1]) );
   AND2 U38 ( .AN(n22), .BN(n29), .Y
(o[0]) );
   AND2 U39 ( .A(b[0]), .B(a[5]), .YN
(n24) );
   AND2 U40 ( .A(b[1]), .B(a[4]), .YN
(n23) );
   AND4 U41 ( .A(b[0]), .B(a[5]), .C(b[1]), .D(a[4]), .Y
(n57) );
   AOI21 U42 ( .A(n24), .B(n23), .C(n57), .YN
(n44) );
   AND2 U43 ( .AN(n47), .BN(n36), .Y
(n43) );
   FA32_DRD U44 ( .A(n27), .B(n26), .CI(n25), .COUT
(n51), .SUM(n31) );
   INVD1_DIFF U45 ( .A(a[3]), .YN
(n48) );
   AND2 U46 ( .AN(n48), .BN(n28), .Y
(n40) );
   AND2 U47 ( .AN(n49), .BN(n46), .Y
(n39) );
   INVD1_DIFF U48 ( .A(b[5]), .YN
(n37) );
   AND2 U49 ( .AN(n37), .BN(n29), .Y
(n38) );
   FA32_DRD U50 ( .A(n32), .B(n31), .CI(n30), .COUT
(n54), .SUM(n35) );
   FA32_DRD U51 ( .A(n35), .B(n34), .CI(n33), .COUT
(n53), .SUM(o[4]) );
   AND2 U52 ( .AN(n37), .BN(n36), .Y
(n70) );
   AND2 U53 ( .A(a[4]), .B(b[2]), .Y
(n69) );
   AND2 U54 ( .A(b[6]), .B(a[0]), .Y
(n68) );
   FA32_DRD U55 ( .A(n40), .B(n39), .CI(n38), .COUT
(n72), .SUM(n50) );
   AND2 U56 ( .A(a[6]), .B(b[0]), .YN
(n42) );
   AND2 U57 ( .A(a[5]), .B(b[1]), .YN
(n41) );
   AND4 U58 ( .A(a[6]), .B(b[0]), .C(a[5]), .D(b[1]), .Y
(n74) );
   AOI21 U59 ( .A(n42), .B(n41), .C(n74), .YN
(n71) );
   FA32_DRD U60 ( .A(n45), .B(n44), .CI(n43), .COUT
(n81), .SUM(n52) );
   AND2 U61 ( .AN(n47), .BN(n46), .Y
(n58) );
   AND2 U62 ( .AN(n49), .BN(n48), .Y
(n56) );
   FA32_DRD U63 ( .A(n52), .B(n51), .CI(n50), .COUT
(n60), .SUM(n55) );
   FA32_DRD U64 ( .A(n55), .B(n54), .CI(n53), .COUT
(n59), .SUM(o[5]) );
   FA32_DRD U65 ( .A(n58), .B(n57), .CI(n56), .COUT
(n66), .SUM(n80) );
   INVD1_DIFF U66 ( .A(n66), .YN
(n67) );
   FA32_DRD U67 ( .A(n61), .B(n60), .CI(n59), .COUT
(n64), .SUM(o[6]) );
   INVD1_DIFF U68 ( .A(n64), .YN
(n63) );
   AND2 U69 ( .A(a[0]), .B(b[7]), .YN
(n62) );
   MUX2 U70 ( .D0(n64), .D1(n63), .S(n62), .YN
(n65) );
   MUX2 U71 ( .D0(n67), .D1(n66), .S(n65), .YN
(n103) );
   FA32_DRD U72 ( .A(n70), .B(n69), .CI(n68), .COUT
(n78), .SUM(n73) );
   INVD1_DIFF U73 ( .A(n78), .YN
(n79) );
   FA32_DRD U74 ( .A(n73), .B(n72), .CI(n71), .COUT
(n75), .SUM(n82) );
   INVD1_DIFF U75 ( .A(n75), .YN
(n76) );
   MUX2 U76 ( .D0(n76), .D1(n75), .S(n74), .YN
(n77) );
   MUX2 U77 ( .D0(n79), .D1(n78), .S(n77), .YN
(n102) );
   FA32_DRD U78 ( .A(n82), .B(n81), .CI(n80), .COUT
(n85), .SUM(n61) );
   INVD1_DIFF U79 ( .A(n85), .YN
(n84) );
   AND2 U80 ( .A(a[6]), .B(b[1]), .YN
(n83) );
   MUX2 U81 ( .D0(n85), .D1(n84), .S(n83), .YN
(n100) );
   AND2 U82 ( .A(b[2]), .B(a[5]), .YN
(n87) );
   INVD1_DIFF U83 ( .A(n87), .YN
(n88) );
   AND2 U84 ( .A(a[1]), .B(b[6]), .YN
(n86) );
   MUX2 U85 ( .D0(n88), .D1(n87), .S(n86), .YN
(n99) );
   AND2 U86 ( .A(a[2]), .B(b[5]), .YN
(n97) );
   INVD1_DIFF U87 ( .A(n97), .YN
(n96) );
   AND2 U88 ( .A(a[3]), .B(b[4]), .YN
(n94) );
   INVD1_DIFF U89 ( .A(n94), .YN
(n93) );
   AND2 U90 ( .A(a[4]), .B(b[3]), .YN
(n90) );
   INVD1_DIFF U91 ( .A(n90), .YN
(n91) );
   AND2 U92 ( .A(b[0]), .B(a[7]), .YN
(n89) );
   MUX2 U93 ( .D0(n91), .D1(n90), .S(n89), .YN
(n92) );
   MUX2 U94 ( .D0(n94), .D1(n93), .S(n92), .YN
(n95) );
   MUX2 U95 ( .D0(n97), .D1(n96), .S(n95), .YN
(n98) );
   FA32_DRD U96 ( .A(n100), .B(n99), .CI(n98), .SUM(n101) );
   FA32_DRD U97 ( .A(n103), .B(n102), .CI(n101), .SUM(o[7]) );
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