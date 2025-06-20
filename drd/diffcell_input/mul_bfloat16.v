/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : U-2022.12-SP7-3
// Date      : Wed Mar 12 13:44:47 2025
/////////////////////////////////////////////////////////////


module mul_bfloat16 ( a, b, rnd, o, status );
  input [15:0] a;
  input [15:0] b;
  input [2:0] rnd;
  output [15:0] o;
  output [5:0] status;
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
         n398, n399, n400;
  //assign status[6] = 1'b0;
  //assign status[7] = 1'b0;

   AND4 U3 ( .A(b[12]), .B(b[11]), .C(b[14]), .D(b[13]), .YN
(n3) );
   AND4 U4 ( .A(b[7]), .B(b[8]), .C(b[10]), .D(b[9]), .YN
(n2) );
   INVD1_DIFF U5 ( .A(a[12]), .YN
(n22) );
   INVD1_DIFF U6 ( .A(a[10]), .YN
(n17) );
   AND2 U7 ( .A(a[7]), .B(a[8]), .YN
(n16) );
   INVD1_DIFF U8 ( .A(n16), .YN
(n15) );
   AND2 U9 ( .A(n15), .B(a[9]), .YN
(n18) );
   AND2 U10 ( .AN(n17), .BN(n18), .Y
(n19) );
   AND2 U11 ( .A(n19), .B(a[11]), .YN
(n23) );
   AND2 U12 ( .AN(n22), .BN(n23), .Y
(n21) );
   INVD1_DIFF U13 ( .A(n21), .YN
(n25) );
   INVD1_DIFF U14 ( .A(a[13]), .YN
(n24) );
   AND2 U15 ( .AN(n25), .BN(n24), .Y
(n26) );
   INVD1_DIFF U16 ( .A(n26), .YN
(n1) );
   INVD1_DIFF U17 ( .A(a[14]), .YN
(n4) );
   OAI22 U18 ( .A(n3), .B(n2), .C(n1), .D(n4), .YN
(n382) );
   INVD1_DIFF U19 ( .A(n382), .YN
(n378) );
   AND2 U20 ( .AN(a[7]), .BN(a[8]), .Y
(n14) );
   AND2 U21 ( .AN(a[9]), .BN(a[10]), .Y
(n6) );
   AND2 U22 ( .AN(a[11]), .BN(a[12]), .Y
(n5) );
   AND4 U23 ( .A(n6), .B(n5), .C(n24), .D(n4), .Y
(n12) );
   AND2 U24 ( .AN(b[10]), .BN(b[9]), .Y
(n11) );
   AND2 U25 ( .AN(b[12]), .BN(b[11]), .Y
(n9) );
   AND2 U26 ( .AN(b[14]), .BN(b[13]), .Y
(n8) );
   INVD1_DIFF U27 ( .A(b[7]), .YN
(n229) );
   INVD1_DIFF U28 ( .A(b[8]), .YN
(n7) );
   AND4 U29 ( .A(n9), .B(n8), .C(n229), .D(n7), .Y
(n10) );
   AOI22 U30 ( .A(n14), .B(n12), .C(n11), .D(n10), .YN
(n260) );
   OAI22 U31 ( .A(n378), .B(n260), .C(a[15]), .D(b[15]), .YN
(n13) );
   AOI21 U32 ( .A(b[15]), .B(a[15]), .C(n13), .YN
(o[15]) );
   AND2 U33 ( .AN(n15), .BN(n14), .Y
(n33) );
   AND2 U34 ( .AN(n229), .BN(a[7]), .Y
(n228) );
   MUX2 U35 ( .D0(n16), .D1(n15), .S(a[9]), .YN
(n34) );
   AOI21 U36 ( .A(n18), .B(n17), .C(n19), .YN
(n31) );
   INVD1_DIFF U37 ( .A(n19), .YN
(n20) );
   MUX2 U38 ( .D0(n20), .D1(n19), .S(a[11]), .YN
(n29) );
   AOI21 U39 ( .A(n23), .B(n22), .C(n21), .YN
(n40) );
   AOI21 U40 ( .A(n25), .B(n24), .C(n26), .YN
(n36) );
   AND2 U41 ( .AN(n26), .BN(a[14]), .Y
(n38) );
   INVD1_DIFF U42 ( .A(n28), .YN
(n27) );
   AND2 U43 ( .A(n27), .B(n38), .YN
(n361) );
   AND2 U44 ( .A(n28), .B(a[14]), .YN
(n372) );
   AND2 U45 ( .A(n372), .B(n361), .Y
(n299) );
   FA32_DRD U46 ( .A(b[11]), .B(n30), .CI(n29), .COUT
(n41), .SUM(n253) );
   FA32_DRD U47 ( .A(b[10]), .B(n32), .CI(n31), .COUT
(n30), .SUM(n303) );
   FA32_DRD U48 ( .A(b[8]), .B(n33), .CI(n228), .COUT
(n35), .SUM(n395) );
   INVD1_DIFF U49 ( .A(n395), .YN
(n391) );
   FA32_DRD U50 ( .A(b[9]), .B(n35), .CI(n34), .COUT
(n32), .SUM(n252) );
   INVD1_DIFF U51 ( .A(n252), .YN
(n397) );
   AND2 U52 ( .AN(n391), .BN(n397), .Y
(n42) );
   FA32_DRD U53 ( .A(b[13]), .B(n37), .CI(n36), .COUT
(n39), .SUM(n321) );
   FA32_DRD U54 ( .A(b[14]), .B(n39), .CI(n38), .COUT
(n28), .SUM(n325) );
   FA32_DRD U55 ( .A(b[12]), .B(n41), .CI(n40), .COUT
(n37), .SUM(n322) );
   AND3 U56 ( .A(n321), .B(n325), .C(n322), .Y
(n255) );
   AND4 U57 ( .A(n253), .B(n303), .C(n42), .D(n255), .YN
(n300) );
   AND2 U58 ( .A(n300), .B(n299), .YN
(n362) );
   INVD1_DIFF U59 ( .A(a[6]), .YN
(n66) );
   INVD1_DIFF U60 ( .A(b[5]), .YN
(n202) );
   AND2 U61 ( .AN(n66), .BN(n202), .Y
(n43) );
   INVD1_DIFF U62 ( .A(b[4]), .YN
(n201) );
   AND2 U63 ( .AN(n66), .BN(n201), .Y
(n44) );
   FA32_DRD U64 ( .A(a[4]), .B(b[4]), .CI(n43), .COUT
(n175), .SUM(n49) );
   INVD1_DIFF U65 ( .A(b[6]), .YN
(n68) );
   INVD1_DIFF U66 ( .A(a[5]), .YN
(n206) );
   AND2 U67 ( .AN(n68), .BN(n206), .Y
(n48) );
   AND2 U68 ( .AN(n68), .BN(n66), .Y
(n176) );
   AND2 U69 ( .AN(n202), .BN(n206), .Y
(n47) );
   INVD1_DIFF U70 ( .A(b[3]), .YN
(n114) );
   AND2 U71 ( .AN(n66), .BN(n114), .Y
(n57) );
   INVD1_DIFF U72 ( .A(a[4]), .YN
(n205) );
   AND2 U73 ( .AN(n68), .BN(n205), .Y
(n45) );
   FA32_DRD U74 ( .A(a[3]), .B(b[3]), .CI(n44), .COUT
(n50), .SUM(n56) );
   INVD1_DIFF U75 ( .A(a[3]), .YN
(n90) );
   AND2 U76 ( .AN(n68), .BN(n90), .Y
(n62) );
   AND2 U77 ( .AN(n202), .BN(n205), .Y
(n61) );
   AND2 U78 ( .AN(n201), .BN(n206), .Y
(n60) );
   FA32_DRD U79 ( .A(n47), .B(n46), .CI(n45), .COUT
(n53), .SUM(n54) );
   FA32_DRD U80 ( .A(n50), .B(n49), .CI(n48), .COUT
(n174), .SUM(n51) );
   FA32_DRD U81 ( .A(n53), .B(n52), .CI(n51), .COUT
(n179), .SUM(n185) );
   FA32_DRD U82 ( .A(n56), .B(n55), .CI(n54), .COUT
(n52), .SUM(n65) );
   AND2 U83 ( .A(b[1]), .B(a[1]), .YN
(n131) );
   INVD1_DIFF U84 ( .A(n131), .YN
(n127) );
   INVD1_DIFF U85 ( .A(b[2]), .YN
(n196) );
   AND2 U86 ( .AN(n66), .BN(n196), .Y
(n72) );
   INVD1_DIFF U87 ( .A(a[2]), .YN
(n199) );
   AND2 U88 ( .AN(n68), .BN(n199), .Y
(n71) );
   AND2 U89 ( .AN(n114), .BN(n206), .Y
(n70) );
   FA32_DRD U90 ( .A(a[2]), .B(b[2]), .CI(n57), .COUT
(n46), .SUM(n58) );
   AND2 U91 ( .AN(n201), .BN(n205), .Y
(n74) );
   INVD1_DIFF U92 ( .A(b[0]), .YN
(n69) );
   INVD1_DIFF U93 ( .A(a[0]), .YN
(n115) );
   AND2 U94 ( .AN(n69), .BN(n115), .Y
(n133) );
   AND2 U95 ( .AN(n202), .BN(n90), .Y
(n73) );
   FA32_DRD U96 ( .A(n127), .B(n59), .CI(n58), .COUT
(n64), .SUM(n76) );
   FA32_DRD U97 ( .A(n62), .B(n61), .CI(n60), .COUT
(n55), .SUM(n75) );
   FA32_DRD U98 ( .A(n65), .B(n64), .CI(n63), .COUT
(n184), .SUM(n188) );
   INVD1_DIFF U99 ( .A(a[1]), .YN
(n113) );
   AND2 U100 ( .AN(n68), .BN(n113), .Y
(n83) );
   AND2 U101 ( .AN(n202), .BN(n199), .Y
(n82) );
   AND2 U102 ( .AN(n114), .BN(n205), .Y
(n81) );
   INVD1_DIFF U103 ( .A(b[1]), .YN
(n67) );
   AND2 U104 ( .AN(n66), .BN(n67), .Y
(n80) );
   AND2 U105 ( .AN(n196), .BN(n206), .Y
(n79) );
   AND2 U106 ( .AN(n201), .BN(n90), .Y
(n78) );
   AOI21 U107 ( .A(n113), .B(n67), .C(n127), .YN
(n87) );
   AND4 U108 ( .A(a[5]), .B(b[0]), .C(b[1]), .D(a[6]), .Y
(n101) );
   AND2 U109 ( .AN(n196), .BN(n205), .Y
(n93) );
   AND2 U110 ( .AN(n202), .BN(n113), .Y
(n92) );
   AND2 U111 ( .AN(n68), .BN(n115), .Y
(n91) );
   AOI21 U112 ( .A(n115), .B(n69), .C(n133), .YN
(n99) );
   FA32_DRD U113 ( .A(n72), .B(n71), .CI(n70), .COUT
(n59), .SUM(n85) );
   FA32_DRD U114 ( .A(n74), .B(n133), .CI(n73), .COUT
(n77), .SUM(n84) );
   FA32_DRD U115 ( .A(n77), .B(n76), .CI(n75), .COUT
(n63), .SUM(n170) );
   AND2 U116 ( .AN(n114), .BN(n90), .Y
(n112) );
   AND4 U117 ( .A(a[4]), .B(a[5]), .C(b[0]), .D(b[1]), .Y
(n111) );
   AND2 U118 ( .AN(n201), .BN(n199), .Y
(n110) );
   FA32_DRD U119 ( .A(n80), .B(n79), .CI(n78), .COUT
(n88), .SUM(n97) );
   FA32_DRD U120 ( .A(n83), .B(n82), .CI(n81), .COUT
(n89), .SUM(n96) );
   FA32_DRD U121 ( .A(n86), .B(n85), .CI(n84), .COUT
(n171), .SUM(n168) );
   FA32_DRD U122 ( .A(n89), .B(n88), .CI(n87), .COUT
(n172), .SUM(n167) );
   AND2 U123 ( .AN(n196), .BN(n90), .Y
(n120) );
   AND2 U124 ( .AN(n114), .BN(n199), .Y
(n119) );
   AND2 U125 ( .AN(n202), .BN(n115), .Y
(n118) );
   FA32_DRD U126 ( .A(n93), .B(n92), .CI(n91), .COUT
(n100), .SUM(n106) );
   AND2 U127 ( .A(b[0]), .B(a[6]), .YN
(n95) );
   AND2 U128 ( .A(a[5]), .B(b[1]), .YN
(n94) );
   AOI21 U129 ( .A(n95), .B(n94), .C(n101), .YN
(n105) );
   FA32_DRD U130 ( .A(n98), .B(n97), .CI(n96), .COUT
(n169), .SUM(n103) );
   FA32_DRD U131 ( .A(n101), .B(n100), .CI(n99), .COUT
(n86), .SUM(n102) );
   FA32_DRD U132 ( .A(n104), .B(n103), .CI(n102), .COUT
(n182), .SUM(n194) );
   FA32_DRD U133 ( .A(n107), .B(n106), .CI(n105), .COUT
(n104), .SUM(n166) );
   AND2 U134 ( .A(a[5]), .B(b[0]), .YN
(n109) );
   AND2 U135 ( .A(a[4]), .B(b[1]), .YN
(n108) );
   AOI21 U136 ( .A(n109), .B(n108), .C(n111), .YN
(n117) );
   AND2 U137 ( .AN(n201), .BN(n113), .Y
(n116) );
   AND4 U138 ( .A(a[4]), .B(a[3]), .C(b[0]), .D(b[1]), .Y
(n121) );
   FA32_DRD U139 ( .A(n112), .B(n111), .CI(n110), .COUT
(n98), .SUM(n164) );
   AND2 U140 ( .AN(n196), .BN(n199), .Y
(n126) );
   AND2 U141 ( .AN(n114), .BN(n113), .Y
(n125) );
   AND2 U142 ( .AN(n201), .BN(n115), .Y
(n124) );
   FA32_DRD U143 ( .A(n117), .B(n116), .CI(n121), .COUT
(n165), .SUM(n161) );
   FA32_DRD U144 ( .A(n120), .B(n119), .CI(n118), .COUT
(n107), .SUM(n160) );
   AND2 U145 ( .A(a[4]), .B(b[0]), .YN
(n123) );
   AND2 U146 ( .A(a[3]), .B(b[1]), .YN
(n122) );
   AOI21 U147 ( .A(n123), .B(n122), .C(n121), .YN
(n146) );
   FA32_DRD U148 ( .A(n126), .B(n125), .CI(n124), .COUT
(n162), .SUM(n145) );
   AND4 U149 ( .A(a[2]), .B(a[3]), .C(b[0]), .D(b[1]), .Y
(n144) );
   AND2 U150 ( .AN(n159), .BN(n158), .YN
(n157) );
   AND2 U151 ( .A(a[0]), .B(b[2]), .YN
(n130) );
   INVD1_DIFF U152 ( .A(n130), .YN
(n128) );
   AND2 U153 ( .AN(n128), .BN(n127), .Y
(n129) );
   AND2 U154 ( .AN(n129), .BN(n199), .Y
(n134) );
   AND2 U155 ( .AN(n131), .BN(n130), .Y
(n147) );
   AND2 U156 ( .AN(n147), .BN(n131), .Y
(n132) );
   AOI22 U157 ( .A(b[0]), .B(n134), .C(n133), .D(n132), .YN
(n143) );
   AND2 U158 ( .A(b[2]), .B(a[1]), .YN
(n149) );
   INVD1_DIFF U159 ( .A(n149), .YN
(n138) );
   INVD1_DIFF U160 ( .A(n147), .YN
(n136) );
   AND2 U161 ( .A(a[0]), .B(b[3]), .YN
(n135) );
   MUX2 U162 ( .D0(n147), .D1(n136), .S(n135), .YN
(n137) );
   MUX2 U163 ( .D0(n138), .D1(n149), .S(n137), .YN
(n142) );
   AND2 U164 ( .A(a[3]), .B(b[0]), .YN
(n140) );
   AND2 U165 ( .A(a[2]), .B(b[1]), .YN
(n139) );
   AOI21 U166 ( .A(n140), .B(n139), .C(n144), .Y
(n141) );
   FA32_DRD U167 ( .A(n143), .B(n142), .CI(n141), .COUT
(n155) );
   FA32_DRD U168 ( .A(n146), .B(n145), .CI(n144), .COUT
(n158), .SUM(n150) );
   AOI21 U169 ( .A(a[0]), .B(b[3]), .C(n147), .YN
(n148) );
   AND2 U170 ( .AN(n149), .BN(n148), .Y
(n151) );
   AND2 U171 ( .AN(n150), .BN(n151), .Y
(n154) );
   INVD1_DIFF U172 ( .A(n150), .YN
(n153) );
   INVD1_DIFF U173 ( .A(n151), .YN
(n152) );
   OAI22 U174 ( .A(n155), .B(n154), .C(n153), .D(n152), .YN
(n156) );
   AOI22 U175 ( .A(n159), .B(n158), .C(n157), .D(n156), .YN
(n231) );
   FA32_DRD U176 ( .A(n162), .B(n161), .CI(n160), .COUT
(n163), .SUM(n159) );
   INVD1_DIFF U177 ( .A(n163), .YN
(n232) );
   AND2 U178 ( .A(n231), .B(n232), .Y
(n234) );
   FA32_DRD U179 ( .A(n166), .B(n165), .CI(n164), .COUT
(n193), .SUM(n237) );
   INVD1_DIFF U180 ( .A(n237), .YN
(n236) );
   OAI22 U181 ( .A(n231), .B(n232), .C(n234), .D(n236), .YN
(n192) );
   FA32_DRD U182 ( .A(n169), .B(n168), .CI(n167), .COUT
(n191), .SUM(n180) );
   FA32_DRD U183 ( .A(n172), .B(n171), .CI(n170), .COUT
(n187), .SUM(n189) );
   FA32_DRD U184 ( .A(n175), .B(n174), .CI(n173), .COUT
(n250), .SUM(n177) );
   FA32_DRD U185 ( .A(a[5]), .B(b[5]), .CI(n176), .COUT
(n247), .SUM(n173) );
   FA32_DRD U186 ( .A(n179), .B(n178), .CI(n177), .COUT
(n249), .SUM(n341) );
   FA32_DRD U187 ( .A(n182), .B(n181), .CI(n180), .COUT
(n190), .SUM(n292) );
   FA32_DRD U188 ( .A(n185), .B(n184), .CI(n183), .COUT
(n178), .SUM(n343) );
   FA32_DRD U189 ( .A(n188), .B(n187), .CI(n186), .COUT
(n183), .SUM(n331) );
   FA32_DRD U190 ( .A(n191), .B(n190), .CI(n189), .COUT
(n186), .SUM(n333) );
   FA32_DRD U191 ( .A(n194), .B(n193), .CI(n192), .COUT
(n181), .SUM(n287) );
   AND4 U192 ( .A(n343), .B(n331), .C(n333), .D(n287), .YN
(n245) );
   AOI21 U193 ( .A(b[5]), .B(n201), .C(b[3]), .Y
(n195) );
   AOI21 U194 ( .A(n196), .B(n195), .C(b[1]), .YN
(n197) );
   AND2 U195 ( .AN(b[0]), .BN(n197), .YN
(n266) );
   AOI21 U196 ( .A(a[5]), .B(n205), .C(a[3]), .Y
(n198) );
   AOI21 U197 ( .A(n199), .B(n198), .C(a[1]), .YN
(n200) );
   AND2 U198 ( .AN(a[0]), .BN(n200), .YN
(n265) );
   AND2 U199 ( .AN(n266), .BN(n265), .Y
(n209) );
   INVD1_DIFF U200 ( .A(n209), .YN
(n268) );
   AND2 U201 ( .AN(b[2]), .BN(b[3]), .Y
(n214) );
   AND2 U202 ( .A(n202), .B(n201), .YN
(n204) );
   AND2 U203 ( .AN(b[1]), .BN(b[0]), .Y
(n215) );
   INVD1_DIFF U204 ( .A(n215), .YN
(n203) );
   AOI21 U205 ( .A(n214), .B(n204), .C(n203), .YN
(n210) );
   INVD1_DIFF U206 ( .A(n210), .YN
(n211) );
   AND2 U207 ( .AN(a[2]), .BN(a[3]), .Y
(n217) );
   AND2 U208 ( .A(n206), .B(n205), .YN
(n208) );
   AND2 U209 ( .AN(a[1]), .BN(a[0]), .Y
(n216) );
   INVD1_DIFF U210 ( .A(n216), .YN
(n207) );
   AOI21 U211 ( .A(n217), .B(n208), .C(n207), .Y
(n212) );
   MUX2 U212 ( .D0(n211), .D1(n210), .S(n212), .YN
(n218) );
   AND2 U213 ( .AN(n210), .BN(n209), .Y
(n213) );
   OAI22 U214 ( .A(n213), .B(n212), .C(n211), .D(n268), .Y
(n222) );
   AND2 U215 ( .A(n215), .B(n214), .YN
(n221) );
   AND2 U216 ( .A(n222), .B(n221), .Y
(n220) );
   AND2 U217 ( .A(n217), .B(n216), .YN
(n219) );
   AOI22 U218 ( .A(n268), .B(n218), .C(n220), .D(n219), .YN
(n263) );
   AND2 U219 ( .AN(n218), .BN(n268), .YN
(n223) );
   OAI22 U220 ( .A(n222), .B(n221), .C(n220), .D(n219), .YN
(n267) );
   AOI21 U221 ( .A(n263), .B(n223), .C(n267), .YN
(n240) );
   INVD1_DIFF U222 ( .A(rnd[0]), .YN
(n224) );
   MUX2 U223 ( .D0(rnd[0]), .D1(n224), .S(o[15]), .YN
(n225) );
   AND2 U224 ( .A(n225), .B(rnd[1]), .YN
(n241) );
   INVD1_DIFF U225 ( .A(n241), .YN
(n226) );
   AOI21 U226 ( .A(rnd[0]), .B(rnd[2]), .C(n226), .YN
(n364) );
   INVD1_DIFF U227 ( .A(n364), .YN
(n376) );
   INVD1_DIFF U228 ( .A(n240), .YN
(n271) );
   INVD1_DIFF U229 ( .A(n287), .YN
(n282) );
   AND2 U230 ( .AN(rnd[1]), .BN(rnd[0]), .Y
(n261) );
   INVD1_DIFF U231 ( .A(rnd[2]), .YN
(n242) );
   AND2 U232 ( .A(n261), .B(n242), .YN
(n243) );
   INVD1_DIFF U233 ( .A(n243), .YN
(n283) );
   AND3 U234 ( .A(n271), .B(n282), .C(n283), .YN
(n239) );
   INVD1_DIFF U235 ( .A(n253), .YN
(n309) );
   AND2 U236 ( .AN(n321), .BN(n325), .Y
(n227) );
   INVD1_DIFF U237 ( .A(n303), .YN
(n308) );
   AND4 U238 ( .A(n227), .B(n391), .C(n397), .D(n308), .Y
(n230) );
   AOI21 U239 ( .A(a[7]), .B(n229), .C(n228), .YN
(n396) );
   INVD1_DIFF U240 ( .A(n396), .YN
(n387) );
   INVD1_DIFF U241 ( .A(n322), .YN
(n316) );
   AND4 U242 ( .A(n309), .B(n230), .C(n387), .D(n316), .YN
(n257) );
   AND2 U243 ( .AN(n232), .BN(n231), .Y
(n233) );
   AND2 U244 ( .AN(n234), .BN(n233), .Y
(n235) );
   MUX2 U245 ( .D0(n237), .D1(n236), .S(n235), .YN
(n238) );
   AND2 U246 ( .A(n257), .B(n238), .YN
(n270) );
   AOI22 U247 ( .A(n240), .B(n376), .C(n239), .D(n270), .Y
(n244) );
   AND3 U248 ( .A(n243), .B(n242), .C(n241), .YN
(n290) );
   AND2 U249 ( .A(n244), .B(n290), .YN
(n280) );
   AND2 U250 ( .AN(n245), .BN(n280), .Y
(n246) );
   AND4 U251 ( .A(n354), .B(n341), .C(n292), .D(n246), .YN
(n251) );
   FA32_DRD U252 ( .A(a[6]), .B(b[6]), .CI(n247), .COUT
(n352), .SUM(n248) );
   FA32_DRD U253 ( .A(n250), .B(n249), .CI(n248), .COUT
(n351), .SUM(n354) );
   AND2 U254 ( .AN(n352), .BN(n351), .Y
(n295) );
   AND2 U255 ( .A(n251), .B(n295), .YN
(n380) );
   AND3 U256 ( .A(n396), .B(n252), .C(n395), .YN
(n302) );
   AND2 U257 ( .A(n253), .B(n303), .YN
(n254) );
   AND2 U258 ( .AN(n302), .BN(n254), .Y
(n313) );
   AOI22 U259 ( .A(n362), .B(n380), .C(n255), .D(n313), .YN
(n256) );
   AND2 U260 ( .A(n299), .B(n256), .YN
(n276) );
   AND3 U261 ( .A(n378), .B(n361), .C(n276), .YN
(n275) );
   INVD1_DIFF U262 ( .A(n275), .YN
(status[4]) );
   INVD1_DIFF U263 ( .A(n257), .YN
(n259) );
   INVD1_DIFF U264 ( .A(n361), .YN
(n258) );
   AOI21 U265 ( .A(n259), .B(n372), .C(n258), .YN
(n370) );
   AOI21 U266 ( .A(n361), .B(n380), .C(n370), .Y
(n278) );
   AND2 U267 ( .A(n260), .B(n378), .YN
(n369) );
   AND2 U268 ( .AN(n278), .BN(n369), .Y
(status[3]) );
   INVD1_DIFF U269 ( .A(n260), .YN
(n262) );
   AOI22 U270 ( .A(n378), .B(n262), .C(n364), .D(status[3]), .Y
(status[0])
         );
   AND2 U271 ( .AN(n378), .BN(n260), .Y
(status[2]) );
   AND2 U272 ( .AN(n376), .BN(n261), .Y
(n373) );
   OAI22 U273 ( .A(n373), .B(n275), .C(n378), .D(n262), .YN
(status[1]) );
   INVD1_DIFF U274 ( .A(n263), .YN
(n264) );
   AOI21 U275 ( .A(n266), .B(n265), .C(n264), .YN
(n269) );
   AOI21 U276 ( .A(n269), .B(n268), .C(n267), .Y
(n284) );
   INVD1_DIFF U277 ( .A(n295), .YN
(n279) );
   AND2 U278 ( .AN(n279), .BN(n270), .Y
(n272) );
   AOI22 U279 ( .A(n284), .B(n282), .C(n272), .D(n271), .YN
(n273) );
   INVD1_DIFF U280 ( .A(n369), .YN
(n368) );
   AOI21 U281 ( .A(n273), .B(n368), .C(status[3]), .YN
(n274) );
   AND2 U282 ( .A(n275), .B(n274), .YN
(status[5]) );
   AND2 U283 ( .A(n373), .B(status[4]), .YN
(n360) );
   INVD1_DIFF U284 ( .A(n276), .YN
(n277) );
   AND3 U285 ( .A(n278), .B(n368), .C(n277), .YN
(n296) );
   AND2 U286 ( .AN(n296), .BN(n279), .Y
(n356) );
   AND2 U287 ( .AN(n280), .BN(n279), .YN
(n281) );
   AND2 U288 ( .AN(n281), .BN(n282), .Y
(n289) );
   AOI21 U289 ( .A(n282), .B(n281), .C(n289), .YN
(n297) );
   AND2 U290 ( .AN(n284), .BN(n364), .Y
(n286) );
   AND2 U291 ( .A(n284), .B(n283), .YN
(n285) );
   OAI22 U292 ( .A(n287), .B(n286), .C(n292), .D(n285), .YN
(n288) );
   AND2 U293 ( .AN(n288), .BN(n295), .Y
(n291) );
   AOI21 U294 ( .A(n291), .B(n290), .C(n289), .YN
(n294) );
   INVD1_DIFF U295 ( .A(n292), .YN
(n293) );
   AND2 U296 ( .AN(n293), .BN(n294), .Y
(n332) );
   AOI21 U297 ( .A(n294), .B(n293), .C(n332), .YN
(n329) );
   AND2 U298 ( .AN(n296), .BN(n295), .Y
(n357) );
   AOI22 U299 ( .A(n356), .B(n297), .C(n329), .D(n357), .YN
(n298) );
   AND2 U300 ( .A(n360), .B(n298), .YN
(o[0]) );
   AOI21 U301 ( .A(n361), .B(n362), .C(n382), .YN
(n398) );
   AND4 U302 ( .A(n299), .B(n368), .C(n380), .D(n300), .YN
(n385) );
   AND2 U303 ( .AN(n385), .BN(n302), .Y
(n306) );
   INVD1_DIFF U304 ( .A(n385), .YN
(n394) );
   INVD1_DIFF U305 ( .A(n300), .YN
(n301) );
   AND2 U306 ( .AN(n301), .BN(n380), .Y
(n366) );
   INVD1_DIFF U307 ( .A(n366), .YN
(n312) );
   AND3 U308 ( .A(n372), .B(n370), .C(n368), .YN
(n371) );
   AND2 U309 ( .AN(n312), .BN(n371), .Y
(n386) );
   AOI21 U310 ( .A(n394), .B(n302), .C(n386), .Y
(n305) );
   AOI22 U311 ( .A(n308), .B(n306), .C(n305), .D(n303), .YN
(n304) );
   AND2 U312 ( .A(n398), .B(n304), .YN
(o[10]) );
   AOI21 U313 ( .A(n394), .B(n308), .C(n305), .YN
(n310) );
   AND2 U314 ( .A(n309), .B(n306), .YN
(n307) );
   OAI22 U315 ( .A(n310), .B(n309), .C(n308), .D(n307), .Y
(n311) );
   AND2 U316 ( .A(n398), .B(n311), .YN
(o[11]) );
   AND2 U317 ( .A(n313), .B(n394), .YN
(n317) );
   INVD1_DIFF U318 ( .A(n317), .YN
(n324) );
   OAI22 U319 ( .A(n313), .B(n385), .C(n312), .D(n371), .YN
(n315) );
   AOI22 U320 ( .A(n316), .B(n324), .C(n315), .D(n322), .YN
(n314) );
   AND2 U321 ( .A(n398), .B(n314), .YN
(o[12]) );
   AOI21 U322 ( .A(n394), .B(n316), .C(n315), .Y
(n319) );
   AND2 U323 ( .AN(n317), .BN(n321), .Y
(n318) );
   AOI22 U324 ( .A(n319), .B(n321), .C(n318), .D(n322), .YN
(n320) );
   AND2 U325 ( .A(n398), .B(n320), .YN
(o[13]) );
   AND2 U326 ( .AN(n386), .BN(n394), .YN
(n326) );
   AND2 U327 ( .A(n322), .B(n321), .Y
(n323) );
   AOI22 U328 ( .A(n326), .B(n325), .C(n324), .D(n323), .YN
(n327) );
   AND2 U329 ( .A(n398), .B(n327), .YN
(o[14]) );
   INVD1_DIFF U330 ( .A(n333), .YN
(n328) );
   MUX2 U331 ( .D0(n328), .D1(n333), .S(n332), .YN
(n336) );
   AOI22 U332 ( .A(n356), .B(n329), .C(n357), .D(n336), .YN
(n330) );
   AND2 U333 ( .A(n360), .B(n330), .YN
(o[1]) );
   INVD1_DIFF U334 ( .A(n331), .YN
(n335) );
   AND2 U335 ( .A(n333), .B(n332), .YN
(n334) );
   AND2 U336 ( .AN(n334), .BN(n335), .Y
(n342) );
   AOI21 U337 ( .A(n335), .B(n334), .C(n342), .YN
(n339) );
   AOI22 U338 ( .A(n356), .B(n336), .C(n357), .D(n339), .YN
(n337) );
   AND2 U339 ( .A(n360), .B(n337), .YN
(o[2]) );
   INVD1_DIFF U340 ( .A(n343), .YN
(n338) );
   MUX2 U341 ( .D0(n338), .D1(n343), .S(n342), .YN
(n346) );
   AOI22 U342 ( .A(n356), .B(n339), .C(n346), .D(n357), .YN
(n340) );
   AND2 U343 ( .A(n360), .B(n340), .YN
(o[3]) );
   INVD1_DIFF U344 ( .A(n341), .YN
(n345) );
   AND2 U345 ( .A(n343), .B(n342), .YN
(n344) );
   AND2 U346 ( .AN(n344), .BN(n345), .Y
(n353) );
   AOI21 U347 ( .A(n345), .B(n344), .C(n353), .YN
(n349) );
   AOI22 U348 ( .A(n356), .B(n346), .C(n349), .D(n357), .YN
(n347) );
   AND2 U349 ( .A(n360), .B(n347), .YN
(o[4]) );
   INVD1_DIFF U350 ( .A(n354), .YN
(n348) );
   MUX2 U351 ( .D0(n348), .D1(n354), .S(n353), .YN
(n355) );
   AOI22 U352 ( .A(n355), .B(n357), .C(n356), .D(n349), .YN
(n350) );
   AND2 U353 ( .A(n360), .B(n350), .YN
(o[5]) );
   AOI22 U354 ( .A(n354), .B(n353), .C(n352), .D(n351), .Y
(n358) );
   AOI22 U355 ( .A(n358), .B(n357), .C(n356), .D(n355), .YN
(n359) );
   AND2 U356 ( .A(n360), .B(n359), .YN
(o[6]) );
   AND2 U357 ( .A(n362), .B(n361), .YN
(n365) );
   INVD1_DIFF U358 ( .A(n362), .YN
(n363) );
   OAI22 U359 ( .A(n373), .B(n365), .C(n364), .D(n363), .YN
(n367) );
   AOI21 U360 ( .A(n368), .B(n367), .C(n366), .Y
(n381) );
   AND2 U361 ( .AN(n370), .BN(n369), .Y
(n375) );
   OAI22 U362 ( .A(n373), .B(n372), .C(n387), .D(n371), .YN
(n374) );
   AOI21 U363 ( .A(n376), .B(n375), .C(n374), .YN
(n377) );
   AND2 U364 ( .A(n378), .B(n377), .YN
(n379) );
   OAI22 U365 ( .A(n382), .B(n381), .C(n380), .D(n379), .YN
(n384) );
   AND2 U366 ( .A(n387), .B(n394), .YN
(n383) );
   AND2 U367 ( .A(n384), .B(n383), .YN
(o[7]) );
   AND2 U368 ( .AN(n385), .BN(n387), .Y
(n389) );
   AOI21 U369 ( .A(n394), .B(n387), .C(n386), .YN
(n393) );
   INVD1_DIFF U370 ( .A(n393), .YN
(n388) );
   AOI22 U371 ( .A(n391), .B(n389), .C(n388), .D(n395), .YN
(n390) );
   AND2 U372 ( .A(n398), .B(n390), .YN
(o[8]) );
   AND2 U373 ( .A(n391), .B(n394), .YN
(n392) );
   AOI21 U374 ( .A(n393), .B(n392), .C(n397), .Y
(n400) );
   AND4 U375 ( .A(n397), .B(n396), .C(n395), .D(n394), .YN
(n399) );
   AND3 U376 ( .A(n400), .B(n399), .C(n398), .YN
(o[9]) );
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