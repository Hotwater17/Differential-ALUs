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

  INVD0 U1 ( .I(a[3]), .ZN(n104) );
  INVD0 U2 ( .I(b[0]), .ZN(n9) );
  NR2D0 U3 ( .A1(n104), .A2(n9), .ZN(n18) );
  INVD0 U4 ( .I(a[1]), .ZN(n46) );
  INVD0 U5 ( .I(b[2]), .ZN(n52) );
  NR2D0 U6 ( .A1(n46), .A2(n52), .ZN(n17) );
  INVD0 U7 ( .I(b[3]), .ZN(n48) );
  INVD0 U8 ( .I(a[0]), .ZN(n33) );
  NR2D0 U9 ( .A1(n48), .A2(n33), .ZN(n16) );
  ND2D0 U10 ( .A1(b[1]), .A2(a[3]), .ZN(n2) );
  INVD0 U11 ( .I(c[4]), .ZN(n1) );
  AN3D0 U12 ( .A1(b[1]), .A2(a[3]), .A3(c[4]), .Z(n49) );
  AOI21D0 U13 ( .A1(n2), .A2(n1), .B(n49), .ZN(n38) );
  NR2D0 U14 ( .A1(n46), .A2(n48), .ZN(n37) );
  AN3D0 U15 ( .A1(b[1]), .A2(a[2]), .A3(c[3]), .Z(n36) );
  INVD0 U16 ( .I(a[4]), .ZN(n53) );
  NR2D0 U17 ( .A1(n9), .A2(n53), .ZN(n32) );
  INVD0 U18 ( .I(a[2]), .ZN(n47) );
  NR2D0 U19 ( .A1(n47), .A2(n52), .ZN(n31) );
  INVD0 U20 ( .I(b[4]), .ZN(n105) );
  NR2D0 U21 ( .A1(n105), .A2(n33), .ZN(n30) );
  ND2D0 U22 ( .A1(b[1]), .A2(a[2]), .ZN(n4) );
  INVD0 U23 ( .I(c[3]), .ZN(n3) );
  AOI21D0 U24 ( .A1(n4), .A2(n3), .B(n36), .ZN(n15) );
  NR2D0 U25 ( .A1(n9), .A2(n47), .ZN(n12) );
  AN3D0 U26 ( .A1(b[1]), .A2(a[0]), .A3(c[1]), .Z(n11) );
  AN2D0 U27 ( .A1(a[1]), .A2(b[1]), .Z(n10) );
  AN3D0 U28 ( .A1(b[2]), .A2(a[0]), .A3(c[2]), .Z(n13) );
  ND2D0 U29 ( .A1(b[2]), .A2(a[0]), .ZN(n6) );
  INVD0 U30 ( .I(c[2]), .ZN(n5) );
  AOI21D0 U31 ( .A1(n6), .A2(n5), .B(n13), .ZN(n24) );
  ND2D0 U32 ( .A1(b[1]), .A2(a[0]), .ZN(n8) );
  INVD0 U33 ( .I(c[1]), .ZN(n7) );
  AOI21D0 U34 ( .A1(n8), .A2(n7), .B(n11), .ZN(n26) );
  NR2D0 U35 ( .A1(n46), .A2(n9), .ZN(n25) );
  AN3D0 U36 ( .A1(a[0]), .A2(b[0]), .A3(c[0]), .Z(n27) );
  FA1D0 U37 ( .A(n12), .B(n11), .CI(n10), .CO(n14), .S(n22) );
  FA1D0 U38 ( .A(n15), .B(n14), .CI(n13), .CO(n43), .S(n20) );
  FA1D0 U39 ( .A(n18), .B(n17), .CI(n16), .CO(n41), .S(n19) );
  FA1D0 U40 ( .A(n21), .B(n20), .CI(n19), .CO(n42), .S(o[3]) );
  FA1D0 U41 ( .A(n24), .B(n23), .CI(n22), .CO(n21), .S(o[2]) );
  FA1D0 U42 ( .A(n26), .B(n25), .CI(n27), .CO(n23), .S(o[1]) );
  ND2D0 U43 ( .A1(a[0]), .A2(b[0]), .ZN(n29) );
  INVD0 U44 ( .I(c[0]), .ZN(n28) );
  AOI21D0 U45 ( .A1(n29), .A2(n28), .B(n27), .ZN(o[0]) );
  FA1D0 U46 ( .A(n32), .B(n31), .CI(n30), .CO(n56), .S(n39) );
  AN2D0 U47 ( .A1(b[0]), .A2(a[5]), .Z(n59) );
  NR2D0 U48 ( .A1(n46), .A2(n105), .ZN(n58) );
  INVD0 U49 ( .I(b[5]), .ZN(n45) );
  NR2D0 U50 ( .A1(n45), .A2(n33), .ZN(n57) );
  ND2D0 U51 ( .A1(b[1]), .A2(a[4]), .ZN(n35) );
  INVD0 U52 ( .I(c[5]), .ZN(n34) );
  AN3D0 U53 ( .A1(b[1]), .A2(a[4]), .A3(c[5]), .Z(n73) );
  AOI21D0 U54 ( .A1(n35), .A2(n34), .B(n73), .ZN(n54) );
  FA1D0 U55 ( .A(n38), .B(n37), .CI(n36), .CO(n63), .S(n40) );
  NR2D0 U56 ( .A1(n104), .A2(n52), .ZN(n51) );
  NR2D0 U57 ( .A1(n47), .A2(n48), .ZN(n50) );
  FA1D0 U58 ( .A(n41), .B(n40), .CI(n39), .CO(n66), .S(n44) );
  FA1D0 U59 ( .A(n44), .B(n43), .CI(n42), .CO(n65), .S(o[4]) );
  NR2D0 U60 ( .A1(n46), .A2(n45), .ZN(n108) );
  NR2D0 U61 ( .A1(n105), .A2(n47), .ZN(n107) );
  NR2D0 U62 ( .A1(n104), .A2(n48), .ZN(n106) );
  FA1D0 U63 ( .A(n51), .B(n50), .CI(n49), .CO(n78), .S(n62) );
  NR2D0 U64 ( .A1(n53), .A2(n52), .ZN(n70) );
  AN2D0 U65 ( .A1(b[0]), .A2(a[6]), .Z(n69) );
  AN2D0 U66 ( .A1(b[6]), .A2(a[0]), .Z(n68) );
  FA1D0 U67 ( .A(n56), .B(n55), .CI(n54), .CO(n90), .S(n64) );
  FA1D0 U68 ( .A(n59), .B(n58), .CI(n57), .CO(n72), .S(n55) );
  ND2D0 U69 ( .A1(b[1]), .A2(a[5]), .ZN(n61) );
  INVD0 U70 ( .I(c[6]), .ZN(n60) );
  ND3D0 U71 ( .A1(b[1]), .A2(a[5]), .A3(c[6]), .ZN(n97) );
  INVD0 U72 ( .I(n97), .ZN(n96) );
  AOI21D0 U73 ( .A1(n61), .A2(n60), .B(n96), .ZN(n71) );
  FA1D0 U74 ( .A(n64), .B(n63), .CI(n62), .CO(n75), .S(n67) );
  FA1D0 U75 ( .A(n67), .B(n66), .CI(n65), .CO(n74), .S(o[5]) );
  FA1D0 U76 ( .A(n70), .B(n69), .CI(n68), .CO(n87), .S(n77) );
  INVD0 U77 ( .I(n87), .ZN(n88) );
  FA1D0 U78 ( .A(n73), .B(n72), .CI(n71), .CO(n84), .S(n89) );
  INVD0 U79 ( .I(n84), .ZN(n85) );
  FA1D0 U80 ( .A(n76), .B(n75), .CI(n74), .CO(n81), .S(o[6]) );
  INVD0 U81 ( .I(n81), .ZN(n82) );
  FA1D0 U82 ( .A(n79), .B(n78), .CI(n77), .CO(n80), .S(n91) );
  MUX2ND0 U83 ( .I0(n82), .I1(n81), .S(n80), .ZN(n83) );
  MUX2ND0 U84 ( .I0(n85), .I1(n84), .S(n83), .ZN(n86) );
  MUX2ND0 U85 ( .I0(n88), .I1(n87), .S(n86), .ZN(n122) );
  FA1D0 U86 ( .A(n91), .B(n90), .CI(n89), .CO(n94), .S(n76) );
  INVD0 U87 ( .I(n94), .ZN(n93) );
  ND2D0 U88 ( .A1(a[5]), .A2(b[2]), .ZN(n92) );
  MUX2ND0 U89 ( .I0(n94), .I1(n93), .S(n92), .ZN(n95) );
  MUX2ND0 U90 ( .I0(n97), .I1(n96), .S(n95), .ZN(n121) );
  ND2D0 U91 ( .A1(b[5]), .A2(a[2]), .ZN(n99) );
  INVD0 U92 ( .I(n99), .ZN(n100) );
  ND2D0 U93 ( .A1(b[1]), .A2(a[6]), .ZN(n98) );
  MUX2ND0 U94 ( .I0(n100), .I1(n99), .S(n98), .ZN(n119) );
  ND2D0 U95 ( .A1(b[3]), .A2(a[4]), .ZN(n102) );
  INVD0 U96 ( .I(n102), .ZN(n103) );
  ND2D0 U97 ( .A1(a[0]), .A2(b[7]), .ZN(n101) );
  MUX2ND0 U98 ( .I0(n103), .I1(n102), .S(n101), .ZN(n118) );
  NR2D0 U99 ( .A1(n105), .A2(n104), .ZN(n116) );
  FA1D0 U100 ( .A(n108), .B(n107), .CI(n106), .CO(n109), .S(n79) );
  INVD0 U101 ( .I(n109), .ZN(n110) );
  MUX2ND0 U102 ( .I0(n110), .I1(n109), .S(c[7]), .ZN(n115) );
  ND2D0 U103 ( .A1(b[6]), .A2(a[1]), .ZN(n112) );
  INVD0 U104 ( .I(n112), .ZN(n113) );
  ND2D0 U105 ( .A1(b[0]), .A2(a[7]), .ZN(n111) );
  MUX2ND0 U106 ( .I0(n113), .I1(n112), .S(n111), .ZN(n114) );
  FA1D0 U107 ( .A(n116), .B(n115), .CI(n114), .S(n117) );
  FA1D0 U108 ( .A(n119), .B(n118), .CI(n117), .S(n120) );
  FA1D0 U109 ( .A(n122), .B(n121), .CI(n120), .S(o[7]) );
endmodule

