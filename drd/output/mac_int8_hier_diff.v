/////////////////////////////////////////////////////////////
// Created by: Synopsys Design Compiler(R)
// Version   : U-2022.12-SP7-3
// Date      : Wed Mar 12 17:11:07 2025
/////////////////////////////////////////////////////////////


module mac_int8 ( a, b, c, o, CLK );
  input [7:0] a;
  input [7:0] b;
  input [7:0] c;
  output [7:0] o;
  input CLK;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         \a[7]_d , \a[6]_d , \a[5]_d , \a[4]_d , \a[3]_d , \a[2]_d , \a[1]_d ,
         \a[0]_d , \b[7]_d , \b[6]_d , \b[5]_d , \b[4]_d , \b[3]_d , \b[2]_d ,
         \b[1]_d , \b[0]_d , \c[7]_d , \c[6]_d , \c[5]_d , \c[4]_d , \c[3]_d ,
         \c[2]_d , \c[1]_d , \c[0]_d , \o[7]_d , \o[6]_d , \o[5]_d , \o[4]_d ,
         \o[3]_d , \o[2]_d , \o[1]_d , \o[0]_d , n104_N, n9_N, n18_N, n46_N,
         n52_N, n17_N, n48_N, n33_N, n16_N, n2_N, n1_N, n49_N, n38_N, n37_N,
         n36_N, n53_N, n32_N, n47_N, n31_N, n105_N, n30_N, n4_N, n3_N, n15_N,
         n12_N, n11_N, n10_N, n13_N, n6_N, n5_N, n24_N, n8_N, n7_N, n26_N,
         n25_N, n27_N, n22_N, n14_N, n20_N, n43_N, n19_N, n41_N, \o[3]_d_N ,
         n42_N, \o[2]_d_N , n21_N, \o[1]_d_N , n23_N, n29_N, n28_N, \o[0]_d_N ,
         n39_N, n56_N, n59_N, n58_N, n45_N, n57_N, n35_N, n34_N, n73_N, n54_N,
         n40_N, n63_N, n51_N, n50_N, n44_N, n66_N, \o[4]_d_N , n65_N, n108_N,
         n107_N, n106_N, n62_N, n78_N, n70_N, n69_N, n68_N, n64_N, n90_N,
         n55_N, n72_N, n61_N, n60_N, n97_N, n96_N, n71_N, n67_N, n75_N,
         \o[5]_d_N , n74_N, n77_N, n87_N, n88_N, n89_N, n84_N, n85_N,
         \o[6]_d_N , n81_N, n82_N, n91_N, n80_N, n83_N, n86_N, n122_N, n76_N,
         n94_N, n93_N, n92_N, n95_N, n121_N, n99_N, n100_N, n98_N, n119_N,
         n102_N, n103_N, n101_N, n118_N, n116_N, n79_N, n109_N, n110_N, n115_N,
         n112_N, n113_N, n111_N, n114_N, n117_N, n120_N, \o[7]_d_N ,
         \a[7]_d_N , \a[6]_d_N , \a[5]_d_N , \a[4]_d_N , \a[3]_d_N ,
         \a[2]_d_N , \a[1]_d_N , \a[0]_d_N , \b[7]_d_N , \b[6]_d_N ,
         \b[5]_d_N , \b[4]_d_N , \b[3]_d_N , \b[2]_d_N , \b[1]_d_N ,
         \b[0]_d_N , \c[7]_d_N , \c[6]_d_N , \c[5]_d_N , \c[4]_d_N ,
         \c[3]_d_N , \c[2]_d_N , \c[1]_d_N , \c[0]_d_N ;

  INVD1_DIFF U1 ( .A(\a[3]_d ), .AN(\a[3]_d_N ), .Y(n104_N), .CLK(CLK), .YN(
        n104) );
  INVD1_DIFF U2 ( .A(\b[0]_d ), .AN(\b[0]_d_N ), .Y(n9_N), .CLK(CLK), .YN(n9)
         );
  AND2 U3 ( .A(n104_N), .AN(n104), .B(n9_N), .BN(n9), .Y(n18), .YN(n18_N), 
        .CLK(CLK) );
  INVD1_DIFF U4 ( .A(\a[1]_d ), .AN(\a[1]_d_N ), .Y(n46_N), .CLK(CLK), .YN(n46) );
  INVD1_DIFF U5 ( .A(\b[2]_d ), .AN(\b[2]_d_N ), .Y(n52_N), .CLK(CLK), .YN(n52) );
  AND2 U6 ( .A(n46_N), .AN(n46), .B(n52_N), .BN(n52), .Y(n17), .YN(n17_N), 
        .CLK(CLK) );
  INVD1_DIFF U7 ( .A(\b[3]_d ), .AN(\b[3]_d_N ), .Y(n48_N), .CLK(CLK), .YN(n48) );
  INVD1_DIFF U8 ( .A(\a[0]_d ), .AN(\a[0]_d_N ), .Y(n33_N), .CLK(CLK), .YN(n33) );
  AND2 U9 ( .A(n48_N), .AN(n48), .B(n33_N), .BN(n33), .Y(n16), .YN(n16_N), 
        .CLK(CLK) );
  AND2 U10 ( .A(\b[1]_d ), .AN(\b[1]_d_N ), .B(\a[3]_d ), .BN(\a[3]_d_N ), .Y(
        n2_N), .YN(n2), .CLK(CLK) );
  INVD1_DIFF U11 ( .A(\c[4]_d ), .AN(\c[4]_d_N ), .Y(n1_N), .CLK(CLK), .YN(n1)
         );
  AND3 U12 ( .A(\b[1]_d ), .AN(\b[1]_d_N ), .B(\a[3]_d ), .BN(\a[3]_d_N ), .C(
        \c[4]_d ), .CN(\c[4]_d_N ), .Y(n49), .YN(n49_N), .CLK(CLK) );
  AOI21 U13 ( .A(n2), .AN(n2_N), .B(n1), .BN(n1_N), .C(n49), .CN(n49_N), .Y(
        n38_N), .YN(n38), .CLK(CLK) );
  AND2 U14 ( .A(n46_N), .AN(n46), .B(n48_N), .BN(n48), .Y(n37), .YN(n37_N), 
        .CLK(CLK) );
  AND3 U15 ( .A(\b[1]_d ), .AN(\b[1]_d_N ), .B(\a[2]_d ), .BN(\a[2]_d_N ), .C(
        \c[3]_d ), .CN(\c[3]_d_N ), .Y(n36), .YN(n36_N), .CLK(CLK) );
  INVD1_DIFF U16 ( .A(\a[4]_d ), .AN(\a[4]_d_N ), .Y(n53_N), .CLK(CLK), .YN(
        n53) );
  AND2 U17 ( .A(n9_N), .AN(n9), .B(n53_N), .BN(n53), .Y(n32), .YN(n32_N), 
        .CLK(CLK) );
  INVD1_DIFF U18 ( .A(\a[2]_d ), .AN(\a[2]_d_N ), .Y(n47_N), .CLK(CLK), .YN(
        n47) );
  AND2 U19 ( .A(n47_N), .AN(n47), .B(n52_N), .BN(n52), .Y(n31), .YN(n31_N), 
        .CLK(CLK) );
  INVD1_DIFF U20 ( .A(\b[4]_d ), .AN(\b[4]_d_N ), .Y(n105_N), .CLK(CLK), .YN(
        n105) );
  AND2 U21 ( .A(n105_N), .AN(n105), .B(n33_N), .BN(n33), .Y(n30), .YN(n30_N), 
        .CLK(CLK) );
  AND2 U22 ( .A(\b[1]_d ), .AN(\b[1]_d_N ), .B(\a[2]_d ), .BN(\a[2]_d_N ), .Y(
        n4_N), .YN(n4), .CLK(CLK) );
  INVD1_DIFF U23 ( .A(\c[3]_d ), .AN(\c[3]_d_N ), .Y(n3_N), .CLK(CLK), .YN(n3)
         );
  AOI21 U24 ( .A(n4), .AN(n4_N), .B(n3), .BN(n3_N), .C(n36), .CN(n36_N), .Y(
        n15_N), .YN(n15), .CLK(CLK) );
  AND2 U25 ( .A(n9_N), .AN(n9), .B(n47_N), .BN(n47), .Y(n12), .YN(n12_N), 
        .CLK(CLK) );
  AND3 U26 ( .A(\b[1]_d ), .AN(\b[1]_d_N ), .B(\a[0]_d ), .BN(\a[0]_d_N ), .C(
        \c[1]_d ), .CN(\c[1]_d_N ), .Y(n11), .YN(n11_N), .CLK(CLK) );
  AND2 U27 ( .A(\a[1]_d ), .AN(\a[1]_d_N ), .B(\b[1]_d ), .BN(\b[1]_d_N ), .Y(
        n10), .YN(n10_N), .CLK(CLK) );
  AND3 U28 ( .A(\b[2]_d ), .AN(\b[2]_d_N ), .B(\a[0]_d ), .BN(\a[0]_d_N ), .C(
        \c[2]_d ), .CN(\c[2]_d_N ), .Y(n13), .YN(n13_N), .CLK(CLK) );
  AND2 U29 ( .A(\b[2]_d ), .AN(\b[2]_d_N ), .B(\a[0]_d ), .BN(\a[0]_d_N ), .Y(
        n6_N), .YN(n6), .CLK(CLK) );
  INVD1_DIFF U30 ( .A(\c[2]_d ), .AN(\c[2]_d_N ), .Y(n5_N), .CLK(CLK), .YN(n5)
         );
  AOI21 U31 ( .A(n6), .AN(n6_N), .B(n5), .BN(n5_N), .C(n13), .CN(n13_N), .Y(
        n24_N), .YN(n24), .CLK(CLK) );
  AND2 U32 ( .A(\b[1]_d ), .AN(\b[1]_d_N ), .B(\a[0]_d ), .BN(\a[0]_d_N ), .Y(
        n8_N), .YN(n8), .CLK(CLK) );
  INVD1_DIFF U33 ( .A(\c[1]_d ), .AN(\c[1]_d_N ), .Y(n7_N), .CLK(CLK), .YN(n7)
         );
  AOI21 U34 ( .A(n8), .AN(n8_N), .B(n7), .BN(n7_N), .C(n11), .CN(n11_N), .Y(
        n26_N), .YN(n26), .CLK(CLK) );
  AND2 U35 ( .A(n46_N), .AN(n46), .B(n9_N), .BN(n9), .Y(n25), .YN(n25_N), 
        .CLK(CLK) );
  AND3 U36 ( .A(\a[0]_d ), .AN(\a[0]_d_N ), .B(\b[0]_d ), .BN(\b[0]_d_N ), .C(
        \c[0]_d ), .CN(\c[0]_d_N ), .Y(n27), .YN(n27_N), .CLK(CLK) );
  FA32_DRD U37 ( .A(n12), .AN(n12_N), .B(n11), .BN(n11_N), .CI(n10), .CIN(
        n10_N), .SUM(n22), .SUMN(n22_N), .COUT(n14), .COUTN(n14_N), .CLK(CLK)
         );
  FA32_DRD U38 ( .A(n15), .AN(n15_N), .B(n14), .BN(n14_N), .CI(n13), .CIN(
        n13_N), .SUM(n20), .SUMN(n20_N), .COUT(n43), .COUTN(n43_N), .CLK(CLK)
         );
  FA32_DRD U39 ( .A(n18), .AN(n18_N), .B(n17), .BN(n17_N), .CI(n16), .CIN(
        n16_N), .SUM(n19), .SUMN(n19_N), .COUT(n41), .COUTN(n41_N), .CLK(CLK)
         );
  FA32_DRD U40 ( .A(n21), .AN(n21_N), .B(n20), .BN(n20_N), .CI(n19), .CIN(
        n19_N), .SUM(\o[3]_d ), .SUMN(\o[3]_d_N ), .COUT(n42), .COUTN(n42_N), 
        .CLK(CLK) );
  FA32_DRD U41 ( .A(n24), .AN(n24_N), .B(n23), .BN(n23_N), .CI(n22), .CIN(
        n22_N), .SUM(\o[2]_d ), .SUMN(\o[2]_d_N ), .COUT(n21), .COUTN(n21_N), 
        .CLK(CLK) );
  FA32_DRD U42 ( .A(n26), .AN(n26_N), .B(n25), .BN(n25_N), .CI(n27), .CIN(
        n27_N), .SUM(\o[1]_d ), .SUMN(\o[1]_d_N ), .COUT(n23), .COUTN(n23_N), 
        .CLK(CLK) );
  AND2 U43 ( .A(\a[0]_d ), .AN(\a[0]_d_N ), .B(\b[0]_d ), .BN(\b[0]_d_N ), .Y(
        n29_N), .YN(n29), .CLK(CLK) );
  INVD1_DIFF U44 ( .A(\c[0]_d ), .AN(\c[0]_d_N ), .Y(n28_N), .CLK(CLK), .YN(
        n28) );
  AOI21 U45 ( .A(n29), .AN(n29_N), .B(n28), .BN(n28_N), .C(n27), .CN(n27_N), 
        .Y(\o[0]_d_N ), .YN(\o[0]_d ), .CLK(CLK) );
  FA32_DRD U46 ( .A(n32), .AN(n32_N), .B(n31), .BN(n31_N), .CI(n30), .CIN(
        n30_N), .SUM(n39), .SUMN(n39_N), .COUT(n56), .COUTN(n56_N), .CLK(CLK)
         );
  AND2 U47 ( .A(\b[0]_d ), .AN(\b[0]_d_N ), .B(\a[5]_d ), .BN(\a[5]_d_N ), .Y(
        n59), .YN(n59_N), .CLK(CLK) );
  AND2 U48 ( .A(n46_N), .AN(n46), .B(n105_N), .BN(n105), .Y(n58), .YN(n58_N), 
        .CLK(CLK) );
  INVD1_DIFF U49 ( .A(\b[5]_d ), .AN(\b[5]_d_N ), .Y(n45_N), .CLK(CLK), .YN(
        n45) );
  AND2 U50 ( .A(n45_N), .AN(n45), .B(n33_N), .BN(n33), .Y(n57), .YN(n57_N), 
        .CLK(CLK) );
  AND2 U51 ( .A(\b[1]_d ), .AN(\b[1]_d_N ), .B(\a[4]_d ), .BN(\a[4]_d_N ), .Y(
        n35_N), .YN(n35), .CLK(CLK) );
  INVD1_DIFF U52 ( .A(\c[5]_d ), .AN(\c[5]_d_N ), .Y(n34_N), .CLK(CLK), .YN(
        n34) );
  AND3 U53 ( .A(\b[1]_d ), .AN(\b[1]_d_N ), .B(\a[4]_d ), .BN(\a[4]_d_N ), .C(
        \c[5]_d ), .CN(\c[5]_d_N ), .Y(n73), .YN(n73_N), .CLK(CLK) );
  AOI21 U54 ( .A(n35), .AN(n35_N), .B(n34), .BN(n34_N), .C(n73), .CN(n73_N), 
        .Y(n54_N), .YN(n54), .CLK(CLK) );
  FA32_DRD U55 ( .A(n38), .AN(n38_N), .B(n37), .BN(n37_N), .CI(n36), .CIN(
        n36_N), .SUM(n40), .SUMN(n40_N), .COUT(n63), .COUTN(n63_N), .CLK(CLK)
         );
  AND2 U56 ( .A(n104_N), .AN(n104), .B(n52_N), .BN(n52), .Y(n51), .YN(n51_N), 
        .CLK(CLK) );
  AND2 U57 ( .A(n47_N), .AN(n47), .B(n48_N), .BN(n48), .Y(n50), .YN(n50_N), 
        .CLK(CLK) );
  FA32_DRD U58 ( .A(n41), .AN(n41_N), .B(n40), .BN(n40_N), .CI(n39), .CIN(
        n39_N), .SUM(n44), .SUMN(n44_N), .COUT(n66), .COUTN(n66_N), .CLK(CLK)
         );
  FA32_DRD U59 ( .A(n44), .AN(n44_N), .B(n43), .BN(n43_N), .CI(n42), .CIN(
        n42_N), .SUM(\o[4]_d ), .SUMN(\o[4]_d_N ), .COUT(n65), .COUTN(n65_N), 
        .CLK(CLK) );
  AND2 U60 ( .A(n46_N), .AN(n46), .B(n45_N), .BN(n45), .Y(n108), .YN(n108_N), 
        .CLK(CLK) );
  AND2 U61 ( .A(n105_N), .AN(n105), .B(n47_N), .BN(n47), .Y(n107), .YN(n107_N), 
        .CLK(CLK) );
  AND2 U62 ( .A(n104_N), .AN(n104), .B(n48_N), .BN(n48), .Y(n106), .YN(n106_N), 
        .CLK(CLK) );
  FA32_DRD U63 ( .A(n51), .AN(n51_N), .B(n50), .BN(n50_N), .CI(n49), .CIN(
        n49_N), .SUM(n62), .SUMN(n62_N), .COUT(n78), .COUTN(n78_N), .CLK(CLK)
         );
  AND2 U64 ( .A(n53_N), .AN(n53), .B(n52_N), .BN(n52), .Y(n70), .YN(n70_N), 
        .CLK(CLK) );
  AND2 U65 ( .A(\b[0]_d ), .AN(\b[0]_d_N ), .B(\a[6]_d ), .BN(\a[6]_d_N ), .Y(
        n69), .YN(n69_N), .CLK(CLK) );
  AND2 U66 ( .A(\b[6]_d ), .AN(\b[6]_d_N ), .B(\a[0]_d ), .BN(\a[0]_d_N ), .Y(
        n68), .YN(n68_N), .CLK(CLK) );
  FA32_DRD U67 ( .A(n56), .AN(n56_N), .B(n55), .BN(n55_N), .CI(n54), .CIN(
        n54_N), .SUM(n64), .SUMN(n64_N), .COUT(n90), .COUTN(n90_N), .CLK(CLK)
         );
  FA32_DRD U68 ( .A(n59), .AN(n59_N), .B(n58), .BN(n58_N), .CI(n57), .CIN(
        n57_N), .SUM(n55), .SUMN(n55_N), .COUT(n72), .COUTN(n72_N), .CLK(CLK)
         );
  AND2 U69 ( .A(\b[1]_d ), .AN(\b[1]_d_N ), .B(\a[5]_d ), .BN(\a[5]_d_N ), .Y(
        n61_N), .YN(n61), .CLK(CLK) );
  INVD1_DIFF U70 ( .A(\c[6]_d ), .AN(\c[6]_d_N ), .Y(n60_N), .CLK(CLK), .YN(
        n60) );
  AND3 U71 ( .A(\b[1]_d ), .AN(\b[1]_d_N ), .B(\a[5]_d ), .BN(\a[5]_d_N ), .C(
        \c[6]_d ), .CN(\c[6]_d_N ), .Y(n97_N), .YN(n97), .CLK(CLK) );
  INVD1_DIFF U72 ( .A(n97), .AN(n97_N), .Y(n96_N), .CLK(CLK), .YN(n96) );
  AOI21 U73 ( .A(n61), .AN(n61_N), .B(n60), .BN(n60_N), .C(n96), .CN(n96_N), 
        .Y(n71_N), .YN(n71), .CLK(CLK) );
  FA32_DRD U74 ( .A(n64), .AN(n64_N), .B(n63), .BN(n63_N), .CI(n62), .CIN(
        n62_N), .SUM(n67), .SUMN(n67_N), .COUT(n75), .COUTN(n75_N), .CLK(CLK)
         );
  FA32_DRD U75 ( .A(n67), .AN(n67_N), .B(n66), .BN(n66_N), .CI(n65), .CIN(
        n65_N), .SUM(\o[5]_d ), .SUMN(\o[5]_d_N ), .COUT(n74), .COUTN(n74_N), 
        .CLK(CLK) );
  FA32_DRD U76 ( .A(n70), .AN(n70_N), .B(n69), .BN(n69_N), .CI(n68), .CIN(
        n68_N), .SUM(n77), .SUMN(n77_N), .COUT(n87), .COUTN(n87_N), .CLK(CLK)
         );
  INVD1_DIFF U77 ( .A(n87), .AN(n87_N), .Y(n88_N), .CLK(CLK), .YN(n88) );
  FA32_DRD U78 ( .A(n73), .AN(n73_N), .B(n72), .BN(n72_N), .CI(n71), .CIN(
        n71_N), .SUM(n89), .SUMN(n89_N), .COUT(n84), .COUTN(n84_N), .CLK(CLK)
         );
  INVD1_DIFF U79 ( .A(n84), .AN(n84_N), .Y(n85_N), .CLK(CLK), .YN(n85) );
  FA32_DRD U80 ( .A(n76), .AN(n76_N), .B(n75), .BN(n75_N), .CI(n74), .CIN(
        n74_N), .SUM(\o[6]_d ), .SUMN(\o[6]_d_N ), .COUT(n81), .COUTN(n81_N), 
        .CLK(CLK) );
  INVD1_DIFF U81 ( .A(n81), .AN(n81_N), .Y(n82_N), .CLK(CLK), .YN(n82) );
  FA32_DRD U82 ( .A(n79), .AN(n79_N), .B(n78), .BN(n78_N), .CI(n77), .CIN(
        n77_N), .SUM(n91), .SUMN(n91_N), .COUT(n80), .COUTN(n80_N), .CLK(CLK)
         );
  MUX2 U83 ( .D0(n82), .D0N(n82_N), .D1(n81), .D1N(n81_N), .S(n80), .SN(n80_N), 
        .Y(n83_N), .YN(n83), .CLK(CLK) );
  MUX2 U84 ( .D0(n85), .D0N(n85_N), .D1(n84), .D1N(n84_N), .S(n83), .SN(n83_N), 
        .Y(n86_N), .YN(n86), .CLK(CLK) );
  MUX2 U85 ( .D0(n88), .D0N(n88_N), .D1(n87), .D1N(n87_N), .S(n86), .SN(n86_N), 
        .Y(n122_N), .YN(n122), .CLK(CLK) );
  FA32_DRD U86 ( .A(n91), .AN(n91_N), .B(n90), .BN(n90_N), .CI(n89), .CIN(
        n89_N), .SUM(n76), .SUMN(n76_N), .COUT(n94), .COUTN(n94_N), .CLK(CLK)
         );
  INVD1_DIFF U87 ( .A(n94), .AN(n94_N), .Y(n93_N), .CLK(CLK), .YN(n93) );
  AND2 U88 ( .A(\a[5]_d ), .AN(\a[5]_d_N ), .B(\b[2]_d ), .BN(\b[2]_d_N ), .Y(
        n92_N), .YN(n92), .CLK(CLK) );
  MUX2 U89 ( .D0(n94), .D0N(n94_N), .D1(n93), .D1N(n93_N), .S(n92), .SN(n92_N), 
        .Y(n95_N), .YN(n95), .CLK(CLK) );
  MUX2 U90 ( .D0(n97), .D0N(n97_N), .D1(n96), .D1N(n96_N), .S(n95), .SN(n95_N), 
        .Y(n121_N), .YN(n121), .CLK(CLK) );
  AND2 U91 ( .A(\b[5]_d ), .AN(\b[5]_d_N ), .B(\a[2]_d ), .BN(\a[2]_d_N ), .Y(
        n99_N), .YN(n99), .CLK(CLK) );
  INVD1_DIFF U92 ( .A(n99), .AN(n99_N), .Y(n100_N), .CLK(CLK), .YN(n100) );
  AND2 U93 ( .A(\b[1]_d ), .AN(\b[1]_d_N ), .B(\a[6]_d ), .BN(\a[6]_d_N ), .Y(
        n98_N), .YN(n98), .CLK(CLK) );
  MUX2 U94 ( .D0(n100), .D0N(n100_N), .D1(n99), .D1N(n99_N), .S(n98), .SN(
        n98_N), .Y(n119_N), .YN(n119), .CLK(CLK) );
  AND2 U95 ( .A(\b[3]_d ), .AN(\b[3]_d_N ), .B(\a[4]_d ), .BN(\a[4]_d_N ), .Y(
        n102_N), .YN(n102), .CLK(CLK) );
  INVD1_DIFF U96 ( .A(n102), .AN(n102_N), .Y(n103_N), .CLK(CLK), .YN(n103) );
  AND2 U97 ( .A(\a[0]_d ), .AN(\a[0]_d_N ), .B(\b[7]_d ), .BN(\b[7]_d_N ), .Y(
        n101_N), .YN(n101), .CLK(CLK) );
  MUX2 U98 ( .D0(n103), .D0N(n103_N), .D1(n102), .D1N(n102_N), .S(n101), .SN(
        n101_N), .Y(n118_N), .YN(n118), .CLK(CLK) );
  AND2 U99 ( .A(n105_N), .AN(n105), .B(n104_N), .BN(n104), .Y(n116), .YN(
        n116_N), .CLK(CLK) );
  FA32_DRD U100 ( .A(n108), .AN(n108_N), .B(n107), .BN(n107_N), .CI(n106), 
        .CIN(n106_N), .SUM(n79), .SUMN(n79_N), .COUT(n109), .COUTN(n109_N), 
        .CLK(CLK) );
  INVD1_DIFF U101 ( .A(n109), .AN(n109_N), .Y(n110_N), .CLK(CLK), .YN(n110) );
  MUX2 U102 ( .D0(n110), .D0N(n110_N), .D1(n109), .D1N(n109_N), .S(\c[7]_d ), 
        .SN(\c[7]_d_N ), .Y(n115_N), .YN(n115), .CLK(CLK) );
  AND2 U103 ( .A(\b[6]_d ), .AN(\b[6]_d_N ), .B(\a[1]_d ), .BN(\a[1]_d_N ), 
        .Y(n112_N), .YN(n112), .CLK(CLK) );
  INVD1_DIFF U104 ( .A(n112), .AN(n112_N), .Y(n113_N), .CLK(CLK), .YN(n113) );
  AND2 U105 ( .A(\b[0]_d ), .AN(\b[0]_d_N ), .B(\a[7]_d ), .BN(\a[7]_d_N ), 
        .Y(n111_N), .YN(n111), .CLK(CLK) );
  MUX2 U106 ( .D0(n113), .D0N(n113_N), .D1(n112), .D1N(n112_N), .S(n111), .SN(
        n111_N), .Y(n114_N), .YN(n114), .CLK(CLK) );
  FA32_DRD U107 ( .A(n116), .AN(n116_N), .B(n115), .BN(n115_N), .CI(n114), 
        .CIN(n114_N), .SUM(n117), .SUMN(n117_N), .CLK(CLK) );
  FA32_DRD U108 ( .A(n119), .AN(n119_N), .B(n118), .BN(n118_N), .CI(n117), 
        .CIN(n117_N), .SUM(n120), .SUMN(n120_N), .CLK(CLK) );
  FA32_DRD U109 ( .A(n122), .AN(n122_N), .B(n121), .BN(n121_N), .CI(n120), 
        .CIN(n120_N), .SUM(\o[7]_d ), .SUMN(\o[7]_d_N ), .CLK(CLK) );
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
  SE2DIFF c_7_conv ( .A(c[7]), .Y(\c[7]_d ), .YN(\c[7]_d_N ), .CLK(CLK) );
  SE2DIFF c_6_conv ( .A(c[6]), .Y(\c[6]_d ), .YN(\c[6]_d_N ), .CLK(CLK) );
  SE2DIFF c_5_conv ( .A(c[5]), .Y(\c[5]_d ), .YN(\c[5]_d_N ), .CLK(CLK) );
  SE2DIFF c_4_conv ( .A(c[4]), .Y(\c[4]_d ), .YN(\c[4]_d_N ), .CLK(CLK) );
  SE2DIFF c_3_conv ( .A(c[3]), .Y(\c[3]_d ), .YN(\c[3]_d_N ), .CLK(CLK) );
  SE2DIFF c_2_conv ( .A(c[2]), .Y(\c[2]_d ), .YN(\c[2]_d_N ), .CLK(CLK) );
  SE2DIFF c_1_conv ( .A(c[1]), .Y(\c[1]_d ), .YN(\c[1]_d_N ), .CLK(CLK) );
  SE2DIFF c_0_conv ( .A(c[0]), .Y(\c[0]_d ), .YN(\c[0]_d_N ), .CLK(CLK) );
  DIFF2SE o_7_conv ( .A(\o[7]_d ), .AN(\o[7]_d_N ), .Y(o[7]), .CLK(CLK) );
  DIFF2SE o_6_conv ( .A(\o[6]_d ), .AN(\o[6]_d_N ), .Y(o[6]), .CLK(CLK) );
  DIFF2SE o_5_conv ( .A(\o[5]_d ), .AN(\o[5]_d_N ), .Y(o[5]), .CLK(CLK) );
  DIFF2SE o_4_conv ( .A(\o[4]_d ), .AN(\o[4]_d_N ), .Y(o[4]), .CLK(CLK) );
  DIFF2SE o_3_conv ( .A(\o[3]_d ), .AN(\o[3]_d_N ), .Y(o[3]), .CLK(CLK) );
  DIFF2SE o_2_conv ( .A(\o[2]_d ), .AN(\o[2]_d_N ), .Y(o[2]), .CLK(CLK) );
  DIFF2SE o_1_conv ( .A(\o[1]_d ), .AN(\o[1]_d_N ), .Y(o[1]), .CLK(CLK) );
  DIFF2SE o_0_conv ( .A(\o[0]_d ), .AN(\o[0]_d_N ), .Y(o[0]), .CLK(CLK) );
endmodule

