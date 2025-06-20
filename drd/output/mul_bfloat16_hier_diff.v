/////////////////////////////////////////////////////////////
// Created by: Synopsys Design Compiler(R)
// Version   : U-2022.12-SP7-3
// Date      : Wed Mar 12 17:19:30 2025
/////////////////////////////////////////////////////////////



module mul_bfloat16 ( a, b, rnd, o, status, CLK );
  input [15:0] a;
  input [15:0] b;
  input [2:0] rnd;
  output [15:0] o;
  output [5:0] status;
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
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232,
         n233, n234, n235, n236, n237, n238, n239, n240, n241, n242, n243,
         n244, n245, n246, n247, n248, n249, n250, n251, n252, n253, n254,
         n255, n256, n257, n258, n259, n260, n261, n262, n263, n264, n265,
         n266, n267, n268, n269, n270, n271, n272, n273, n274, n275, n276,
         n277, n278, n279, n280, n281, n282, n283, n284, n285, n286, n287,
         n288, n289, n290, n291, n292, n293, n294, n295, n296, n297, n298,
         n299, n300, n301, n302, n303, n304, n305, n306, n307, n308, n309,
         n310, n311, n312, n313, n314, n315, n316, n317, n318, n319, n320,
         n321, n322, n323, n324, n325, n326, n327, n328, n329, n330, n331,
         n332, n333, n334, n335, n336, n337, n338, n339, n340, n341, n342,
         n343, n344, n345, n346, n347, n348, n349, n350, n351, n352, n353,
         n354, n355, n356, n357, n358, n359, n360, n361, n362, n363, n364,
         n365, n366, n367, n368, n369, n370, n371, n372, n373, n374, n375,
         n376, n377, n378, n379, n380, n381, n382, n383, n384, n385, n386,
         n387, n388, n389, n390, n391, n392, n393, n394, n395, n396, n397,
         n398, n399, n400, \a[15]_d , \a[14]_d , \a[13]_d , \a[12]_d ,
         \a[11]_d , \a[10]_d , \a[9]_d , \a[8]_d , \a[7]_d , \a[6]_d ,
         \a[5]_d , \a[4]_d , \a[3]_d , \a[2]_d , \a[1]_d , \a[0]_d , \b[15]_d ,
         \b[14]_d , \b[13]_d , \b[12]_d , \b[11]_d , \b[10]_d , \b[9]_d ,
         \b[8]_d , \b[7]_d , \b[6]_d , \b[5]_d , \b[4]_d , \b[3]_d , \b[2]_d ,
         \b[1]_d , \b[0]_d , \rnd[2]_d , \rnd[1]_d , \rnd[0]_d , \o[15]_d ,
         \o[14]_d , \o[13]_d , \o[12]_d , \o[11]_d , \o[10]_d , \o[9]_d ,
         \o[8]_d , \o[7]_d , \o[6]_d , \o[5]_d , \o[4]_d , \o[3]_d , \o[2]_d ,
         \o[1]_d , \o[0]_d , \status[5]_d , \status[4]_d , \status[3]_d ,
         \status[2]_d , \status[1]_d , \status[0]_d , n3_N, n2_N, n22_N, n17_N,
         n16_N, n15_N, n18_N, n19_N, n23_N, n21_N, n25_N, n24_N, n26_N, n1_N,
         n4_N, n382_N, n378_N, n14_N, n6_N, n5_N, n12_N, n11_N, n9_N, n8_N,
         n229_N, n7_N, n10_N, n260_N, n13_N, \o[15]_d_N , n33_N, n228_N, n34_N,
         n31_N, n20_N, n29_N, n40_N, n36_N, n38_N, n27_N, n361_N, n372_N,
         n299_N, n253_N, n41_N, n303_N, n30_N, n395_N, n35_N, n391_N, n252_N,
         n32_N, n397_N, n42_N, n321_N, n39_N, n325_N, n28_N, n322_N, n37_N,
         n255_N, n300_N, n362_N, n66_N, n202_N, n43_N, n201_N, n44_N, n49_N,
         n175_N, n68_N, n206_N, n48_N, n176_N, n47_N, n114_N, n57_N, n205_N,
         n45_N, n56_N, n50_N, n90_N, n62_N, n61_N, n60_N, n54_N, n53_N, n51_N,
         n174_N, n185_N, n179_N, n65_N, n52_N, n131_N, n127_N, n196_N, n72_N,
         n199_N, n71_N, n70_N, n58_N, n46_N, n74_N, n69_N, n115_N, n133_N,
         n73_N, n76_N, n64_N, n75_N, n55_N, n188_N, n184_N, n113_N, n83_N,
         n82_N, n81_N, n67_N, n80_N, n79_N, n78_N, n87_N, n101_N, n93_N, n92_N,
         n91_N, n99_N, n85_N, n59_N, n84_N, n77_N, n170_N, n63_N, n112_N,
         n111_N, n110_N, n97_N, n88_N, n96_N, n89_N, n168_N, n171_N, n167_N,
         n172_N, n120_N, n119_N, n118_N, n106_N, n100_N, n95_N, n94_N, n105_N,
         n103_N, n169_N, n102_N, n86_N, n194_N, n182_N, n166_N, n104_N, n109_N,
         n108_N, n117_N, n116_N, n121_N, n164_N, n98_N, n126_N, n125_N, n124_N,
         n161_N, n165_N, n160_N, n107_N, n123_N, n122_N, n146_N, n145_N,
         n162_N, n144_N, n157_N, n130_N, n128_N, n129_N, n134_N, n147_N,
         n132_N, n143_N, n149_N, n138_N, n136_N, n135_N, n137_N, n142_N,
         n140_N, n139_N, n141_N, n155_N, n150_N, n158_N, n148_N, n151_N,
         n154_N, n153_N, n152_N, n156_N, n231_N, n159_N, n163_N, n232_N,
         n234_N, n237_N, n193_N, n236_N, n192_N, n180_N, n191_N, n189_N,
         n187_N, n177_N, n250_N, n173_N, n247_N, n341_N, n249_N, n292_N,
         n190_N, n343_N, n178_N, n331_N, n183_N, n333_N, n186_N, n287_N,
         n181_N, n245_N, n195_N, n197_N, n266_N, n198_N, n200_N, n265_N,
         n209_N, n268_N, n214_N, n204_N, n215_N, n203_N, n210_N, n211_N,
         n217_N, n208_N, n216_N, n207_N, n212_N, n218_N, n213_N, n222_N,
         n221_N, n220_N, n219_N, n263_N, n223_N, n267_N, n240_N, n224_N,
         n225_N, n241_N, n226_N, n364_N, n376_N, n271_N, n282_N, n261_N,
         n242_N, n243_N, n283_N, n239_N, n309_N, n227_N, n308_N, n230_N,
         n396_N, n387_N, n316_N, n257_N, n233_N, n235_N, n238_N, n270_N,
         n244_N, n290_N, n280_N, n246_N, n251_N, n248_N, n352_N, n354_N,
         n351_N, n295_N, n380_N, n302_N, n254_N, n313_N, n256_N, n276_N,
         n275_N, \status[4]_d_N , n259_N, n258_N, n370_N, n278_N, n369_N,
         \status[3]_d_N , n262_N, \status[0]_d_N , \status[2]_d_N , n373_N,
         \status[1]_d_N , n264_N, n269_N, n284_N, n279_N, n272_N, n273_N,
         n368_N, n274_N, \status[5]_d_N , n360_N, n277_N, n296_N, n356_N,
         n281_N, n289_N, n297_N, n286_N, n285_N, n288_N, n291_N, n294_N,
         n293_N, n332_N, n329_N, n357_N, n298_N, \o[0]_d_N , n398_N, n385_N,
         n306_N, n394_N, n301_N, n366_N, n312_N, n371_N, n386_N, n305_N,
         n304_N, \o[10]_d_N , n310_N, n307_N, n311_N, \o[11]_d_N , n317_N,
         n324_N, n315_N, n314_N, \o[12]_d_N , n319_N, n318_N, n320_N,
         \o[13]_d_N , n326_N, n323_N, n327_N, \o[14]_d_N , n328_N, n336_N,
         n330_N, \o[1]_d_N , n335_N, n334_N, n342_N, n339_N, n337_N,
         \o[2]_d_N , n338_N, n346_N, n340_N, \o[3]_d_N , n345_N, n344_N,
         n353_N, n349_N, n347_N, \o[4]_d_N , n348_N, n355_N, n350_N,
         \o[5]_d_N , n358_N, n359_N, \o[6]_d_N , n365_N, n363_N, n367_N,
         n381_N, n375_N, n374_N, n377_N, n379_N, n384_N, n383_N, \o[7]_d_N ,
         n389_N, n393_N, n388_N, n390_N, \o[8]_d_N , n392_N, n400_N, n399_N,
         \o[9]_d_N , \a[15]_d_N , \a[14]_d_N , \a[13]_d_N , \a[12]_d_N ,
         \a[11]_d_N , \a[10]_d_N , \a[9]_d_N , \a[8]_d_N , \a[7]_d_N ,
         \a[6]_d_N , \a[5]_d_N , \a[4]_d_N , \a[3]_d_N , \a[2]_d_N ,
         \a[1]_d_N , \a[0]_d_N , \b[15]_d_N , \b[14]_d_N , \b[13]_d_N ,
         \b[12]_d_N , \b[11]_d_N , \b[10]_d_N , \b[9]_d_N , \b[8]_d_N ,
         \b[7]_d_N , \b[6]_d_N , \b[5]_d_N , \b[4]_d_N , \b[3]_d_N ,
         \b[2]_d_N , \b[1]_d_N , \b[0]_d_N , \rnd[2]_d_N , \rnd[1]_d_N ,
         \rnd[0]_d_N ;

  AND4 U3 ( .A(\b[12]_d ), .AN(\b[12]_d_N ), .B(\b[11]_d ), .BN(\b[11]_d_N ), 
        .C(\b[14]_d ), .CN(\b[14]_d_N ), .D(\b[13]_d ), .DN(\b[13]_d_N ), .Y(
        n3_N), .YN(n3), .CLK(CLK) );
  AND4 U4 ( .A(\b[7]_d ), .AN(\b[7]_d_N ), .B(\b[8]_d ), .BN(\b[8]_d_N ), .C(
        \b[10]_d ), .CN(\b[10]_d_N ), .D(\b[9]_d ), .DN(\b[9]_d_N ), .Y(n2_N), 
        .YN(n2), .CLK(CLK) );
  INVD1_DIFF U5 ( .A(\a[12]_d ), .AN(\a[12]_d_N ), .Y(n22_N), .CLK(CLK), .YN(
        n22) );
  INVD1_DIFF U6 ( .A(\a[10]_d ), .AN(\a[10]_d_N ), .Y(n17_N), .CLK(CLK), .YN(
        n17) );
  AND2 U7 ( .A(\a[7]_d ), .AN(\a[7]_d_N ), .B(\a[8]_d ), .BN(\a[8]_d_N ), .Y(
        n16_N), .YN(n16), .CLK(CLK) );
  INVD1_DIFF U8 ( .A(n16), .AN(n16_N), .Y(n15_N), .CLK(CLK), .YN(n15) );
  AND2 U9 ( .A(n15), .AN(n15_N), .B(\a[9]_d ), .BN(\a[9]_d_N ), .Y(n18_N), 
        .YN(n18), .CLK(CLK) );
  AND2 U10 ( .A(n17_N), .AN(n17), .B(n18_N), .BN(n18), .Y(n19), .YN(n19_N), 
        .CLK(CLK) );
  AND2 U11 ( .A(n19), .AN(n19_N), .B(\a[11]_d ), .BN(\a[11]_d_N ), .Y(n23_N), 
        .YN(n23), .CLK(CLK) );
  AND2 U12 ( .A(n22_N), .AN(n22), .B(n23_N), .BN(n23), .Y(n21), .YN(n21_N), 
        .CLK(CLK) );
  INVD1_DIFF U13 ( .A(n21), .AN(n21_N), .Y(n25_N), .CLK(CLK), .YN(n25) );
  INVD1_DIFF U14 ( .A(\a[13]_d ), .AN(\a[13]_d_N ), .Y(n24_N), .CLK(CLK), .YN(
        n24) );
  AND2 U15 ( .A(n25_N), .AN(n25), .B(n24_N), .BN(n24), .Y(n26), .YN(n26_N), 
        .CLK(CLK) );
  INVD1_DIFF U16 ( .A(n26), .AN(n26_N), .Y(n1_N), .CLK(CLK), .YN(n1) );
  INVD1_DIFF U17 ( .A(\a[14]_d ), .AN(\a[14]_d_N ), .Y(n4_N), .CLK(CLK), .YN(
        n4) );
  OAI22 U18 ( .A(n3), .AN(n3_N), .B(n2), .BN(n2_N), .C(n1), .CN(n1_N), .D(n4), 
        .DN(n4_N), .Y(n382_N), .YN(n382), .CLK(CLK) );
  INVD1_DIFF U19 ( .A(n382), .AN(n382_N), .Y(n378_N), .CLK(CLK), .YN(n378) );
  AND2 U20 ( .A(\a[7]_d_N ), .AN(\a[7]_d ), .B(\a[8]_d_N ), .BN(\a[8]_d ), .Y(
        n14), .YN(n14_N), .CLK(CLK) );
  AND2 U21 ( .A(\a[9]_d_N ), .AN(\a[9]_d ), .B(\a[10]_d_N ), .BN(\a[10]_d ), 
        .Y(n6), .YN(n6_N), .CLK(CLK) );
  AND2 U22 ( .A(\a[11]_d_N ), .AN(\a[11]_d ), .B(\a[12]_d_N ), .BN(\a[12]_d ), 
        .Y(n5), .YN(n5_N), .CLK(CLK) );
  AND4 U23 ( .A(n6), .AN(n6_N), .B(n5), .BN(n5_N), .C(n24), .CN(n24_N), .D(n4), 
        .DN(n4_N), .Y(n12), .YN(n12_N), .CLK(CLK) );
  AND2 U24 ( .A(\b[10]_d_N ), .AN(\b[10]_d ), .B(\b[9]_d_N ), .BN(\b[9]_d ), 
        .Y(n11), .YN(n11_N), .CLK(CLK) );
  AND2 U25 ( .A(\b[12]_d_N ), .AN(\b[12]_d ), .B(\b[11]_d_N ), .BN(\b[11]_d ), 
        .Y(n9), .YN(n9_N), .CLK(CLK) );
  AND2 U26 ( .A(\b[14]_d_N ), .AN(\b[14]_d ), .B(\b[13]_d_N ), .BN(\b[13]_d ), 
        .Y(n8), .YN(n8_N), .CLK(CLK) );
  INVD1_DIFF U27 ( .A(\b[7]_d ), .AN(\b[7]_d_N ), .Y(n229_N), .CLK(CLK), .YN(
        n229) );
  INVD1_DIFF U28 ( .A(\b[8]_d ), .AN(\b[8]_d_N ), .Y(n7_N), .CLK(CLK), .YN(n7)
         );
  AND4 U29 ( .A(n9), .AN(n9_N), .B(n8), .BN(n8_N), .C(n229), .CN(n229_N), .D(
        n7), .DN(n7_N), .Y(n10), .YN(n10_N), .CLK(CLK) );
  AOI22 U30 ( .A(n14), .AN(n14_N), .B(n12), .BN(n12_N), .C(n11), .CN(n11_N), 
        .D(n10), .DN(n10_N), .Y(n260_N), .YN(n260), .CLK(CLK) );
  OAI22 U31 ( .A(n378), .AN(n378_N), .B(n260), .BN(n260_N), .C(\a[15]_d ), 
        .CN(\a[15]_d_N ), .D(\b[15]_d ), .DN(\b[15]_d_N ), .Y(n13_N), .YN(n13), 
        .CLK(CLK) );
  AOI21 U32 ( .A(\b[15]_d ), .AN(\b[15]_d_N ), .B(\a[15]_d ), .BN(\a[15]_d_N ), 
        .C(n13), .CN(n13_N), .Y(\o[15]_d_N ), .YN(\o[15]_d ), .CLK(CLK) );
  AND2 U33 ( .A(n15_N), .AN(n15), .B(n14_N), .BN(n14), .Y(n33), .YN(n33_N), 
        .CLK(CLK) );
  AND2 U34 ( .A(n229_N), .AN(n229), .B(\a[7]_d_N ), .BN(\a[7]_d ), .Y(n228), 
        .YN(n228_N), .CLK(CLK) );
  MUX2 U35 ( .D0(n16), .D0N(n16_N), .D1(n15), .D1N(n15_N), .S(\a[9]_d ), .SN(
        \a[9]_d_N ), .Y(n34_N), .YN(n34), .CLK(CLK) );
  AOI21 U36 ( .A(n18), .AN(n18_N), .B(n17), .BN(n17_N), .C(n19), .CN(n19_N), 
        .Y(n31_N), .YN(n31), .CLK(CLK) );
  INVD1_DIFF U37 ( .A(n19), .AN(n19_N), .Y(n20_N), .CLK(CLK), .YN(n20) );
  MUX2 U38 ( .D0(n20), .D0N(n20_N), .D1(n19), .D1N(n19_N), .S(\a[11]_d ), .SN(
        \a[11]_d_N ), .Y(n29_N), .YN(n29), .CLK(CLK) );
  AOI21 U39 ( .A(n23), .AN(n23_N), .B(n22), .BN(n22_N), .C(n21), .CN(n21_N), 
        .Y(n40_N), .YN(n40), .CLK(CLK) );
  AOI21 U40 ( .A(n25), .AN(n25_N), .B(n24), .BN(n24_N), .C(n26), .CN(n26_N), 
        .Y(n36_N), .YN(n36), .CLK(CLK) );
  AND2 U41 ( .A(n26_N), .AN(n26), .B(\a[14]_d_N ), .BN(\a[14]_d ), .Y(n38), 
        .YN(n38_N), .CLK(CLK) );
  INVD1_DIFF U42 ( .A(n28), .AN(n28_N), .Y(n27_N), .CLK(CLK), .YN(n27) );
  AND2 U43 ( .A(n27), .AN(n27_N), .B(n38), .BN(n38_N), .Y(n361_N), .YN(n361), 
        .CLK(CLK) );
  AND2 U44 ( .A(n28), .AN(n28_N), .B(\a[14]_d ), .BN(\a[14]_d_N ), .Y(n372_N), 
        .YN(n372), .CLK(CLK) );
  AND2 U45 ( .A(n372), .AN(n372_N), .B(n361), .BN(n361_N), .Y(n299), .YN(
        n299_N), .CLK(CLK) );
  FA32_DRD U46 ( .A(\b[11]_d ), .AN(\b[11]_d_N ), .B(n30), .BN(n30_N), .CI(n29), .CIN(n29_N), .SUM(n253), .SUMN(n253_N), .COUT(n41), .COUTN(n41_N), .CLK(CLK)
         );
  FA32_DRD U47 ( .A(\b[10]_d ), .AN(\b[10]_d_N ), .B(n32), .BN(n32_N), .CI(n31), .CIN(n31_N), .SUM(n303), .SUMN(n303_N), .COUT(n30), .COUTN(n30_N), .CLK(CLK)
         );
  FA32_DRD U48 ( .A(\b[8]_d ), .AN(\b[8]_d_N ), .B(n33), .BN(n33_N), .CI(n228), 
        .CIN(n228_N), .SUM(n395), .SUMN(n395_N), .COUT(n35), .COUTN(n35_N), 
        .CLK(CLK) );
  INVD1_DIFF U49 ( .A(n395), .AN(n395_N), .Y(n391_N), .CLK(CLK), .YN(n391) );
  FA32_DRD U50 ( .A(\b[9]_d ), .AN(\b[9]_d_N ), .B(n35), .BN(n35_N), .CI(n34), 
        .CIN(n34_N), .SUM(n252), .SUMN(n252_N), .COUT(n32), .COUTN(n32_N), 
        .CLK(CLK) );
  INVD1_DIFF U51 ( .A(n252), .AN(n252_N), .Y(n397_N), .CLK(CLK), .YN(n397) );
  AND2 U52 ( .A(n391_N), .AN(n391), .B(n397_N), .BN(n397), .Y(n42), .YN(n42_N), 
        .CLK(CLK) );
  FA32_DRD U53 ( .A(\b[13]_d ), .AN(\b[13]_d_N ), .B(n37), .BN(n37_N), .CI(n36), .CIN(n36_N), .SUM(n321), .SUMN(n321_N), .COUT(n39), .COUTN(n39_N), .CLK(CLK)
         );
  FA32_DRD U54 ( .A(\b[14]_d ), .AN(\b[14]_d_N ), .B(n39), .BN(n39_N), .CI(n38), .CIN(n38_N), .SUM(n325), .SUMN(n325_N), .COUT(n28), .COUTN(n28_N), .CLK(CLK)
         );
  FA32_DRD U55 ( .A(\b[12]_d ), .AN(\b[12]_d_N ), .B(n41), .BN(n41_N), .CI(n40), .CIN(n40_N), .SUM(n322), .SUMN(n322_N), .COUT(n37), .COUTN(n37_N), .CLK(CLK)
         );
  AND3 U56 ( .A(n321), .AN(n321_N), .B(n325), .BN(n325_N), .C(n322), .CN(
        n322_N), .Y(n255), .YN(n255_N), .CLK(CLK) );
  AND4 U57 ( .A(n253), .AN(n253_N), .B(n303), .BN(n303_N), .C(n42), .CN(n42_N), 
        .D(n255), .DN(n255_N), .Y(n300_N), .YN(n300), .CLK(CLK) );
  AND2 U58 ( .A(n300), .AN(n300_N), .B(n299), .BN(n299_N), .Y(n362_N), .YN(
        n362), .CLK(CLK) );
  INVD1_DIFF U59 ( .A(\a[6]_d ), .AN(\a[6]_d_N ), .Y(n66_N), .CLK(CLK), .YN(
        n66) );
  INVD1_DIFF U60 ( .A(\b[5]_d ), .AN(\b[5]_d_N ), .Y(n202_N), .CLK(CLK), .YN(
        n202) );
  AND2 U61 ( .A(n66_N), .AN(n66), .B(n202_N), .BN(n202), .Y(n43), .YN(n43_N), 
        .CLK(CLK) );
  INVD1_DIFF U62 ( .A(\b[4]_d ), .AN(\b[4]_d_N ), .Y(n201_N), .CLK(CLK), .YN(
        n201) );
  AND2 U63 ( .A(n66_N), .AN(n66), .B(n201_N), .BN(n201), .Y(n44), .YN(n44_N), 
        .CLK(CLK) );
  FA32_DRD U64 ( .A(\a[4]_d ), .AN(\a[4]_d_N ), .B(\b[4]_d ), .BN(\b[4]_d_N ), 
        .CI(n43), .CIN(n43_N), .SUM(n49), .SUMN(n49_N), .COUT(n175), .COUTN(
        n175_N), .CLK(CLK) );
  INVD1_DIFF U65 ( .A(\b[6]_d ), .AN(\b[6]_d_N ), .Y(n68_N), .CLK(CLK), .YN(
        n68) );
  INVD1_DIFF U66 ( .A(\a[5]_d ), .AN(\a[5]_d_N ), .Y(n206_N), .CLK(CLK), .YN(
        n206) );
  AND2 U67 ( .A(n68_N), .AN(n68), .B(n206_N), .BN(n206), .Y(n48), .YN(n48_N), 
        .CLK(CLK) );
  AND2 U68 ( .A(n68_N), .AN(n68), .B(n66_N), .BN(n66), .Y(n176), .YN(n176_N), 
        .CLK(CLK) );
  AND2 U69 ( .A(n202_N), .AN(n202), .B(n206_N), .BN(n206), .Y(n47), .YN(n47_N), 
        .CLK(CLK) );
  INVD1_DIFF U70 ( .A(\b[3]_d ), .AN(\b[3]_d_N ), .Y(n114_N), .CLK(CLK), .YN(
        n114) );
  AND2 U71 ( .A(n66_N), .AN(n66), .B(n114_N), .BN(n114), .Y(n57), .YN(n57_N), 
        .CLK(CLK) );
  INVD1_DIFF U72 ( .A(\a[4]_d ), .AN(\a[4]_d_N ), .Y(n205_N), .CLK(CLK), .YN(
        n205) );
  AND2 U73 ( .A(n68_N), .AN(n68), .B(n205_N), .BN(n205), .Y(n45), .YN(n45_N), 
        .CLK(CLK) );
  FA32_DRD U74 ( .A(\a[3]_d ), .AN(\a[3]_d_N ), .B(\b[3]_d ), .BN(\b[3]_d_N ), 
        .CI(n44), .CIN(n44_N), .SUM(n56), .SUMN(n56_N), .COUT(n50), .COUTN(
        n50_N), .CLK(CLK) );
  INVD1_DIFF U75 ( .A(\a[3]_d ), .AN(\a[3]_d_N ), .Y(n90_N), .CLK(CLK), .YN(
        n90) );
  AND2 U76 ( .A(n68_N), .AN(n68), .B(n90_N), .BN(n90), .Y(n62), .YN(n62_N), 
        .CLK(CLK) );
  AND2 U77 ( .A(n202_N), .AN(n202), .B(n205_N), .BN(n205), .Y(n61), .YN(n61_N), 
        .CLK(CLK) );
  AND2 U78 ( .A(n201_N), .AN(n201), .B(n206_N), .BN(n206), .Y(n60), .YN(n60_N), 
        .CLK(CLK) );
  FA32_DRD U79 ( .A(n47), .AN(n47_N), .B(n46), .BN(n46_N), .CI(n45), .CIN(
        n45_N), .SUM(n54), .SUMN(n54_N), .COUT(n53), .COUTN(n53_N), .CLK(CLK)
         );
  FA32_DRD U80 ( .A(n50), .AN(n50_N), .B(n49), .BN(n49_N), .CI(n48), .CIN(
        n48_N), .SUM(n51), .SUMN(n51_N), .COUT(n174), .COUTN(n174_N), .CLK(CLK) );
  FA32_DRD U81 ( .A(n53), .AN(n53_N), .B(n52), .BN(n52_N), .CI(n51), .CIN(
        n51_N), .SUM(n185), .SUMN(n185_N), .COUT(n179), .COUTN(n179_N), .CLK(
        CLK) );
  FA32_DRD U82 ( .A(n56), .AN(n56_N), .B(n55), .BN(n55_N), .CI(n54), .CIN(
        n54_N), .SUM(n65), .SUMN(n65_N), .COUT(n52), .COUTN(n52_N), .CLK(CLK)
         );
  AND2 U83 ( .A(\b[1]_d ), .AN(\b[1]_d_N ), .B(\a[1]_d ), .BN(\a[1]_d_N ), .Y(
        n131_N), .YN(n131), .CLK(CLK) );
  INVD1_DIFF U84 ( .A(n131), .AN(n131_N), .Y(n127_N), .CLK(CLK), .YN(n127) );
  INVD1_DIFF U85 ( .A(\b[2]_d ), .AN(\b[2]_d_N ), .Y(n196_N), .CLK(CLK), .YN(
        n196) );
  AND2 U86 ( .A(n66_N), .AN(n66), .B(n196_N), .BN(n196), .Y(n72), .YN(n72_N), 
        .CLK(CLK) );
  INVD1_DIFF U87 ( .A(\a[2]_d ), .AN(\a[2]_d_N ), .Y(n199_N), .CLK(CLK), .YN(
        n199) );
  AND2 U88 ( .A(n68_N), .AN(n68), .B(n199_N), .BN(n199), .Y(n71), .YN(n71_N), 
        .CLK(CLK) );
  AND2 U89 ( .A(n114_N), .AN(n114), .B(n206_N), .BN(n206), .Y(n70), .YN(n70_N), 
        .CLK(CLK) );
  FA32_DRD U90 ( .A(\a[2]_d ), .AN(\a[2]_d_N ), .B(\b[2]_d ), .BN(\b[2]_d_N ), 
        .CI(n57), .CIN(n57_N), .SUM(n58), .SUMN(n58_N), .COUT(n46), .COUTN(
        n46_N), .CLK(CLK) );
  AND2 U91 ( .A(n201_N), .AN(n201), .B(n205_N), .BN(n205), .Y(n74), .YN(n74_N), 
        .CLK(CLK) );
  INVD1_DIFF U92 ( .A(\b[0]_d ), .AN(\b[0]_d_N ), .Y(n69_N), .CLK(CLK), .YN(
        n69) );
  INVD1_DIFF U93 ( .A(\a[0]_d ), .AN(\a[0]_d_N ), .Y(n115_N), .CLK(CLK), .YN(
        n115) );
  AND2 U94 ( .A(n69_N), .AN(n69), .B(n115_N), .BN(n115), .Y(n133), .YN(n133_N), 
        .CLK(CLK) );
  AND2 U95 ( .A(n202_N), .AN(n202), .B(n90_N), .BN(n90), .Y(n73), .YN(n73_N), 
        .CLK(CLK) );
  FA32_DRD U96 ( .A(n127), .AN(n127_N), .B(n59), .BN(n59_N), .CI(n58), .CIN(
        n58_N), .SUM(n76), .SUMN(n76_N), .COUT(n64), .COUTN(n64_N), .CLK(CLK)
         );
  FA32_DRD U97 ( .A(n62), .AN(n62_N), .B(n61), .BN(n61_N), .CI(n60), .CIN(
        n60_N), .SUM(n75), .SUMN(n75_N), .COUT(n55), .COUTN(n55_N), .CLK(CLK)
         );
  FA32_DRD U98 ( .A(n65), .AN(n65_N), .B(n64), .BN(n64_N), .CI(n63), .CIN(
        n63_N), .SUM(n188), .SUMN(n188_N), .COUT(n184), .COUTN(n184_N), .CLK(
        CLK) );
  INVD1_DIFF U99 ( .A(\a[1]_d ), .AN(\a[1]_d_N ), .Y(n113_N), .CLK(CLK), .YN(
        n113) );
  AND2 U100 ( .A(n68_N), .AN(n68), .B(n113_N), .BN(n113), .Y(n83), .YN(n83_N), 
        .CLK(CLK) );
  AND2 U101 ( .A(n202_N), .AN(n202), .B(n199_N), .BN(n199), .Y(n82), .YN(n82_N), .CLK(CLK) );
  AND2 U102 ( .A(n114_N), .AN(n114), .B(n205_N), .BN(n205), .Y(n81), .YN(n81_N), .CLK(CLK) );
  INVD1_DIFF U103 ( .A(\b[1]_d ), .AN(\b[1]_d_N ), .Y(n67_N), .CLK(CLK), .YN(
        n67) );
  AND2 U104 ( .A(n66_N), .AN(n66), .B(n67_N), .BN(n67), .Y(n80), .YN(n80_N), 
        .CLK(CLK) );
  AND2 U105 ( .A(n196_N), .AN(n196), .B(n206_N), .BN(n206), .Y(n79), .YN(n79_N), .CLK(CLK) );
  AND2 U106 ( .A(n201_N), .AN(n201), .B(n90_N), .BN(n90), .Y(n78), .YN(n78_N), 
        .CLK(CLK) );
  AOI21 U107 ( .A(n113), .AN(n113_N), .B(n67), .BN(n67_N), .C(n127), .CN(
        n127_N), .Y(n87_N), .YN(n87), .CLK(CLK) );
  AND4 U108 ( .A(\a[5]_d ), .AN(\a[5]_d_N ), .B(\b[0]_d ), .BN(\b[0]_d_N ), 
        .C(\b[1]_d ), .CN(\b[1]_d_N ), .D(\a[6]_d ), .DN(\a[6]_d_N ), .Y(n101), 
        .YN(n101_N), .CLK(CLK) );
  AND2 U109 ( .A(n196_N), .AN(n196), .B(n205_N), .BN(n205), .Y(n93), .YN(n93_N), .CLK(CLK) );
  AND2 U110 ( .A(n202_N), .AN(n202), .B(n113_N), .BN(n113), .Y(n92), .YN(n92_N), .CLK(CLK) );
  AND2 U111 ( .A(n68_N), .AN(n68), .B(n115_N), .BN(n115), .Y(n91), .YN(n91_N), 
        .CLK(CLK) );
  AOI21 U112 ( .A(n115), .AN(n115_N), .B(n69), .BN(n69_N), .C(n133), .CN(
        n133_N), .Y(n99_N), .YN(n99), .CLK(CLK) );
  FA32_DRD U113 ( .A(n72), .AN(n72_N), .B(n71), .BN(n71_N), .CI(n70), .CIN(
        n70_N), .SUM(n85), .SUMN(n85_N), .COUT(n59), .COUTN(n59_N), .CLK(CLK)
         );
  FA32_DRD U114 ( .A(n74), .AN(n74_N), .B(n133), .BN(n133_N), .CI(n73), .CIN(
        n73_N), .SUM(n84), .SUMN(n84_N), .COUT(n77), .COUTN(n77_N), .CLK(CLK)
         );
  FA32_DRD U115 ( .A(n77), .AN(n77_N), .B(n76), .BN(n76_N), .CI(n75), .CIN(
        n75_N), .SUM(n170), .SUMN(n170_N), .COUT(n63), .COUTN(n63_N), .CLK(CLK) );
  AND2 U116 ( .A(n114_N), .AN(n114), .B(n90_N), .BN(n90), .Y(n112), .YN(n112_N), .CLK(CLK) );
  AND4 U117 ( .A(\a[4]_d ), .AN(\a[4]_d_N ), .B(\a[5]_d ), .BN(\a[5]_d_N ), 
        .C(\b[0]_d ), .CN(\b[0]_d_N ), .D(\b[1]_d ), .DN(\b[1]_d_N ), .Y(n111), 
        .YN(n111_N), .CLK(CLK) );
  AND2 U118 ( .A(n201_N), .AN(n201), .B(n199_N), .BN(n199), .Y(n110), .YN(
        n110_N), .CLK(CLK) );
  FA32_DRD U119 ( .A(n80), .AN(n80_N), .B(n79), .BN(n79_N), .CI(n78), .CIN(
        n78_N), .SUM(n97), .SUMN(n97_N), .COUT(n88), .COUTN(n88_N), .CLK(CLK)
         );
  FA32_DRD U120 ( .A(n83), .AN(n83_N), .B(n82), .BN(n82_N), .CI(n81), .CIN(
        n81_N), .SUM(n96), .SUMN(n96_N), .COUT(n89), .COUTN(n89_N), .CLK(CLK)
         );
  FA32_DRD U121 ( .A(n86), .AN(n86_N), .B(n85), .BN(n85_N), .CI(n84), .CIN(
        n84_N), .SUM(n168), .SUMN(n168_N), .COUT(n171), .COUTN(n171_N), .CLK(
        CLK) );
  FA32_DRD U122 ( .A(n89), .AN(n89_N), .B(n88), .BN(n88_N), .CI(n87), .CIN(
        n87_N), .SUM(n167), .SUMN(n167_N), .COUT(n172), .COUTN(n172_N), .CLK(
        CLK) );
  AND2 U123 ( .A(n196_N), .AN(n196), .B(n90_N), .BN(n90), .Y(n120), .YN(n120_N), .CLK(CLK) );
  AND2 U124 ( .A(n114_N), .AN(n114), .B(n199_N), .BN(n199), .Y(n119), .YN(
        n119_N), .CLK(CLK) );
  AND2 U125 ( .A(n202_N), .AN(n202), .B(n115_N), .BN(n115), .Y(n118), .YN(
        n118_N), .CLK(CLK) );
  FA32_DRD U126 ( .A(n93), .AN(n93_N), .B(n92), .BN(n92_N), .CI(n91), .CIN(
        n91_N), .SUM(n106), .SUMN(n106_N), .COUT(n100), .COUTN(n100_N), .CLK(
        CLK) );
  AND2 U127 ( .A(\b[0]_d ), .AN(\b[0]_d_N ), .B(\a[6]_d ), .BN(\a[6]_d_N ), 
        .Y(n95_N), .YN(n95), .CLK(CLK) );
  AND2 U128 ( .A(\a[5]_d ), .AN(\a[5]_d_N ), .B(\b[1]_d ), .BN(\b[1]_d_N ), 
        .Y(n94_N), .YN(n94), .CLK(CLK) );
  AOI21 U129 ( .A(n95), .AN(n95_N), .B(n94), .BN(n94_N), .C(n101), .CN(n101_N), 
        .Y(n105_N), .YN(n105), .CLK(CLK) );
  FA32_DRD U130 ( .A(n98), .AN(n98_N), .B(n97), .BN(n97_N), .CI(n96), .CIN(
        n96_N), .SUM(n103), .SUMN(n103_N), .COUT(n169), .COUTN(n169_N), .CLK(
        CLK) );
  FA32_DRD U131 ( .A(n101), .AN(n101_N), .B(n100), .BN(n100_N), .CI(n99), 
        .CIN(n99_N), .SUM(n102), .SUMN(n102_N), .COUT(n86), .COUTN(n86_N), 
        .CLK(CLK) );
  FA32_DRD U132 ( .A(n104), .AN(n104_N), .B(n103), .BN(n103_N), .CI(n102), 
        .CIN(n102_N), .SUM(n194), .SUMN(n194_N), .COUT(n182), .COUTN(n182_N), 
        .CLK(CLK) );
  FA32_DRD U133 ( .A(n107), .AN(n107_N), .B(n106), .BN(n106_N), .CI(n105), 
        .CIN(n105_N), .SUM(n166), .SUMN(n166_N), .COUT(n104), .COUTN(n104_N), 
        .CLK(CLK) );
  AND2 U134 ( .A(\a[5]_d ), .AN(\a[5]_d_N ), .B(\b[0]_d ), .BN(\b[0]_d_N ), 
        .Y(n109_N), .YN(n109), .CLK(CLK) );
  AND2 U135 ( .A(\a[4]_d ), .AN(\a[4]_d_N ), .B(\b[1]_d ), .BN(\b[1]_d_N ), 
        .Y(n108_N), .YN(n108), .CLK(CLK) );
  AOI21 U136 ( .A(n109), .AN(n109_N), .B(n108), .BN(n108_N), .C(n111), .CN(
        n111_N), .Y(n117_N), .YN(n117), .CLK(CLK) );
  AND2 U137 ( .A(n201_N), .AN(n201), .B(n113_N), .BN(n113), .Y(n116), .YN(
        n116_N), .CLK(CLK) );
  AND4 U138 ( .A(\a[4]_d ), .AN(\a[4]_d_N ), .B(\a[3]_d ), .BN(\a[3]_d_N ), 
        .C(\b[0]_d ), .CN(\b[0]_d_N ), .D(\b[1]_d ), .DN(\b[1]_d_N ), .Y(n121), 
        .YN(n121_N), .CLK(CLK) );
  FA32_DRD U139 ( .A(n112), .AN(n112_N), .B(n111), .BN(n111_N), .CI(n110), 
        .CIN(n110_N), .SUM(n164), .SUMN(n164_N), .COUT(n98), .COUTN(n98_N), 
        .CLK(CLK) );
  AND2 U140 ( .A(n196_N), .AN(n196), .B(n199_N), .BN(n199), .Y(n126), .YN(
        n126_N), .CLK(CLK) );
  AND2 U141 ( .A(n114_N), .AN(n114), .B(n113_N), .BN(n113), .Y(n125), .YN(
        n125_N), .CLK(CLK) );
  AND2 U142 ( .A(n201_N), .AN(n201), .B(n115_N), .BN(n115), .Y(n124), .YN(
        n124_N), .CLK(CLK) );
  FA32_DRD U143 ( .A(n117), .AN(n117_N), .B(n116), .BN(n116_N), .CI(n121), 
        .CIN(n121_N), .SUM(n161), .SUMN(n161_N), .COUT(n165), .COUTN(n165_N), 
        .CLK(CLK) );
  FA32_DRD U144 ( .A(n120), .AN(n120_N), .B(n119), .BN(n119_N), .CI(n118), 
        .CIN(n118_N), .SUM(n160), .SUMN(n160_N), .COUT(n107), .COUTN(n107_N), 
        .CLK(CLK) );
  AND2 U145 ( .A(\a[4]_d ), .AN(\a[4]_d_N ), .B(\b[0]_d ), .BN(\b[0]_d_N ), 
        .Y(n123_N), .YN(n123), .CLK(CLK) );
  AND2 U146 ( .A(\a[3]_d ), .AN(\a[3]_d_N ), .B(\b[1]_d ), .BN(\b[1]_d_N ), 
        .Y(n122_N), .YN(n122), .CLK(CLK) );
  AOI21 U147 ( .A(n123), .AN(n123_N), .B(n122), .BN(n122_N), .C(n121), .CN(
        n121_N), .Y(n146_N), .YN(n146), .CLK(CLK) );
  FA32_DRD U148 ( .A(n126), .AN(n126_N), .B(n125), .BN(n125_N), .CI(n124), 
        .CIN(n124_N), .SUM(n145), .SUMN(n145_N), .COUT(n162), .COUTN(n162_N), 
        .CLK(CLK) );
  AND4 U149 ( .A(\a[2]_d ), .AN(\a[2]_d_N ), .B(\a[3]_d ), .BN(\a[3]_d_N ), 
        .C(\b[0]_d ), .CN(\b[0]_d_N ), .D(\b[1]_d ), .DN(\b[1]_d_N ), .Y(n144), 
        .YN(n144_N), .CLK(CLK) );
  AND2 U150 ( .A(n159_N), .AN(n159), .B(n158_N), .BN(n158), .Y(n157_N), .YN(
        n157), .CLK(CLK) );
  AND2 U151 ( .A(\a[0]_d ), .AN(\a[0]_d_N ), .B(\b[2]_d ), .BN(\b[2]_d_N ), 
        .Y(n130_N), .YN(n130), .CLK(CLK) );
  INVD1_DIFF U152 ( .A(n130), .AN(n130_N), .Y(n128_N), .CLK(CLK), .YN(n128) );
  AND2 U153 ( .A(n128_N), .AN(n128), .B(n127_N), .BN(n127), .Y(n129), .YN(
        n129_N), .CLK(CLK) );
  AND2 U154 ( .A(n129_N), .AN(n129), .B(n199_N), .BN(n199), .Y(n134), .YN(
        n134_N), .CLK(CLK) );
  AND2 U155 ( .A(n131_N), .AN(n131), .B(n130_N), .BN(n130), .Y(n147), .YN(
        n147_N), .CLK(CLK) );
  AND2 U156 ( .A(n147_N), .AN(n147), .B(n131_N), .BN(n131), .Y(n132), .YN(
        n132_N), .CLK(CLK) );
  AOI22 U157 ( .A(\b[0]_d ), .AN(\b[0]_d_N ), .B(n134), .BN(n134_N), .C(n133), 
        .CN(n133_N), .D(n132), .DN(n132_N), .Y(n143_N), .YN(n143), .CLK(CLK)
         );
  AND2 U158 ( .A(\b[2]_d ), .AN(\b[2]_d_N ), .B(\a[1]_d ), .BN(\a[1]_d_N ), 
        .Y(n149_N), .YN(n149), .CLK(CLK) );
  INVD1_DIFF U159 ( .A(n149), .AN(n149_N), .Y(n138_N), .CLK(CLK), .YN(n138) );
  INVD1_DIFF U160 ( .A(n147), .AN(n147_N), .Y(n136_N), .CLK(CLK), .YN(n136) );
  AND2 U161 ( .A(\a[0]_d ), .AN(\a[0]_d_N ), .B(\b[3]_d ), .BN(\b[3]_d_N ), 
        .Y(n135_N), .YN(n135), .CLK(CLK) );
  MUX2 U162 ( .D0(n147), .D0N(n147_N), .D1(n136), .D1N(n136_N), .S(n135), .SN(
        n135_N), .Y(n137_N), .YN(n137), .CLK(CLK) );
  MUX2 U163 ( .D0(n138), .D0N(n138_N), .D1(n149), .D1N(n149_N), .S(n137), .SN(
        n137_N), .Y(n142_N), .YN(n142), .CLK(CLK) );
  AND2 U164 ( .A(\a[3]_d ), .AN(\a[3]_d_N ), .B(\b[0]_d ), .BN(\b[0]_d_N ), 
        .Y(n140_N), .YN(n140), .CLK(CLK) );
  AND2 U165 ( .A(\a[2]_d ), .AN(\a[2]_d_N ), .B(\b[1]_d ), .BN(\b[1]_d_N ), 
        .Y(n139_N), .YN(n139), .CLK(CLK) );
  AOI21 U166 ( .A(n140), .AN(n140_N), .B(n139), .BN(n139_N), .C(n144), .CN(
        n144_N), .Y(n141), .YN(n141_N), .CLK(CLK) );
  FA32_DRD U167 ( .A(n143), .AN(n143_N), .B(n142), .BN(n142_N), .CI(n141), 
        .CIN(n141_N), .COUT(n155), .COUTN(n155_N), .CLK(CLK) );
  FA32_DRD U168 ( .A(n146), .AN(n146_N), .B(n145), .BN(n145_N), .CI(n144), 
        .CIN(n144_N), .SUM(n150), .SUMN(n150_N), .COUT(n158), .COUTN(n158_N), 
        .CLK(CLK) );
  AOI21 U169 ( .A(\a[0]_d ), .AN(\a[0]_d_N ), .B(\b[3]_d ), .BN(\b[3]_d_N ), 
        .C(n147), .CN(n147_N), .Y(n148_N), .YN(n148), .CLK(CLK) );
  AND2 U170 ( .A(n149_N), .AN(n149), .B(n148_N), .BN(n148), .Y(n151), .YN(
        n151_N), .CLK(CLK) );
  AND2 U171 ( .A(n150_N), .AN(n150), .B(n151_N), .BN(n151), .Y(n154), .YN(
        n154_N), .CLK(CLK) );
  INVD1_DIFF U172 ( .A(n150), .AN(n150_N), .Y(n153_N), .CLK(CLK), .YN(n153) );
  INVD1_DIFF U173 ( .A(n151), .AN(n151_N), .Y(n152_N), .CLK(CLK), .YN(n152) );
  OAI22 U174 ( .A(n155), .AN(n155_N), .B(n154), .BN(n154_N), .C(n153), .CN(
        n153_N), .D(n152), .DN(n152_N), .Y(n156_N), .YN(n156), .CLK(CLK) );
  AOI22 U175 ( .A(n159), .AN(n159_N), .B(n158), .BN(n158_N), .C(n157), .CN(
        n157_N), .D(n156), .DN(n156_N), .Y(n231_N), .YN(n231), .CLK(CLK) );
  FA32_DRD U176 ( .A(n162), .AN(n162_N), .B(n161), .BN(n161_N), .CI(n160), 
        .CIN(n160_N), .SUM(n159), .SUMN(n159_N), .COUT(n163), .COUTN(n163_N), 
        .CLK(CLK) );
  INVD1_DIFF U177 ( .A(n163), .AN(n163_N), .Y(n232_N), .CLK(CLK), .YN(n232) );
  AND2 U178 ( .A(n231), .AN(n231_N), .B(n232), .BN(n232_N), .Y(n234), .YN(
        n234_N), .CLK(CLK) );
  FA32_DRD U179 ( .A(n166), .AN(n166_N), .B(n165), .BN(n165_N), .CI(n164), 
        .CIN(n164_N), .SUM(n237), .SUMN(n237_N), .COUT(n193), .COUTN(n193_N), 
        .CLK(CLK) );
  INVD1_DIFF U180 ( .A(n237), .AN(n237_N), .Y(n236_N), .CLK(CLK), .YN(n236) );
  OAI22 U181 ( .A(n231), .AN(n231_N), .B(n232), .BN(n232_N), .C(n234), .CN(
        n234_N), .D(n236), .DN(n236_N), .Y(n192_N), .YN(n192), .CLK(CLK) );
  FA32_DRD U182 ( .A(n169), .AN(n169_N), .B(n168), .BN(n168_N), .CI(n167), 
        .CIN(n167_N), .SUM(n180), .SUMN(n180_N), .COUT(n191), .COUTN(n191_N), 
        .CLK(CLK) );
  FA32_DRD U183 ( .A(n172), .AN(n172_N), .B(n171), .BN(n171_N), .CI(n170), 
        .CIN(n170_N), .SUM(n189), .SUMN(n189_N), .COUT(n187), .COUTN(n187_N), 
        .CLK(CLK) );
  FA32_DRD U184 ( .A(n175), .AN(n175_N), .B(n174), .BN(n174_N), .CI(n173), 
        .CIN(n173_N), .SUM(n177), .SUMN(n177_N), .COUT(n250), .COUTN(n250_N), 
        .CLK(CLK) );
  FA32_DRD U185 ( .A(\a[5]_d ), .AN(\a[5]_d_N ), .B(\b[5]_d ), .BN(\b[5]_d_N ), 
        .CI(n176), .CIN(n176_N), .SUM(n173), .SUMN(n173_N), .COUT(n247), 
        .COUTN(n247_N), .CLK(CLK) );
  FA32_DRD U186 ( .A(n179), .AN(n179_N), .B(n178), .BN(n178_N), .CI(n177), 
        .CIN(n177_N), .SUM(n341), .SUMN(n341_N), .COUT(n249), .COUTN(n249_N), 
        .CLK(CLK) );
  FA32_DRD U187 ( .A(n182), .AN(n182_N), .B(n181), .BN(n181_N), .CI(n180), 
        .CIN(n180_N), .SUM(n292), .SUMN(n292_N), .COUT(n190), .COUTN(n190_N), 
        .CLK(CLK) );
  FA32_DRD U188 ( .A(n185), .AN(n185_N), .B(n184), .BN(n184_N), .CI(n183), 
        .CIN(n183_N), .SUM(n343), .SUMN(n343_N), .COUT(n178), .COUTN(n178_N), 
        .CLK(CLK) );
  FA32_DRD U189 ( .A(n188), .AN(n188_N), .B(n187), .BN(n187_N), .CI(n186), 
        .CIN(n186_N), .SUM(n331), .SUMN(n331_N), .COUT(n183), .COUTN(n183_N), 
        .CLK(CLK) );
  FA32_DRD U190 ( .A(n191), .AN(n191_N), .B(n190), .BN(n190_N), .CI(n189), 
        .CIN(n189_N), .SUM(n333), .SUMN(n333_N), .COUT(n186), .COUTN(n186_N), 
        .CLK(CLK) );
  FA32_DRD U191 ( .A(n194), .AN(n194_N), .B(n193), .BN(n193_N), .CI(n192), 
        .CIN(n192_N), .SUM(n287), .SUMN(n287_N), .COUT(n181), .COUTN(n181_N), 
        .CLK(CLK) );
  AND4 U192 ( .A(n343), .AN(n343_N), .B(n331), .BN(n331_N), .C(n333), .CN(
        n333_N), .D(n287), .DN(n287_N), .Y(n245_N), .YN(n245), .CLK(CLK) );
  AOI21 U193 ( .A(\b[5]_d ), .AN(\b[5]_d_N ), .B(n201), .BN(n201_N), .C(
        \b[3]_d ), .CN(\b[3]_d_N ), .Y(n195), .YN(n195_N), .CLK(CLK) );
  AOI21 U194 ( .A(n196), .AN(n196_N), .B(n195), .BN(n195_N), .C(\b[1]_d ), 
        .CN(\b[1]_d_N ), .Y(n197_N), .YN(n197), .CLK(CLK) );
  AND2 U195 ( .A(\b[0]_d_N ), .AN(\b[0]_d ), .B(n197_N), .BN(n197), .Y(n266_N), 
        .YN(n266), .CLK(CLK) );
  AOI21 U196 ( .A(\a[5]_d ), .AN(\a[5]_d_N ), .B(n205), .BN(n205_N), .C(
        \a[3]_d ), .CN(\a[3]_d_N ), .Y(n198), .YN(n198_N), .CLK(CLK) );
  AOI21 U197 ( .A(n199), .AN(n199_N), .B(n198), .BN(n198_N), .C(\a[1]_d ), 
        .CN(\a[1]_d_N ), .Y(n200_N), .YN(n200), .CLK(CLK) );
  AND2 U198 ( .A(\a[0]_d_N ), .AN(\a[0]_d ), .B(n200_N), .BN(n200), .Y(n265_N), 
        .YN(n265), .CLK(CLK) );
  AND2 U199 ( .A(n266_N), .AN(n266), .B(n265_N), .BN(n265), .Y(n209), .YN(
        n209_N), .CLK(CLK) );
  INVD1_DIFF U200 ( .A(n209), .AN(n209_N), .Y(n268_N), .CLK(CLK), .YN(n268) );
  AND2 U201 ( .A(\b[2]_d_N ), .AN(\b[2]_d ), .B(\b[3]_d_N ), .BN(\b[3]_d ), 
        .Y(n214), .YN(n214_N), .CLK(CLK) );
  AND2 U202 ( .A(n202), .AN(n202_N), .B(n201), .BN(n201_N), .Y(n204_N), .YN(
        n204), .CLK(CLK) );
  AND2 U203 ( .A(\b[1]_d_N ), .AN(\b[1]_d ), .B(\b[0]_d_N ), .BN(\b[0]_d ), 
        .Y(n215), .YN(n215_N), .CLK(CLK) );
  INVD1_DIFF U204 ( .A(n215), .AN(n215_N), .Y(n203_N), .CLK(CLK), .YN(n203) );
  AOI21 U205 ( .A(n214), .AN(n214_N), .B(n204), .BN(n204_N), .C(n203), .CN(
        n203_N), .Y(n210_N), .YN(n210), .CLK(CLK) );
  INVD1_DIFF U206 ( .A(n210), .AN(n210_N), .Y(n211_N), .CLK(CLK), .YN(n211) );
  AND2 U207 ( .A(\a[2]_d_N ), .AN(\a[2]_d ), .B(\a[3]_d_N ), .BN(\a[3]_d ), 
        .Y(n217), .YN(n217_N), .CLK(CLK) );
  AND2 U208 ( .A(n206), .AN(n206_N), .B(n205), .BN(n205_N), .Y(n208_N), .YN(
        n208), .CLK(CLK) );
  AND2 U209 ( .A(\a[1]_d_N ), .AN(\a[1]_d ), .B(\a[0]_d_N ), .BN(\a[0]_d ), 
        .Y(n216), .YN(n216_N), .CLK(CLK) );
  INVD1_DIFF U210 ( .A(n216), .AN(n216_N), .Y(n207_N), .CLK(CLK), .YN(n207) );
  AOI21 U211 ( .A(n217), .AN(n217_N), .B(n208), .BN(n208_N), .C(n207), .CN(
        n207_N), .Y(n212), .YN(n212_N), .CLK(CLK) );
  MUX2 U212 ( .D0(n211), .D0N(n211_N), .D1(n210), .D1N(n210_N), .S(n212), .SN(
        n212_N), .Y(n218_N), .YN(n218), .CLK(CLK) );
  AND2 U213 ( .A(n210_N), .AN(n210), .B(n209_N), .BN(n209), .Y(n213), .YN(
        n213_N), .CLK(CLK) );
  OAI22 U214 ( .A(n213), .AN(n213_N), .B(n212), .BN(n212_N), .C(n211), .CN(
        n211_N), .D(n268), .DN(n268_N), .Y(n222), .YN(n222_N), .CLK(CLK) );
  AND2 U215 ( .A(n215), .AN(n215_N), .B(n214), .BN(n214_N), .Y(n221_N), .YN(
        n221), .CLK(CLK) );
  AND2 U216 ( .A(n222), .AN(n222_N), .B(n221), .BN(n221_N), .Y(n220), .YN(
        n220_N), .CLK(CLK) );
  AND2 U217 ( .A(n217), .AN(n217_N), .B(n216), .BN(n216_N), .Y(n219_N), .YN(
        n219), .CLK(CLK) );
  AOI22 U218 ( .A(n268), .AN(n268_N), .B(n218), .BN(n218_N), .C(n220), .CN(
        n220_N), .D(n219), .DN(n219_N), .Y(n263_N), .YN(n263), .CLK(CLK) );
  AND2 U219 ( .A(n218_N), .AN(n218), .B(n268_N), .BN(n268), .Y(n223_N), .YN(
        n223), .CLK(CLK) );
  OAI22 U220 ( .A(n222), .AN(n222_N), .B(n221), .BN(n221_N), .C(n220), .CN(
        n220_N), .D(n219), .DN(n219_N), .Y(n267_N), .YN(n267), .CLK(CLK) );
  AOI21 U221 ( .A(n263), .AN(n263_N), .B(n223), .BN(n223_N), .C(n267), .CN(
        n267_N), .Y(n240_N), .YN(n240), .CLK(CLK) );
  INVD1_DIFF U222 ( .A(\rnd[0]_d ), .AN(\rnd[0]_d_N ), .Y(n224_N), .CLK(CLK), 
        .YN(n224) );
  MUX2 U223 ( .D0(\rnd[0]_d ), .D0N(\rnd[0]_d_N ), .D1(n224), .D1N(n224_N), 
        .S(\o[15]_d ), .SN(\o[15]_d_N ), .Y(n225_N), .YN(n225), .CLK(CLK) );
  AND2 U224 ( .A(n225), .AN(n225_N), .B(\rnd[1]_d ), .BN(\rnd[1]_d_N ), .Y(
        n241_N), .YN(n241), .CLK(CLK) );
  INVD1_DIFF U225 ( .A(n241), .AN(n241_N), .Y(n226_N), .CLK(CLK), .YN(n226) );
  AOI21 U226 ( .A(\rnd[0]_d ), .AN(\rnd[0]_d_N ), .B(\rnd[2]_d ), .BN(
        \rnd[2]_d_N ), .C(n226), .CN(n226_N), .Y(n364_N), .YN(n364), .CLK(CLK)
         );
  INVD1_DIFF U227 ( .A(n364), .AN(n364_N), .Y(n376_N), .CLK(CLK), .YN(n376) );
  INVD1_DIFF U228 ( .A(n240), .AN(n240_N), .Y(n271_N), .CLK(CLK), .YN(n271) );
  INVD1_DIFF U229 ( .A(n287), .AN(n287_N), .Y(n282_N), .CLK(CLK), .YN(n282) );
  AND2 U230 ( .A(\rnd[1]_d_N ), .AN(\rnd[1]_d ), .B(\rnd[0]_d_N ), .BN(
        \rnd[0]_d ), .Y(n261), .YN(n261_N), .CLK(CLK) );
  INVD1_DIFF U231 ( .A(\rnd[2]_d ), .AN(\rnd[2]_d_N ), .Y(n242_N), .CLK(CLK), 
        .YN(n242) );
  AND2 U232 ( .A(n261), .AN(n261_N), .B(n242), .BN(n242_N), .Y(n243_N), .YN(
        n243), .CLK(CLK) );
  INVD1_DIFF U233 ( .A(n243), .AN(n243_N), .Y(n283_N), .CLK(CLK), .YN(n283) );
  AND3 U234 ( .A(n271), .AN(n271_N), .B(n282), .BN(n282_N), .C(n283), .CN(
        n283_N), .Y(n239_N), .YN(n239), .CLK(CLK) );
  INVD1_DIFF U235 ( .A(n253), .AN(n253_N), .Y(n309_N), .CLK(CLK), .YN(n309) );
  AND2 U236 ( .A(n321_N), .AN(n321), .B(n325_N), .BN(n325), .Y(n227), .YN(
        n227_N), .CLK(CLK) );
  INVD1_DIFF U237 ( .A(n303), .AN(n303_N), .Y(n308_N), .CLK(CLK), .YN(n308) );
  AND4 U238 ( .A(n227), .AN(n227_N), .B(n391), .BN(n391_N), .C(n397), .CN(
        n397_N), .D(n308), .DN(n308_N), .Y(n230), .YN(n230_N), .CLK(CLK) );
  AOI21 U239 ( .A(\a[7]_d ), .AN(\a[7]_d_N ), .B(n229), .BN(n229_N), .C(n228), 
        .CN(n228_N), .Y(n396_N), .YN(n396), .CLK(CLK) );
  INVD1_DIFF U240 ( .A(n396), .AN(n396_N), .Y(n387_N), .CLK(CLK), .YN(n387) );
  INVD1_DIFF U241 ( .A(n322), .AN(n322_N), .Y(n316_N), .CLK(CLK), .YN(n316) );
  AND4 U242 ( .A(n309), .AN(n309_N), .B(n230), .BN(n230_N), .C(n387), .CN(
        n387_N), .D(n316), .DN(n316_N), .Y(n257_N), .YN(n257), .CLK(CLK) );
  AND2 U243 ( .A(n232_N), .AN(n232), .B(n231_N), .BN(n231), .Y(n233), .YN(
        n233_N), .CLK(CLK) );
  AND2 U244 ( .A(n234_N), .AN(n234), .B(n233_N), .BN(n233), .Y(n235), .YN(
        n235_N), .CLK(CLK) );
  MUX2 U245 ( .D0(n237), .D0N(n237_N), .D1(n236), .D1N(n236_N), .S(n235), .SN(
        n235_N), .Y(n238_N), .YN(n238), .CLK(CLK) );
  AND2 U246 ( .A(n257), .AN(n257_N), .B(n238), .BN(n238_N), .Y(n270_N), .YN(
        n270), .CLK(CLK) );
  AOI22 U247 ( .A(n240), .AN(n240_N), .B(n376), .BN(n376_N), .C(n239), .CN(
        n239_N), .D(n270), .DN(n270_N), .Y(n244), .YN(n244_N), .CLK(CLK) );
  AND3 U248 ( .A(n243), .AN(n243_N), .B(n242), .BN(n242_N), .C(n241), .CN(
        n241_N), .Y(n290_N), .YN(n290), .CLK(CLK) );
  AND2 U249 ( .A(n244), .AN(n244_N), .B(n290), .BN(n290_N), .Y(n280_N), .YN(
        n280), .CLK(CLK) );
  AND2 U250 ( .A(n245_N), .AN(n245), .B(n280_N), .BN(n280), .Y(n246), .YN(
        n246_N), .CLK(CLK) );
  AND4 U251 ( .A(n354), .AN(n354_N), .B(n341), .BN(n341_N), .C(n292), .CN(
        n292_N), .D(n246), .DN(n246_N), .Y(n251_N), .YN(n251), .CLK(CLK) );
  FA32_DRD U252 ( .A(\a[6]_d ), .AN(\a[6]_d_N ), .B(\b[6]_d ), .BN(\b[6]_d_N ), 
        .CI(n247), .CIN(n247_N), .SUM(n248), .SUMN(n248_N), .COUT(n352), 
        .COUTN(n352_N), .CLK(CLK) );
  FA32_DRD U253 ( .A(n250), .AN(n250_N), .B(n249), .BN(n249_N), .CI(n248), 
        .CIN(n248_N), .SUM(n354), .SUMN(n354_N), .COUT(n351), .COUTN(n351_N), 
        .CLK(CLK) );
  AND2 U254 ( .A(n352_N), .AN(n352), .B(n351_N), .BN(n351), .Y(n295), .YN(
        n295_N), .CLK(CLK) );
  AND2 U255 ( .A(n251), .AN(n251_N), .B(n295), .BN(n295_N), .Y(n380_N), .YN(
        n380), .CLK(CLK) );
  AND3 U256 ( .A(n396), .AN(n396_N), .B(n252), .BN(n252_N), .C(n395), .CN(
        n395_N), .Y(n302_N), .YN(n302), .CLK(CLK) );
  AND2 U257 ( .A(n253), .AN(n253_N), .B(n303), .BN(n303_N), .Y(n254_N), .YN(
        n254), .CLK(CLK) );
  AND2 U258 ( .A(n302_N), .AN(n302), .B(n254_N), .BN(n254), .Y(n313), .YN(
        n313_N), .CLK(CLK) );
  AOI22 U259 ( .A(n362), .AN(n362_N), .B(n380), .BN(n380_N), .C(n255), .CN(
        n255_N), .D(n313), .DN(n313_N), .Y(n256_N), .YN(n256), .CLK(CLK) );
  AND2 U260 ( .A(n299), .AN(n299_N), .B(n256), .BN(n256_N), .Y(n276_N), .YN(
        n276), .CLK(CLK) );
  AND3 U261 ( .A(n378), .AN(n378_N), .B(n361), .BN(n361_N), .C(n276), .CN(
        n276_N), .Y(n275_N), .YN(n275), .CLK(CLK) );
  INVD1_DIFF U262 ( .A(n275), .AN(n275_N), .Y(\status[4]_d_N ), .CLK(CLK), 
        .YN(\status[4]_d ) );
  INVD1_DIFF U263 ( .A(n257), .AN(n257_N), .Y(n259_N), .CLK(CLK), .YN(n259) );
  INVD1_DIFF U264 ( .A(n361), .AN(n361_N), .Y(n258_N), .CLK(CLK), .YN(n258) );
  AOI21 U265 ( .A(n259), .AN(n259_N), .B(n372), .BN(n372_N), .C(n258), .CN(
        n258_N), .Y(n370_N), .YN(n370), .CLK(CLK) );
  AOI21 U266 ( .A(n361), .AN(n361_N), .B(n380), .BN(n380_N), .C(n370), .CN(
        n370_N), .Y(n278), .YN(n278_N), .CLK(CLK) );
  AND2 U267 ( .A(n260), .AN(n260_N), .B(n378), .BN(n378_N), .Y(n369_N), .YN(
        n369), .CLK(CLK) );
  AND2 U268 ( .A(n278_N), .AN(n278), .B(n369_N), .BN(n369), .Y(\status[3]_d ), 
        .YN(\status[3]_d_N ), .CLK(CLK) );
  INVD1_DIFF U269 ( .A(n260), .AN(n260_N), .Y(n262_N), .CLK(CLK), .YN(n262) );
  AOI22 U270 ( .A(n378), .AN(n378_N), .B(n262), .BN(n262_N), .C(n364), .CN(
        n364_N), .D(\status[3]_d ), .DN(\status[3]_d_N ), .Y(\status[0]_d ), 
        .YN(\status[0]_d_N ), .CLK(CLK) );
  AND2 U271 ( .A(n378_N), .AN(n378), .B(n260_N), .BN(n260), .Y(\status[2]_d ), 
        .YN(\status[2]_d_N ), .CLK(CLK) );
  AND2 U272 ( .A(n376_N), .AN(n376), .B(n261_N), .BN(n261), .Y(n373), .YN(
        n373_N), .CLK(CLK) );
  OAI22 U273 ( .A(n373), .AN(n373_N), .B(n275), .BN(n275_N), .C(n378), .CN(
        n378_N), .D(n262), .DN(n262_N), .Y(\status[1]_d_N ), .YN(\status[1]_d ), .CLK(CLK) );
  INVD1_DIFF U274 ( .A(n263), .AN(n263_N), .Y(n264_N), .CLK(CLK), .YN(n264) );
  AOI21 U275 ( .A(n266), .AN(n266_N), .B(n265), .BN(n265_N), .C(n264), .CN(
        n264_N), .Y(n269_N), .YN(n269), .CLK(CLK) );
  AOI21 U276 ( .A(n269), .AN(n269_N), .B(n268), .BN(n268_N), .C(n267), .CN(
        n267_N), .Y(n284), .YN(n284_N), .CLK(CLK) );
  INVD1_DIFF U277 ( .A(n295), .AN(n295_N), .Y(n279_N), .CLK(CLK), .YN(n279) );
  AND2 U278 ( .A(n279_N), .AN(n279), .B(n270_N), .BN(n270), .Y(n272), .YN(
        n272_N), .CLK(CLK) );
  AOI22 U279 ( .A(n284), .AN(n284_N), .B(n282), .BN(n282_N), .C(n272), .CN(
        n272_N), .D(n271), .DN(n271_N), .Y(n273_N), .YN(n273), .CLK(CLK) );
  INVD1_DIFF U280 ( .A(n369), .AN(n369_N), .Y(n368_N), .CLK(CLK), .YN(n368) );
  AOI21 U281 ( .A(n273), .AN(n273_N), .B(n368), .BN(n368_N), .C(\status[3]_d ), 
        .CN(\status[3]_d_N ), .Y(n274_N), .YN(n274), .CLK(CLK) );
  AND2 U282 ( .A(n275), .AN(n275_N), .B(n274), .BN(n274_N), .Y(\status[5]_d_N ), .YN(\status[5]_d ), .CLK(CLK) );
  AND2 U283 ( .A(n373), .AN(n373_N), .B(\status[4]_d ), .BN(\status[4]_d_N ), 
        .Y(n360_N), .YN(n360), .CLK(CLK) );
  INVD1_DIFF U284 ( .A(n276), .AN(n276_N), .Y(n277_N), .CLK(CLK), .YN(n277) );
  AND3 U285 ( .A(n278), .AN(n278_N), .B(n368), .BN(n368_N), .C(n277), .CN(
        n277_N), .Y(n296_N), .YN(n296), .CLK(CLK) );
  AND2 U286 ( .A(n296_N), .AN(n296), .B(n279_N), .BN(n279), .Y(n356), .YN(
        n356_N), .CLK(CLK) );
  AND2 U287 ( .A(n280_N), .AN(n280), .B(n279_N), .BN(n279), .Y(n281_N), .YN(
        n281), .CLK(CLK) );
  AND2 U288 ( .A(n281_N), .AN(n281), .B(n282_N), .BN(n282), .Y(n289), .YN(
        n289_N), .CLK(CLK) );
  AOI21 U289 ( .A(n282), .AN(n282_N), .B(n281), .BN(n281_N), .C(n289), .CN(
        n289_N), .Y(n297_N), .YN(n297), .CLK(CLK) );
  AND2 U290 ( .A(n284_N), .AN(n284), .B(n364_N), .BN(n364), .Y(n286), .YN(
        n286_N), .CLK(CLK) );
  AND2 U291 ( .A(n284), .AN(n284_N), .B(n283), .BN(n283_N), .Y(n285_N), .YN(
        n285), .CLK(CLK) );
  OAI22 U292 ( .A(n287), .AN(n287_N), .B(n286), .BN(n286_N), .C(n292), .CN(
        n292_N), .D(n285), .DN(n285_N), .Y(n288_N), .YN(n288), .CLK(CLK) );
  AND2 U293 ( .A(n288_N), .AN(n288), .B(n295_N), .BN(n295), .Y(n291), .YN(
        n291_N), .CLK(CLK) );
  AOI21 U294 ( .A(n291), .AN(n291_N), .B(n290), .BN(n290_N), .C(n289), .CN(
        n289_N), .Y(n294_N), .YN(n294), .CLK(CLK) );
  INVD1_DIFF U295 ( .A(n292), .AN(n292_N), .Y(n293_N), .CLK(CLK), .YN(n293) );
  AND2 U296 ( .A(n293_N), .AN(n293), .B(n294_N), .BN(n294), .Y(n332), .YN(
        n332_N), .CLK(CLK) );
  AOI21 U297 ( .A(n294), .AN(n294_N), .B(n293), .BN(n293_N), .C(n332), .CN(
        n332_N), .Y(n329_N), .YN(n329), .CLK(CLK) );
  AND2 U298 ( .A(n296_N), .AN(n296), .B(n295_N), .BN(n295), .Y(n357), .YN(
        n357_N), .CLK(CLK) );
  AOI22 U299 ( .A(n356), .AN(n356_N), .B(n297), .BN(n297_N), .C(n329), .CN(
        n329_N), .D(n357), .DN(n357_N), .Y(n298_N), .YN(n298), .CLK(CLK) );
  AND2 U300 ( .A(n360), .AN(n360_N), .B(n298), .BN(n298_N), .Y(\o[0]_d_N ), 
        .YN(\o[0]_d ), .CLK(CLK) );
  AOI21 U301 ( .A(n361), .AN(n361_N), .B(n362), .BN(n362_N), .C(n382), .CN(
        n382_N), .Y(n398_N), .YN(n398), .CLK(CLK) );
  AND4 U302 ( .A(n299), .AN(n299_N), .B(n368), .BN(n368_N), .C(n380), .CN(
        n380_N), .D(n300), .DN(n300_N), .Y(n385_N), .YN(n385), .CLK(CLK) );
  AND2 U303 ( .A(n385_N), .AN(n385), .B(n302_N), .BN(n302), .Y(n306), .YN(
        n306_N), .CLK(CLK) );
  INVD1_DIFF U304 ( .A(n385), .AN(n385_N), .Y(n394_N), .CLK(CLK), .YN(n394) );
  INVD1_DIFF U305 ( .A(n300), .AN(n300_N), .Y(n301_N), .CLK(CLK), .YN(n301) );
  AND2 U306 ( .A(n301_N), .AN(n301), .B(n380_N), .BN(n380), .Y(n366), .YN(
        n366_N), .CLK(CLK) );
  INVD1_DIFF U307 ( .A(n366), .AN(n366_N), .Y(n312_N), .CLK(CLK), .YN(n312) );
  AND3 U308 ( .A(n372), .AN(n372_N), .B(n370), .BN(n370_N), .C(n368), .CN(
        n368_N), .Y(n371_N), .YN(n371), .CLK(CLK) );
  AND2 U309 ( .A(n312_N), .AN(n312), .B(n371_N), .BN(n371), .Y(n386), .YN(
        n386_N), .CLK(CLK) );
  AOI21 U310 ( .A(n394), .AN(n394_N), .B(n302), .BN(n302_N), .C(n386), .CN(
        n386_N), .Y(n305), .YN(n305_N), .CLK(CLK) );
  AOI22 U311 ( .A(n308), .AN(n308_N), .B(n306), .BN(n306_N), .C(n305), .CN(
        n305_N), .D(n303), .DN(n303_N), .Y(n304_N), .YN(n304), .CLK(CLK) );
  AND2 U312 ( .A(n398), .AN(n398_N), .B(n304), .BN(n304_N), .Y(\o[10]_d_N ), 
        .YN(\o[10]_d ), .CLK(CLK) );
  AOI21 U313 ( .A(n394), .AN(n394_N), .B(n308), .BN(n308_N), .C(n305), .CN(
        n305_N), .Y(n310_N), .YN(n310), .CLK(CLK) );
  AND2 U314 ( .A(n309), .AN(n309_N), .B(n306), .BN(n306_N), .Y(n307_N), .YN(
        n307), .CLK(CLK) );
  OAI22 U315 ( .A(n310), .AN(n310_N), .B(n309), .BN(n309_N), .C(n308), .CN(
        n308_N), .D(n307), .DN(n307_N), .Y(n311), .YN(n311_N), .CLK(CLK) );
  AND2 U316 ( .A(n398), .AN(n398_N), .B(n311), .BN(n311_N), .Y(\o[11]_d_N ), 
        .YN(\o[11]_d ), .CLK(CLK) );
  AND2 U317 ( .A(n313), .AN(n313_N), .B(n394), .BN(n394_N), .Y(n317_N), .YN(
        n317), .CLK(CLK) );
  INVD1_DIFF U318 ( .A(n317), .AN(n317_N), .Y(n324_N), .CLK(CLK), .YN(n324) );
  OAI22 U319 ( .A(n313), .AN(n313_N), .B(n385), .BN(n385_N), .C(n312), .CN(
        n312_N), .D(n371), .DN(n371_N), .Y(n315_N), .YN(n315), .CLK(CLK) );
  AOI22 U320 ( .A(n316), .AN(n316_N), .B(n324), .BN(n324_N), .C(n315), .CN(
        n315_N), .D(n322), .DN(n322_N), .Y(n314_N), .YN(n314), .CLK(CLK) );
  AND2 U321 ( .A(n398), .AN(n398_N), .B(n314), .BN(n314_N), .Y(\o[12]_d_N ), 
        .YN(\o[12]_d ), .CLK(CLK) );
  AOI21 U322 ( .A(n394), .AN(n394_N), .B(n316), .BN(n316_N), .C(n315), .CN(
        n315_N), .Y(n319), .YN(n319_N), .CLK(CLK) );
  AND2 U323 ( .A(n317_N), .AN(n317), .B(n321_N), .BN(n321), .Y(n318), .YN(
        n318_N), .CLK(CLK) );
  AOI22 U324 ( .A(n319), .AN(n319_N), .B(n321), .BN(n321_N), .C(n318), .CN(
        n318_N), .D(n322), .DN(n322_N), .Y(n320_N), .YN(n320), .CLK(CLK) );
  AND2 U325 ( .A(n398), .AN(n398_N), .B(n320), .BN(n320_N), .Y(\o[13]_d_N ), 
        .YN(\o[13]_d ), .CLK(CLK) );
  AND2 U326 ( .A(n386_N), .AN(n386), .B(n394_N), .BN(n394), .Y(n326_N), .YN(
        n326), .CLK(CLK) );
  AND2 U327 ( .A(n322), .AN(n322_N), .B(n321), .BN(n321_N), .Y(n323), .YN(
        n323_N), .CLK(CLK) );
  AOI22 U328 ( .A(n326), .AN(n326_N), .B(n325), .BN(n325_N), .C(n324), .CN(
        n324_N), .D(n323), .DN(n323_N), .Y(n327_N), .YN(n327), .CLK(CLK) );
  AND2 U329 ( .A(n398), .AN(n398_N), .B(n327), .BN(n327_N), .Y(\o[14]_d_N ), 
        .YN(\o[14]_d ), .CLK(CLK) );
  INVD1_DIFF U330 ( .A(n333), .AN(n333_N), .Y(n328_N), .CLK(CLK), .YN(n328) );
  MUX2 U331 ( .D0(n328), .D0N(n328_N), .D1(n333), .D1N(n333_N), .S(n332), .SN(
        n332_N), .Y(n336_N), .YN(n336), .CLK(CLK) );
  AOI22 U332 ( .A(n356), .AN(n356_N), .B(n329), .BN(n329_N), .C(n357), .CN(
        n357_N), .D(n336), .DN(n336_N), .Y(n330_N), .YN(n330), .CLK(CLK) );
  AND2 U333 ( .A(n360), .AN(n360_N), .B(n330), .BN(n330_N), .Y(\o[1]_d_N ), 
        .YN(\o[1]_d ), .CLK(CLK) );
  INVD1_DIFF U334 ( .A(n331), .AN(n331_N), .Y(n335_N), .CLK(CLK), .YN(n335) );
  AND2 U335 ( .A(n333), .AN(n333_N), .B(n332), .BN(n332_N), .Y(n334_N), .YN(
        n334), .CLK(CLK) );
  AND2 U336 ( .A(n334_N), .AN(n334), .B(n335_N), .BN(n335), .Y(n342), .YN(
        n342_N), .CLK(CLK) );
  AOI21 U337 ( .A(n335), .AN(n335_N), .B(n334), .BN(n334_N), .C(n342), .CN(
        n342_N), .Y(n339_N), .YN(n339), .CLK(CLK) );
  AOI22 U338 ( .A(n356), .AN(n356_N), .B(n336), .BN(n336_N), .C(n357), .CN(
        n357_N), .D(n339), .DN(n339_N), .Y(n337_N), .YN(n337), .CLK(CLK) );
  AND2 U339 ( .A(n360), .AN(n360_N), .B(n337), .BN(n337_N), .Y(\o[2]_d_N ), 
        .YN(\o[2]_d ), .CLK(CLK) );
  INVD1_DIFF U340 ( .A(n343), .AN(n343_N), .Y(n338_N), .CLK(CLK), .YN(n338) );
  MUX2 U341 ( .D0(n338), .D0N(n338_N), .D1(n343), .D1N(n343_N), .S(n342), .SN(
        n342_N), .Y(n346_N), .YN(n346), .CLK(CLK) );
  AOI22 U342 ( .A(n356), .AN(n356_N), .B(n339), .BN(n339_N), .C(n346), .CN(
        n346_N), .D(n357), .DN(n357_N), .Y(n340_N), .YN(n340), .CLK(CLK) );
  AND2 U343 ( .A(n360), .AN(n360_N), .B(n340), .BN(n340_N), .Y(\o[3]_d_N ), 
        .YN(\o[3]_d ), .CLK(CLK) );
  INVD1_DIFF U344 ( .A(n341), .AN(n341_N), .Y(n345_N), .CLK(CLK), .YN(n345) );
  AND2 U345 ( .A(n343), .AN(n343_N), .B(n342), .BN(n342_N), .Y(n344_N), .YN(
        n344), .CLK(CLK) );
  AND2 U346 ( .A(n344_N), .AN(n344), .B(n345_N), .BN(n345), .Y(n353), .YN(
        n353_N), .CLK(CLK) );
  AOI21 U347 ( .A(n345), .AN(n345_N), .B(n344), .BN(n344_N), .C(n353), .CN(
        n353_N), .Y(n349_N), .YN(n349), .CLK(CLK) );
  AOI22 U348 ( .A(n356), .AN(n356_N), .B(n346), .BN(n346_N), .C(n349), .CN(
        n349_N), .D(n357), .DN(n357_N), .Y(n347_N), .YN(n347), .CLK(CLK) );
  AND2 U349 ( .A(n360), .AN(n360_N), .B(n347), .BN(n347_N), .Y(\o[4]_d_N ), 
        .YN(\o[4]_d ), .CLK(CLK) );
  INVD1_DIFF U350 ( .A(n354), .AN(n354_N), .Y(n348_N), .CLK(CLK), .YN(n348) );
  MUX2 U351 ( .D0(n348), .D0N(n348_N), .D1(n354), .D1N(n354_N), .S(n353), .SN(
        n353_N), .Y(n355_N), .YN(n355), .CLK(CLK) );
  AOI22 U352 ( .A(n355), .AN(n355_N), .B(n357), .BN(n357_N), .C(n356), .CN(
        n356_N), .D(n349), .DN(n349_N), .Y(n350_N), .YN(n350), .CLK(CLK) );
  AND2 U353 ( .A(n360), .AN(n360_N), .B(n350), .BN(n350_N), .Y(\o[5]_d_N ), 
        .YN(\o[5]_d ), .CLK(CLK) );
  AOI22 U354 ( .A(n354), .AN(n354_N), .B(n353), .BN(n353_N), .C(n352), .CN(
        n352_N), .D(n351), .DN(n351_N), .Y(n358), .YN(n358_N), .CLK(CLK) );
  AOI22 U355 ( .A(n358), .AN(n358_N), .B(n357), .BN(n357_N), .C(n356), .CN(
        n356_N), .D(n355), .DN(n355_N), .Y(n359_N), .YN(n359), .CLK(CLK) );
  AND2 U356 ( .A(n360), .AN(n360_N), .B(n359), .BN(n359_N), .Y(\o[6]_d_N ), 
        .YN(\o[6]_d ), .CLK(CLK) );
  AND2 U357 ( .A(n362), .AN(n362_N), .B(n361), .BN(n361_N), .Y(n365_N), .YN(
        n365), .CLK(CLK) );
  INVD1_DIFF U358 ( .A(n362), .AN(n362_N), .Y(n363_N), .CLK(CLK), .YN(n363) );
  OAI22 U359 ( .A(n373), .AN(n373_N), .B(n365), .BN(n365_N), .C(n364), .CN(
        n364_N), .D(n363), .DN(n363_N), .Y(n367_N), .YN(n367), .CLK(CLK) );
  AOI21 U360 ( .A(n368), .AN(n368_N), .B(n367), .BN(n367_N), .C(n366), .CN(
        n366_N), .Y(n381), .YN(n381_N), .CLK(CLK) );
  AND2 U361 ( .A(n370_N), .AN(n370), .B(n369_N), .BN(n369), .Y(n375), .YN(
        n375_N), .CLK(CLK) );
  OAI22 U362 ( .A(n373), .AN(n373_N), .B(n372), .BN(n372_N), .C(n387), .CN(
        n387_N), .D(n371), .DN(n371_N), .Y(n374_N), .YN(n374), .CLK(CLK) );
  AOI21 U363 ( .A(n376), .AN(n376_N), .B(n375), .BN(n375_N), .C(n374), .CN(
        n374_N), .Y(n377_N), .YN(n377), .CLK(CLK) );
  AND2 U364 ( .A(n378), .AN(n378_N), .B(n377), .BN(n377_N), .Y(n379_N), .YN(
        n379), .CLK(CLK) );
  OAI22 U365 ( .A(n382), .AN(n382_N), .B(n381), .BN(n381_N), .C(n380), .CN(
        n380_N), .D(n379), .DN(n379_N), .Y(n384_N), .YN(n384), .CLK(CLK) );
  AND2 U366 ( .A(n387), .AN(n387_N), .B(n394), .BN(n394_N), .Y(n383_N), .YN(
        n383), .CLK(CLK) );
  AND2 U367 ( .A(n384), .AN(n384_N), .B(n383), .BN(n383_N), .Y(\o[7]_d_N ), 
        .YN(\o[7]_d ), .CLK(CLK) );
  AND2 U368 ( .A(n385_N), .AN(n385), .B(n387_N), .BN(n387), .Y(n389), .YN(
        n389_N), .CLK(CLK) );
  AOI21 U369 ( .A(n394), .AN(n394_N), .B(n387), .BN(n387_N), .C(n386), .CN(
        n386_N), .Y(n393_N), .YN(n393), .CLK(CLK) );
  INVD1_DIFF U370 ( .A(n393), .AN(n393_N), .Y(n388_N), .CLK(CLK), .YN(n388) );
  AOI22 U371 ( .A(n391), .AN(n391_N), .B(n389), .BN(n389_N), .C(n388), .CN(
        n388_N), .D(n395), .DN(n395_N), .Y(n390_N), .YN(n390), .CLK(CLK) );
  AND2 U372 ( .A(n398), .AN(n398_N), .B(n390), .BN(n390_N), .Y(\o[8]_d_N ), 
        .YN(\o[8]_d ), .CLK(CLK) );
  AND2 U373 ( .A(n391), .AN(n391_N), .B(n394), .BN(n394_N), .Y(n392_N), .YN(
        n392), .CLK(CLK) );
  AOI21 U374 ( .A(n393), .AN(n393_N), .B(n392), .BN(n392_N), .C(n397), .CN(
        n397_N), .Y(n400), .YN(n400_N), .CLK(CLK) );
  AND4 U375 ( .A(n397), .AN(n397_N), .B(n396), .BN(n396_N), .C(n395), .CN(
        n395_N), .D(n394), .DN(n394_N), .Y(n399_N), .YN(n399), .CLK(CLK) );
  AND3 U376 ( .A(n400), .AN(n400_N), .B(n399), .BN(n399_N), .C(n398), .CN(
        n398_N), .Y(\o[9]_d_N ), .YN(\o[9]_d ), .CLK(CLK) );
  SE2DIFF a_15_conv ( .A(a[15]), .Y(\a[15]_d ), .YN(\a[15]_d_N ), .CLK(CLK) );
  SE2DIFF a_14_conv ( .A(a[14]), .Y(\a[14]_d ), .YN(\a[14]_d_N ), .CLK(CLK) );
  SE2DIFF a_13_conv ( .A(a[13]), .Y(\a[13]_d ), .YN(\a[13]_d_N ), .CLK(CLK) );
  SE2DIFF a_12_conv ( .A(a[12]), .Y(\a[12]_d ), .YN(\a[12]_d_N ), .CLK(CLK) );
  SE2DIFF a_11_conv ( .A(a[11]), .Y(\a[11]_d ), .YN(\a[11]_d_N ), .CLK(CLK) );
  SE2DIFF a_10_conv ( .A(a[10]), .Y(\a[10]_d ), .YN(\a[10]_d_N ), .CLK(CLK) );
  SE2DIFF a_9_conv ( .A(a[9]), .Y(\a[9]_d ), .YN(\a[9]_d_N ), .CLK(CLK) );
  SE2DIFF a_8_conv ( .A(a[8]), .Y(\a[8]_d ), .YN(\a[8]_d_N ), .CLK(CLK) );
  SE2DIFF a_7_conv ( .A(a[7]), .Y(\a[7]_d ), .YN(\a[7]_d_N ), .CLK(CLK) );
  SE2DIFF a_6_conv ( .A(a[6]), .Y(\a[6]_d ), .YN(\a[6]_d_N ), .CLK(CLK) );
  SE2DIFF a_5_conv ( .A(a[5]), .Y(\a[5]_d ), .YN(\a[5]_d_N ), .CLK(CLK) );
  SE2DIFF a_4_conv ( .A(a[4]), .Y(\a[4]_d ), .YN(\a[4]_d_N ), .CLK(CLK) );
  SE2DIFF a_3_conv ( .A(a[3]), .Y(\a[3]_d ), .YN(\a[3]_d_N ), .CLK(CLK) );
  SE2DIFF a_2_conv ( .A(a[2]), .Y(\a[2]_d ), .YN(\a[2]_d_N ), .CLK(CLK) );
  SE2DIFF a_1_conv ( .A(a[1]), .Y(\a[1]_d ), .YN(\a[1]_d_N ), .CLK(CLK) );
  SE2DIFF a_0_conv ( .A(a[0]), .Y(\a[0]_d ), .YN(\a[0]_d_N ), .CLK(CLK) );
  SE2DIFF b_15_conv ( .A(b[15]), .Y(\b[15]_d ), .YN(\b[15]_d_N ), .CLK(CLK) );
  SE2DIFF b_14_conv ( .A(b[14]), .Y(\b[14]_d ), .YN(\b[14]_d_N ), .CLK(CLK) );
  SE2DIFF b_13_conv ( .A(b[13]), .Y(\b[13]_d ), .YN(\b[13]_d_N ), .CLK(CLK) );
  SE2DIFF b_12_conv ( .A(b[12]), .Y(\b[12]_d ), .YN(\b[12]_d_N ), .CLK(CLK) );
  SE2DIFF b_11_conv ( .A(b[11]), .Y(\b[11]_d ), .YN(\b[11]_d_N ), .CLK(CLK) );
  SE2DIFF b_10_conv ( .A(b[10]), .Y(\b[10]_d ), .YN(\b[10]_d_N ), .CLK(CLK) );
  SE2DIFF b_9_conv ( .A(b[9]), .Y(\b[9]_d ), .YN(\b[9]_d_N ), .CLK(CLK) );
  SE2DIFF b_8_conv ( .A(b[8]), .Y(\b[8]_d ), .YN(\b[8]_d_N ), .CLK(CLK) );
  SE2DIFF b_7_conv ( .A(b[7]), .Y(\b[7]_d ), .YN(\b[7]_d_N ), .CLK(CLK) );
  SE2DIFF b_6_conv ( .A(b[6]), .Y(\b[6]_d ), .YN(\b[6]_d_N ), .CLK(CLK) );
  SE2DIFF b_5_conv ( .A(b[5]), .Y(\b[5]_d ), .YN(\b[5]_d_N ), .CLK(CLK) );
  SE2DIFF b_4_conv ( .A(b[4]), .Y(\b[4]_d ), .YN(\b[4]_d_N ), .CLK(CLK) );
  SE2DIFF b_3_conv ( .A(b[3]), .Y(\b[3]_d ), .YN(\b[3]_d_N ), .CLK(CLK) );
  SE2DIFF b_2_conv ( .A(b[2]), .Y(\b[2]_d ), .YN(\b[2]_d_N ), .CLK(CLK) );
  SE2DIFF b_1_conv ( .A(b[1]), .Y(\b[1]_d ), .YN(\b[1]_d_N ), .CLK(CLK) );
  SE2DIFF b_0_conv ( .A(b[0]), .Y(\b[0]_d ), .YN(\b[0]_d_N ), .CLK(CLK) );
  SE2DIFF rnd_2_conv ( .A(rnd[2]), .Y(\rnd[2]_d ), .YN(\rnd[2]_d_N ), .CLK(CLK) );
  SE2DIFF rnd_1_conv ( .A(rnd[1]), .Y(\rnd[1]_d ), .YN(\rnd[1]_d_N ), .CLK(CLK) );
  SE2DIFF rnd_0_conv ( .A(rnd[0]), .Y(\rnd[0]_d ), .YN(\rnd[0]_d_N ), .CLK(CLK) );
  DIFF2SE o_15_conv ( .A(\o[15]_d ), .AN(\o[15]_d_N ), .Y(o[15]), .CLK(CLK) );
  DIFF2SE o_14_conv ( .A(\o[14]_d ), .AN(\o[14]_d_N ), .Y(o[14]), .CLK(CLK) );
  DIFF2SE o_13_conv ( .A(\o[13]_d ), .AN(\o[13]_d_N ), .Y(o[13]), .CLK(CLK) );
  DIFF2SE o_12_conv ( .A(\o[12]_d ), .AN(\o[12]_d_N ), .Y(o[12]), .CLK(CLK) );
  DIFF2SE o_11_conv ( .A(\o[11]_d ), .AN(\o[11]_d_N ), .Y(o[11]), .CLK(CLK) );
  DIFF2SE o_10_conv ( .A(\o[10]_d ), .AN(\o[10]_d_N ), .Y(o[10]), .CLK(CLK) );
  DIFF2SE o_9_conv ( .A(\o[9]_d ), .AN(\o[9]_d_N ), .Y(o[9]), .CLK(CLK) );
  DIFF2SE o_8_conv ( .A(\o[8]_d ), .AN(\o[8]_d_N ), .Y(o[8]), .CLK(CLK) );
  DIFF2SE o_7_conv ( .A(\o[7]_d ), .AN(\o[7]_d_N ), .Y(o[7]), .CLK(CLK) );
  DIFF2SE o_6_conv ( .A(\o[6]_d ), .AN(\o[6]_d_N ), .Y(o[6]), .CLK(CLK) );
  DIFF2SE o_5_conv ( .A(\o[5]_d ), .AN(\o[5]_d_N ), .Y(o[5]), .CLK(CLK) );
  DIFF2SE o_4_conv ( .A(\o[4]_d ), .AN(\o[4]_d_N ), .Y(o[4]), .CLK(CLK) );
  DIFF2SE o_3_conv ( .A(\o[3]_d ), .AN(\o[3]_d_N ), .Y(o[3]), .CLK(CLK) );
  DIFF2SE o_2_conv ( .A(\o[2]_d ), .AN(\o[2]_d_N ), .Y(o[2]), .CLK(CLK) );
  DIFF2SE o_1_conv ( .A(\o[1]_d ), .AN(\o[1]_d_N ), .Y(o[1]), .CLK(CLK) );
  DIFF2SE o_0_conv ( .A(\o[0]_d ), .AN(\o[0]_d_N ), .Y(o[0]), .CLK(CLK) );
  DIFF2SE status_5_conv ( .A(\status[5]_d ), .AN(\status[5]_d_N ), .Y(
        status[5]), .CLK(CLK) );
  DIFF2SE status_4_conv ( .A(\status[4]_d ), .AN(\status[4]_d_N ), .Y(
        status[4]), .CLK(CLK) );
  DIFF2SE status_3_conv ( .A(\status[3]_d ), .AN(\status[3]_d_N ), .Y(
        status[3]), .CLK(CLK) );
  DIFF2SE status_2_conv ( .A(\status[2]_d ), .AN(\status[2]_d_N ), .Y(
        status[2]), .CLK(CLK) );
  DIFF2SE status_1_conv ( .A(\status[1]_d ), .AN(\status[1]_d_N ), .Y(
        status[1]), .CLK(CLK) );
  DIFF2SE status_0_conv ( .A(\status[0]_d ), .AN(\status[0]_d_N ), .Y(
        status[0]), .CLK(CLK) );
endmodule

