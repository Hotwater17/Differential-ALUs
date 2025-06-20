/////////////////////////////////////////////////////////////
// Created by: Synopsys Design Compiler(R)
// Version   : U-2022.12-SP7-3
// Date      : Wed Mar 12 17:18:42 2025
/////////////////////////////////////////////////////////////



module mul_int8 ( a, b, o, CLK );
  input [7:0] a;
  input [7:0] b;
  output [7:0] o;
  input CLK;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, \a[7]_d , \a[6]_d , \a[5]_d , \a[4]_d , \a[3]_d ,
         \a[2]_d , \a[1]_d , \a[0]_d , \b[7]_d , \b[6]_d , \b[5]_d , \b[4]_d ,
         \b[3]_d , \b[2]_d , \b[1]_d , \b[0]_d , \o[7]_d , \o[6]_d , \o[5]_d ,
         \o[4]_d , \o[3]_d , \o[2]_d , \o[1]_d , \o[0]_d , n2_N, n1_N, n45_N,
         n32_N, n46_N, n28_N, n27_N, n49_N, n36_N, n26_N, n47_N, n29_N, n25_N,
         n30_N, n4_N, n3_N, n16_N, n7_N, n6_N, n13_N, n5_N, n18_N, n22_N,
         n17_N, n19_N, n11_N, n10_N, n8_N, n12_N, n9_N, n14_N, n33_N,
         \o[3]_d_N , n34_N, \o[2]_d_N , n15_N, n21_N, n20_N, \o[1]_d_N ,
         \o[0]_d_N , n24_N, n23_N, n57_N, n44_N, n43_N, n31_N, n51_N, n48_N,
         n40_N, n39_N, n37_N, n38_N, n35_N, n54_N, \o[4]_d_N , n53_N, n70_N,
         n69_N, n68_N, n50_N, n72_N, n42_N, n41_N, n74_N, n71_N, n52_N, n81_N,
         n58_N, n56_N, n55_N, n60_N, \o[5]_d_N , n59_N, n80_N, n66_N, n67_N,
         \o[6]_d_N , n64_N, n63_N, n62_N, n65_N, n103_N, n73_N, n78_N, n79_N,
         n82_N, n75_N, n76_N, n77_N, n102_N, n61_N, n85_N, n84_N, n83_N,
         n100_N, n87_N, n88_N, n86_N, n99_N, n97_N, n96_N, n94_N, n93_N, n90_N,
         n91_N, n89_N, n92_N, n95_N, n98_N, n101_N, \o[7]_d_N , \a[7]_d_N ,
         \a[6]_d_N , \a[5]_d_N , \a[4]_d_N , \a[3]_d_N , \a[2]_d_N ,
         \a[1]_d_N , \a[0]_d_N , \b[7]_d_N , \b[6]_d_N , \b[5]_d_N ,
         \b[4]_d_N , \b[3]_d_N , \b[2]_d_N , \b[1]_d_N , \b[0]_d_N ;

  AND2 U1 ( .A(\b[0]_d ), .AN(\b[0]_d_N ), .B(\a[4]_d ), .BN(\a[4]_d_N ), .Y(
        n2_N), .YN(n2), .CLK(CLK) );
  AND2 U2 ( .A(\b[1]_d ), .AN(\b[1]_d_N ), .B(\a[3]_d ), .BN(\a[3]_d_N ), .Y(
        n1_N), .YN(n1), .CLK(CLK) );
  AND4 U3 ( .A(\b[0]_d ), .AN(\b[0]_d_N ), .B(\b[1]_d ), .BN(\b[1]_d_N ), .C(
        \a[3]_d ), .CN(\a[3]_d_N ), .D(\a[4]_d ), .DN(\a[4]_d_N ), .Y(n45), 
        .YN(n45_N), .CLK(CLK) );
  AOI21 U4 ( .A(n2), .AN(n2_N), .B(n1), .BN(n1_N), .C(n45), .CN(n45_N), .Y(
        n32_N), .YN(n32), .CLK(CLK) );
  INVD1_DIFF U5 ( .A(\a[2]_d ), .AN(\a[2]_d_N ), .Y(n46_N), .CLK(CLK), .YN(n46) );
  INVD1_DIFF U6 ( .A(\b[2]_d ), .AN(\b[2]_d_N ), .Y(n28_N), .CLK(CLK), .YN(n28) );
  AND2 U7 ( .A(n46_N), .AN(n46), .B(n28_N), .BN(n28), .Y(n27), .YN(n27_N), 
        .CLK(CLK) );
  INVD1_DIFF U8 ( .A(\b[3]_d ), .AN(\b[3]_d_N ), .Y(n49_N), .CLK(CLK), .YN(n49) );
  INVD1_DIFF U9 ( .A(\a[1]_d ), .AN(\a[1]_d_N ), .Y(n36_N), .CLK(CLK), .YN(n36) );
  AND2 U10 ( .A(n49_N), .AN(n49), .B(n36_N), .BN(n36), .Y(n26), .YN(n26_N), 
        .CLK(CLK) );
  INVD1_DIFF U11 ( .A(\b[4]_d ), .AN(\b[4]_d_N ), .Y(n47_N), .CLK(CLK), .YN(
        n47) );
  INVD1_DIFF U12 ( .A(\a[0]_d ), .AN(\a[0]_d_N ), .Y(n29_N), .CLK(CLK), .YN(
        n29) );
  AND2 U13 ( .A(n47_N), .AN(n47), .B(n29_N), .BN(n29), .Y(n25), .YN(n25_N), 
        .CLK(CLK) );
  AND4 U14 ( .A(\b[0]_d ), .AN(\b[0]_d_N ), .B(\b[1]_d ), .BN(\b[1]_d_N ), .C(
        \a[2]_d ), .CN(\a[2]_d_N ), .D(\a[3]_d ), .DN(\a[3]_d_N ), .Y(n30), 
        .YN(n30_N), .CLK(CLK) );
  AND2 U15 ( .A(\b[0]_d ), .AN(\b[0]_d_N ), .B(\a[3]_d ), .BN(\a[3]_d_N ), .Y(
        n4_N), .YN(n4), .CLK(CLK) );
  AND2 U16 ( .A(\b[1]_d ), .AN(\b[1]_d_N ), .B(\a[2]_d ), .BN(\a[2]_d_N ), .Y(
        n3_N), .YN(n3), .CLK(CLK) );
  AOI21 U17 ( .A(n4), .AN(n4_N), .B(n3), .BN(n3_N), .C(n30), .CN(n30_N), .Y(
        n16_N), .YN(n16), .CLK(CLK) );
  AND2 U18 ( .A(\b[1]_d ), .AN(\b[1]_d_N ), .B(\a[1]_d ), .BN(\a[1]_d_N ), .Y(
        n7_N), .YN(n7), .CLK(CLK) );
  AND2 U19 ( .A(\a[0]_d ), .AN(\a[0]_d_N ), .B(\b[2]_d ), .BN(\b[2]_d_N ), .Y(
        n6_N), .YN(n6), .CLK(CLK) );
  AND4 U20 ( .A(\a[0]_d ), .AN(\a[0]_d_N ), .B(\b[1]_d ), .BN(\b[1]_d_N ), .C(
        \a[1]_d ), .CN(\a[1]_d_N ), .D(\b[2]_d ), .DN(\b[2]_d_N ), .Y(n13_N), 
        .YN(n13), .CLK(CLK) );
  INVD1_DIFF U21 ( .A(n13), .AN(n13_N), .Y(n5_N), .CLK(CLK), .YN(n5) );
  AOI21 U22 ( .A(n7), .AN(n7_N), .B(n6), .BN(n6_N), .C(n5), .CN(n5_N), .Y(
        n18_N), .YN(n18), .CLK(CLK) );
  INVD1_DIFF U23 ( .A(\b[0]_d ), .AN(\b[0]_d_N ), .Y(n22_N), .CLK(CLK), .YN(
        n22) );
  AND2 U24 ( .A(n46_N), .AN(n46), .B(n22_N), .BN(n22), .Y(n17), .YN(n17_N), 
        .CLK(CLK) );
  AND4 U25 ( .A(\a[0]_d ), .AN(\a[0]_d_N ), .B(\b[0]_d ), .BN(\b[0]_d_N ), .C(
        \b[1]_d ), .CN(\b[1]_d_N ), .D(\a[1]_d ), .DN(\a[1]_d_N ), .Y(n19), 
        .YN(n19_N), .CLK(CLK) );
  AND2 U26 ( .A(\a[1]_d ), .AN(\a[1]_d_N ), .B(\b[2]_d ), .BN(\b[2]_d_N ), .Y(
        n11_N), .YN(n11), .CLK(CLK) );
  INVD1_DIFF U27 ( .A(n11), .AN(n11_N), .Y(n10_N), .CLK(CLK), .YN(n10) );
  AND2 U28 ( .A(n49_N), .AN(n49), .B(n29_N), .BN(n29), .Y(n8), .YN(n8_N), 
        .CLK(CLK) );
  INVD1_DIFF U29 ( .A(n8), .AN(n8_N), .Y(n12_N), .CLK(CLK), .YN(n12) );
  MUX2 U30 ( .D0(n8), .D0N(n8_N), .D1(n12), .D1N(n12_N), .S(n13), .SN(n13_N), 
        .Y(n9_N), .YN(n9), .CLK(CLK) );
  MUX2 U31 ( .D0(n11), .D0N(n11_N), .D1(n10), .D1N(n10_N), .S(n9), .SN(n9_N), 
        .Y(n14_N), .YN(n14), .CLK(CLK) );
  AOI21 U32 ( .A(n13), .AN(n13_N), .B(n12), .BN(n12_N), .C(n11), .CN(n11_N), 
        .Y(n33_N), .YN(n33), .CLK(CLK) );
  FA32_DRD U33 ( .A(n16), .AN(n16_N), .B(n15), .BN(n15_N), .CI(n14), .CIN(
        n14_N), .SUM(\o[3]_d ), .SUMN(\o[3]_d_N ), .COUT(n34), .COUTN(n34_N), 
        .CLK(CLK) );
  FA32_DRD U34 ( .A(n18), .AN(n18_N), .B(n17), .BN(n17_N), .CI(n19), .CIN(
        n19_N), .SUM(\o[2]_d ), .SUMN(\o[2]_d_N ), .COUT(n15), .COUTN(n15_N), 
        .CLK(CLK) );
  AND2 U35 ( .A(\a[0]_d ), .AN(\a[0]_d_N ), .B(\b[1]_d ), .BN(\b[1]_d_N ), .Y(
        n21_N), .YN(n21), .CLK(CLK) );
  AND2 U36 ( .A(\b[0]_d ), .AN(\b[0]_d_N ), .B(\a[1]_d ), .BN(\a[1]_d_N ), .Y(
        n20_N), .YN(n20), .CLK(CLK) );
  AOI21 U37 ( .A(n21), .AN(n21_N), .B(n20), .BN(n20_N), .C(n19), .CN(n19_N), 
        .Y(\o[1]_d_N ), .YN(\o[1]_d ), .CLK(CLK) );
  AND2 U38 ( .A(n22_N), .AN(n22), .B(n29_N), .BN(n29), .Y(\o[0]_d ), .YN(
        \o[0]_d_N ), .CLK(CLK) );
  AND2 U39 ( .A(\b[0]_d ), .AN(\b[0]_d_N ), .B(\a[5]_d ), .BN(\a[5]_d_N ), .Y(
        n24_N), .YN(n24), .CLK(CLK) );
  AND2 U40 ( .A(\b[1]_d ), .AN(\b[1]_d_N ), .B(\a[4]_d ), .BN(\a[4]_d_N ), .Y(
        n23_N), .YN(n23), .CLK(CLK) );
  AND4 U41 ( .A(\b[0]_d ), .AN(\b[0]_d_N ), .B(\a[5]_d ), .BN(\a[5]_d_N ), .C(
        \b[1]_d ), .CN(\b[1]_d_N ), .D(\a[4]_d ), .DN(\a[4]_d_N ), .Y(n57), 
        .YN(n57_N), .CLK(CLK) );
  AOI21 U42 ( .A(n24), .AN(n24_N), .B(n23), .BN(n23_N), .C(n57), .CN(n57_N), 
        .Y(n44_N), .YN(n44), .CLK(CLK) );
  AND2 U43 ( .A(n47_N), .AN(n47), .B(n36_N), .BN(n36), .Y(n43), .YN(n43_N), 
        .CLK(CLK) );
  FA32_DRD U44 ( .A(n27), .AN(n27_N), .B(n26), .BN(n26_N), .CI(n25), .CIN(
        n25_N), .SUM(n31), .SUMN(n31_N), .COUT(n51), .COUTN(n51_N), .CLK(CLK)
         );
  INVD1_DIFF U45 ( .A(\a[3]_d ), .AN(\a[3]_d_N ), .Y(n48_N), .CLK(CLK), .YN(
        n48) );
  AND2 U46 ( .A(n48_N), .AN(n48), .B(n28_N), .BN(n28), .Y(n40), .YN(n40_N), 
        .CLK(CLK) );
  AND2 U47 ( .A(n49_N), .AN(n49), .B(n46_N), .BN(n46), .Y(n39), .YN(n39_N), 
        .CLK(CLK) );
  INVD1_DIFF U48 ( .A(\b[5]_d ), .AN(\b[5]_d_N ), .Y(n37_N), .CLK(CLK), .YN(
        n37) );
  AND2 U49 ( .A(n37_N), .AN(n37), .B(n29_N), .BN(n29), .Y(n38), .YN(n38_N), 
        .CLK(CLK) );
  FA32_DRD U50 ( .A(n32), .AN(n32_N), .B(n31), .BN(n31_N), .CI(n30), .CIN(
        n30_N), .SUM(n35), .SUMN(n35_N), .COUT(n54), .COUTN(n54_N), .CLK(CLK)
         );
  FA32_DRD U51 ( .A(n35), .AN(n35_N), .B(n34), .BN(n34_N), .CI(n33), .CIN(
        n33_N), .SUM(\o[4]_d ), .SUMN(\o[4]_d_N ), .COUT(n53), .COUTN(n53_N), 
        .CLK(CLK) );
  AND2 U52 ( .A(n37_N), .AN(n37), .B(n36_N), .BN(n36), .Y(n70), .YN(n70_N), 
        .CLK(CLK) );
  AND2 U53 ( .A(\a[4]_d ), .AN(\a[4]_d_N ), .B(\b[2]_d ), .BN(\b[2]_d_N ), .Y(
        n69), .YN(n69_N), .CLK(CLK) );
  AND2 U54 ( .A(\b[6]_d ), .AN(\b[6]_d_N ), .B(\a[0]_d ), .BN(\a[0]_d_N ), .Y(
        n68), .YN(n68_N), .CLK(CLK) );
  FA32_DRD U55 ( .A(n40), .AN(n40_N), .B(n39), .BN(n39_N), .CI(n38), .CIN(
        n38_N), .SUM(n50), .SUMN(n50_N), .COUT(n72), .COUTN(n72_N), .CLK(CLK)
         );
  AND2 U56 ( .A(\a[6]_d ), .AN(\a[6]_d_N ), .B(\b[0]_d ), .BN(\b[0]_d_N ), .Y(
        n42_N), .YN(n42), .CLK(CLK) );
  AND2 U57 ( .A(\a[5]_d ), .AN(\a[5]_d_N ), .B(\b[1]_d ), .BN(\b[1]_d_N ), .Y(
        n41_N), .YN(n41), .CLK(CLK) );
  AND4 U58 ( .A(\a[6]_d ), .AN(\a[6]_d_N ), .B(\b[0]_d ), .BN(\b[0]_d_N ), .C(
        \a[5]_d ), .CN(\a[5]_d_N ), .D(\b[1]_d ), .DN(\b[1]_d_N ), .Y(n74), 
        .YN(n74_N), .CLK(CLK) );
  AOI21 U59 ( .A(n42), .AN(n42_N), .B(n41), .BN(n41_N), .C(n74), .CN(n74_N), 
        .Y(n71_N), .YN(n71), .CLK(CLK) );
  FA32_DRD U60 ( .A(n45), .AN(n45_N), .B(n44), .BN(n44_N), .CI(n43), .CIN(
        n43_N), .SUM(n52), .SUMN(n52_N), .COUT(n81), .COUTN(n81_N), .CLK(CLK)
         );
  AND2 U61 ( .A(n47_N), .AN(n47), .B(n46_N), .BN(n46), .Y(n58), .YN(n58_N), 
        .CLK(CLK) );
  AND2 U62 ( .A(n49_N), .AN(n49), .B(n48_N), .BN(n48), .Y(n56), .YN(n56_N), 
        .CLK(CLK) );
  FA32_DRD U63 ( .A(n52), .AN(n52_N), .B(n51), .BN(n51_N), .CI(n50), .CIN(
        n50_N), .SUM(n55), .SUMN(n55_N), .COUT(n60), .COUTN(n60_N), .CLK(CLK)
         );
  FA32_DRD U64 ( .A(n55), .AN(n55_N), .B(n54), .BN(n54_N), .CI(n53), .CIN(
        n53_N), .SUM(\o[5]_d ), .SUMN(\o[5]_d_N ), .COUT(n59), .COUTN(n59_N), 
        .CLK(CLK) );
  FA32_DRD U65 ( .A(n58), .AN(n58_N), .B(n57), .BN(n57_N), .CI(n56), .CIN(
        n56_N), .SUM(n80), .SUMN(n80_N), .COUT(n66), .COUTN(n66_N), .CLK(CLK)
         );
  INVD1_DIFF U66 ( .A(n66), .AN(n66_N), .Y(n67_N), .CLK(CLK), .YN(n67) );
  FA32_DRD U67 ( .A(n61), .AN(n61_N), .B(n60), .BN(n60_N), .CI(n59), .CIN(
        n59_N), .SUM(\o[6]_d ), .SUMN(\o[6]_d_N ), .COUT(n64), .COUTN(n64_N), 
        .CLK(CLK) );
  INVD1_DIFF U68 ( .A(n64), .AN(n64_N), .Y(n63_N), .CLK(CLK), .YN(n63) );
  AND2 U69 ( .A(\a[0]_d ), .AN(\a[0]_d_N ), .B(\b[7]_d ), .BN(\b[7]_d_N ), .Y(
        n62_N), .YN(n62), .CLK(CLK) );
  MUX2 U70 ( .D0(n64), .D0N(n64_N), .D1(n63), .D1N(n63_N), .S(n62), .SN(n62_N), 
        .Y(n65_N), .YN(n65), .CLK(CLK) );
  MUX2 U71 ( .D0(n67), .D0N(n67_N), .D1(n66), .D1N(n66_N), .S(n65), .SN(n65_N), 
        .Y(n103_N), .YN(n103), .CLK(CLK) );
  FA32_DRD U72 ( .A(n70), .AN(n70_N), .B(n69), .BN(n69_N), .CI(n68), .CIN(
        n68_N), .SUM(n73), .SUMN(n73_N), .COUT(n78), .COUTN(n78_N), .CLK(CLK)
         );
  INVD1_DIFF U73 ( .A(n78), .AN(n78_N), .Y(n79_N), .CLK(CLK), .YN(n79) );
  FA32_DRD U74 ( .A(n73), .AN(n73_N), .B(n72), .BN(n72_N), .CI(n71), .CIN(
        n71_N), .SUM(n82), .SUMN(n82_N), .COUT(n75), .COUTN(n75_N), .CLK(CLK)
         );
  INVD1_DIFF U75 ( .A(n75), .AN(n75_N), .Y(n76_N), .CLK(CLK), .YN(n76) );
  MUX2 U76 ( .D0(n76), .D0N(n76_N), .D1(n75), .D1N(n75_N), .S(n74), .SN(n74_N), 
        .Y(n77_N), .YN(n77), .CLK(CLK) );
  MUX2 U77 ( .D0(n79), .D0N(n79_N), .D1(n78), .D1N(n78_N), .S(n77), .SN(n77_N), 
        .Y(n102_N), .YN(n102), .CLK(CLK) );
  FA32_DRD U78 ( .A(n82), .AN(n82_N), .B(n81), .BN(n81_N), .CI(n80), .CIN(
        n80_N), .SUM(n61), .SUMN(n61_N), .COUT(n85), .COUTN(n85_N), .CLK(CLK)
         );
  INVD1_DIFF U79 ( .A(n85), .AN(n85_N), .Y(n84_N), .CLK(CLK), .YN(n84) );
  AND2 U80 ( .A(\a[6]_d ), .AN(\a[6]_d_N ), .B(\b[1]_d ), .BN(\b[1]_d_N ), .Y(
        n83_N), .YN(n83), .CLK(CLK) );
  MUX2 U81 ( .D0(n85), .D0N(n85_N), .D1(n84), .D1N(n84_N), .S(n83), .SN(n83_N), 
        .Y(n100_N), .YN(n100), .CLK(CLK) );
  AND2 U82 ( .A(\b[2]_d ), .AN(\b[2]_d_N ), .B(\a[5]_d ), .BN(\a[5]_d_N ), .Y(
        n87_N), .YN(n87), .CLK(CLK) );
  INVD1_DIFF U83 ( .A(n87), .AN(n87_N), .Y(n88_N), .CLK(CLK), .YN(n88) );
  AND2 U84 ( .A(\a[1]_d ), .AN(\a[1]_d_N ), .B(\b[6]_d ), .BN(\b[6]_d_N ), .Y(
        n86_N), .YN(n86), .CLK(CLK) );
  MUX2 U85 ( .D0(n88), .D0N(n88_N), .D1(n87), .D1N(n87_N), .S(n86), .SN(n86_N), 
        .Y(n99_N), .YN(n99), .CLK(CLK) );
  AND2 U86 ( .A(\a[2]_d ), .AN(\a[2]_d_N ), .B(\b[5]_d ), .BN(\b[5]_d_N ), .Y(
        n97_N), .YN(n97), .CLK(CLK) );
  INVD1_DIFF U87 ( .A(n97), .AN(n97_N), .Y(n96_N), .CLK(CLK), .YN(n96) );
  AND2 U88 ( .A(\a[3]_d ), .AN(\a[3]_d_N ), .B(\b[4]_d ), .BN(\b[4]_d_N ), .Y(
        n94_N), .YN(n94), .CLK(CLK) );
  INVD1_DIFF U89 ( .A(n94), .AN(n94_N), .Y(n93_N), .CLK(CLK), .YN(n93) );
  AND2 U90 ( .A(\a[4]_d ), .AN(\a[4]_d_N ), .B(\b[3]_d ), .BN(\b[3]_d_N ), .Y(
        n90_N), .YN(n90), .CLK(CLK) );
  INVD1_DIFF U91 ( .A(n90), .AN(n90_N), .Y(n91_N), .CLK(CLK), .YN(n91) );
  AND2 U92 ( .A(\b[0]_d ), .AN(\b[0]_d_N ), .B(\a[7]_d ), .BN(\a[7]_d_N ), .Y(
        n89_N), .YN(n89), .CLK(CLK) );
  MUX2 U93 ( .D0(n91), .D0N(n91_N), .D1(n90), .D1N(n90_N), .S(n89), .SN(n89_N), 
        .Y(n92_N), .YN(n92), .CLK(CLK) );
  MUX2 U94 ( .D0(n94), .D0N(n94_N), .D1(n93), .D1N(n93_N), .S(n92), .SN(n92_N), 
        .Y(n95_N), .YN(n95), .CLK(CLK) );
  MUX2 U95 ( .D0(n97), .D0N(n97_N), .D1(n96), .D1N(n96_N), .S(n95), .SN(n95_N), 
        .Y(n98_N), .YN(n98), .CLK(CLK) );
  FA32_DRD U96 ( .A(n100), .AN(n100_N), .B(n99), .BN(n99_N), .CI(n98), .CIN(
        n98_N), .SUM(n101), .SUMN(n101_N), .CLK(CLK) );
  FA32_DRD U97 ( .A(n103), .AN(n103_N), .B(n102), .BN(n102_N), .CI(n101), 
        .CIN(n101_N), .SUM(\o[7]_d ), .SUMN(\o[7]_d_N ), .CLK(CLK) );
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

