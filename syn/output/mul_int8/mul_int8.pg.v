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

  ND2D0 U1 ( .A1(b[0]), .A2(a[4]), .ZN(n2) );
  ND2D0 U2 ( .A1(b[1]), .A2(a[3]), .ZN(n1) );
  AN4D0 U3 ( .A1(b[0]), .A2(b[1]), .A3(a[3]), .A4(a[4]), .Z(n45) );
  AOI21D0 U4 ( .A1(n2), .A2(n1), .B(n45), .ZN(n32) );
  INVD0 U5 ( .I(a[2]), .ZN(n46) );
  INVD0 U6 ( .I(b[2]), .ZN(n28) );
  NR2D0 U7 ( .A1(n46), .A2(n28), .ZN(n27) );
  INVD0 U8 ( .I(b[3]), .ZN(n49) );
  INVD0 U9 ( .I(a[1]), .ZN(n36) );
  NR2D0 U10 ( .A1(n49), .A2(n36), .ZN(n26) );
  INVD0 U11 ( .I(b[4]), .ZN(n47) );
  INVD0 U12 ( .I(a[0]), .ZN(n29) );
  NR2D0 U13 ( .A1(n47), .A2(n29), .ZN(n25) );
  AN4D0 U14 ( .A1(b[0]), .A2(b[1]), .A3(a[2]), .A4(a[3]), .Z(n30) );
  ND2D0 U15 ( .A1(b[0]), .A2(a[3]), .ZN(n4) );
  ND2D0 U16 ( .A1(b[1]), .A2(a[2]), .ZN(n3) );
  AOI21D0 U17 ( .A1(n4), .A2(n3), .B(n30), .ZN(n16) );
  ND2D0 U18 ( .A1(b[1]), .A2(a[1]), .ZN(n7) );
  ND2D0 U19 ( .A1(a[0]), .A2(b[2]), .ZN(n6) );
  ND4D0 U20 ( .A1(a[0]), .A2(b[1]), .A3(a[1]), .A4(b[2]), .ZN(n13) );
  INVD0 U21 ( .I(n13), .ZN(n5) );
  AOI21D0 U22 ( .A1(n7), .A2(n6), .B(n5), .ZN(n18) );
  INVD0 U23 ( .I(b[0]), .ZN(n22) );
  NR2D0 U24 ( .A1(n46), .A2(n22), .ZN(n17) );
  AN4D0 U25 ( .A1(a[0]), .A2(b[0]), .A3(b[1]), .A4(a[1]), .Z(n19) );
  ND2D0 U26 ( .A1(a[1]), .A2(b[2]), .ZN(n11) );
  INVD0 U27 ( .I(n11), .ZN(n10) );
  NR2D0 U28 ( .A1(n49), .A2(n29), .ZN(n8) );
  INVD0 U29 ( .I(n8), .ZN(n12) );
  MUX2ND0 U30 ( .I0(n8), .I1(n12), .S(n13), .ZN(n9) );
  MUX2ND0 U31 ( .I0(n11), .I1(n10), .S(n9), .ZN(n14) );
  AOI21D0 U32 ( .A1(n13), .A2(n12), .B(n11), .ZN(n33) );
  FA1D0 U33 ( .A(n16), .B(n15), .CI(n14), .CO(n34), .S(o[3]) );
  FA1D0 U34 ( .A(n18), .B(n17), .CI(n19), .CO(n15), .S(o[2]) );
  ND2D0 U35 ( .A1(a[0]), .A2(b[1]), .ZN(n21) );
  ND2D0 U36 ( .A1(b[0]), .A2(a[1]), .ZN(n20) );
  AOI21D0 U37 ( .A1(n21), .A2(n20), .B(n19), .ZN(o[1]) );
  NR2D0 U38 ( .A1(n22), .A2(n29), .ZN(o[0]) );
  ND2D0 U39 ( .A1(b[0]), .A2(a[5]), .ZN(n24) );
  ND2D0 U40 ( .A1(b[1]), .A2(a[4]), .ZN(n23) );
  AN4D0 U41 ( .A1(b[0]), .A2(a[5]), .A3(b[1]), .A4(a[4]), .Z(n57) );
  AOI21D0 U42 ( .A1(n24), .A2(n23), .B(n57), .ZN(n44) );
  NR2D0 U43 ( .A1(n47), .A2(n36), .ZN(n43) );
  FA1D0 U44 ( .A(n27), .B(n26), .CI(n25), .CO(n51), .S(n31) );
  INVD0 U45 ( .I(a[3]), .ZN(n48) );
  NR2D0 U46 ( .A1(n48), .A2(n28), .ZN(n40) );
  NR2D0 U47 ( .A1(n49), .A2(n46), .ZN(n39) );
  INVD0 U48 ( .I(b[5]), .ZN(n37) );
  NR2D0 U49 ( .A1(n37), .A2(n29), .ZN(n38) );
  FA1D0 U50 ( .A(n32), .B(n31), .CI(n30), .CO(n54), .S(n35) );
  FA1D0 U51 ( .A(n35), .B(n34), .CI(n33), .CO(n53), .S(o[4]) );
  NR2D0 U52 ( .A1(n37), .A2(n36), .ZN(n70) );
  AN2D0 U53 ( .A1(a[4]), .A2(b[2]), .Z(n69) );
  AN2D0 U54 ( .A1(b[6]), .A2(a[0]), .Z(n68) );
  FA1D0 U55 ( .A(n40), .B(n39), .CI(n38), .CO(n72), .S(n50) );
  ND2D0 U56 ( .A1(a[6]), .A2(b[0]), .ZN(n42) );
  ND2D0 U57 ( .A1(a[5]), .A2(b[1]), .ZN(n41) );
  AN4D0 U58 ( .A1(a[6]), .A2(b[0]), .A3(a[5]), .A4(b[1]), .Z(n74) );
  AOI21D0 U59 ( .A1(n42), .A2(n41), .B(n74), .ZN(n71) );
  FA1D0 U60 ( .A(n45), .B(n44), .CI(n43), .CO(n81), .S(n52) );
  NR2D0 U61 ( .A1(n47), .A2(n46), .ZN(n58) );
  NR2D0 U62 ( .A1(n49), .A2(n48), .ZN(n56) );
  FA1D0 U63 ( .A(n52), .B(n51), .CI(n50), .CO(n60), .S(n55) );
  FA1D0 U64 ( .A(n55), .B(n54), .CI(n53), .CO(n59), .S(o[5]) );
  FA1D0 U65 ( .A(n58), .B(n57), .CI(n56), .CO(n66), .S(n80) );
  INVD0 U66 ( .I(n66), .ZN(n67) );
  FA1D0 U67 ( .A(n61), .B(n60), .CI(n59), .CO(n64), .S(o[6]) );
  INVD0 U68 ( .I(n64), .ZN(n63) );
  ND2D0 U69 ( .A1(a[0]), .A2(b[7]), .ZN(n62) );
  MUX2ND0 U70 ( .I0(n64), .I1(n63), .S(n62), .ZN(n65) );
  MUX2ND0 U71 ( .I0(n67), .I1(n66), .S(n65), .ZN(n103) );
  FA1D0 U72 ( .A(n70), .B(n69), .CI(n68), .CO(n78), .S(n73) );
  INVD0 U73 ( .I(n78), .ZN(n79) );
  FA1D0 U74 ( .A(n73), .B(n72), .CI(n71), .CO(n75), .S(n82) );
  INVD0 U75 ( .I(n75), .ZN(n76) );
  MUX2ND0 U76 ( .I0(n76), .I1(n75), .S(n74), .ZN(n77) );
  MUX2ND0 U77 ( .I0(n79), .I1(n78), .S(n77), .ZN(n102) );
  FA1D0 U78 ( .A(n82), .B(n81), .CI(n80), .CO(n85), .S(n61) );
  INVD0 U79 ( .I(n85), .ZN(n84) );
  ND2D0 U80 ( .A1(a[6]), .A2(b[1]), .ZN(n83) );
  MUX2ND0 U81 ( .I0(n85), .I1(n84), .S(n83), .ZN(n100) );
  ND2D0 U82 ( .A1(b[2]), .A2(a[5]), .ZN(n87) );
  INVD0 U83 ( .I(n87), .ZN(n88) );
  ND2D0 U84 ( .A1(a[1]), .A2(b[6]), .ZN(n86) );
  MUX2ND0 U85 ( .I0(n88), .I1(n87), .S(n86), .ZN(n99) );
  ND2D0 U86 ( .A1(a[2]), .A2(b[5]), .ZN(n97) );
  INVD0 U87 ( .I(n97), .ZN(n96) );
  ND2D0 U88 ( .A1(a[3]), .A2(b[4]), .ZN(n94) );
  INVD0 U89 ( .I(n94), .ZN(n93) );
  ND2D0 U90 ( .A1(a[4]), .A2(b[3]), .ZN(n90) );
  INVD0 U91 ( .I(n90), .ZN(n91) );
  ND2D0 U92 ( .A1(b[0]), .A2(a[7]), .ZN(n89) );
  MUX2ND0 U93 ( .I0(n91), .I1(n90), .S(n89), .ZN(n92) );
  MUX2ND0 U94 ( .I0(n94), .I1(n93), .S(n92), .ZN(n95) );
  MUX2ND0 U95 ( .I0(n97), .I1(n96), .S(n95), .ZN(n98) );
  FA1D0 U96 ( .A(n100), .B(n99), .CI(n98), .S(n101) );
  FA1D0 U97 ( .A(n103), .B(n102), .CI(n101), .S(o[7]) );
endmodule

