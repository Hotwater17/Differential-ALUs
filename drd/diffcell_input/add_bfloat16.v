/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : U-2022.12-SP7-3
// Date      : Wed Mar 12 13:42:47 2025
/////////////////////////////////////////////////////////////


module add_bfloat16 ( a, b, rnd, o, status );
  input [15:0] a;
  input [15:0] b;
  input [2:0] rnd;
  output [15:0] o;
  output [7:0] status;
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
         n398, n399, n400, n401, n402, n403, n404, n405, n406, n407, n408,
         n409, n410, n411, n412, n413, n414, n415, n416, n417, n418, n419,
         n420, n421, n422, n423, n424;
  assign status[6] = 1'b0;
  assign status[7] = 1'b0;

   AND2 U2 ( .AN(n69), .BN(n68), .YN
(n1) );
   AND2 U3 ( .AN(n214), .BN(n260), .YN
(n2) );
   AND2 U4 ( .AN(n212), .BN(n259), .YN
(n3) );
   AND2 U5 ( .AN(n79), .BN(n78), .YN
(n4) );
   INVD1_DIFF U6 ( .A(n308), .YN
(n310) );
   INVD1_DIFF U7 ( .A(a[14]), .YN
(n43) );
   INVD1_DIFF U8 ( .A(a[11]), .YN
(n9) );
   AND2 U9 ( .A(n9), .B(b[11]), .YN
(n67) );
   INVD1_DIFF U10 ( .A(a[9]), .YN
(n58) );
   INVD1_DIFF U11 ( .A(a[10]), .YN
(n5) );
   AOI22 U12 ( .A(n58), .B(b[9]), .C(b[10]), .D(n5), .YN
(n6) );
   AND2 U13 ( .A(n67), .B(n6), .YN
(n11) );
   INVD1_DIFF U14 ( .A(b[9]), .YN
(n57) );
   INVD1_DIFF U15 ( .A(b[8]), .YN
(n51) );
   AOI22 U16 ( .A(n57), .B(a[9]), .C(a[8]), .D(n51), .YN
(n8) );
   AND2 U17 ( .A(n67), .B(a[10]), .YN
(n7) );
   OAI22 U18 ( .A(n11), .B(n8), .C(b[10]), .D(n7), .YN
(n10) );
   AND2 U19 ( .AN(n9), .BN(b[11]), .Y
(n68) );
   AND2 U20 ( .AN(n10), .BN(n68), .Y
(n37) );
   INVD1_DIFF U21 ( .A(n11), .YN
(n34) );
   INVD1_DIFF U22 ( .A(b[7]), .YN
(n12) );
   AND2 U23 ( .A(n12), .B(a[7]), .YN
(n50) );
   AND2 U24 ( .AN(n12), .BN(a[7]), .Y
(n24) );
   AND2 U25 ( .AN(n24), .BN(b[6]), .Y
(n31) );
   INVD1_DIFF U26 ( .A(b[4]), .YN
(n20) );
   INVD1_DIFF U27 ( .A(b[5]), .YN
(n47) );
   AOI22 U28 ( .A(n20), .B(a[4]), .C(a[5]), .D(n47), .YN
(n29) );
   INVD1_DIFF U29 ( .A(b[1]), .YN
(n15) );
   INVD1_DIFF U30 ( .A(b[0]), .YN
(n13) );
   OAI22 U31 ( .A(a[0]), .B(n13), .C(n15), .D(a[1]), .Y
(n14) );
   AOI21 U32 ( .A(a[1]), .B(n15), .C(n14), .YN
(n16) );
   AND2 U33 ( .AN(b[2]), .BN(n16), .Y
(n19) );
   INVD1_DIFF U34 ( .A(n16), .YN
(n18) );
   INVD1_DIFF U35 ( .A(b[2]), .YN
(n17) );
   OAI22 U36 ( .A(a[2]), .B(n19), .C(n18), .D(n17), .YN
(n23) );
   AND2 U37 ( .AN(n23), .BN(b[3]), .Y
(n21) );
   OAI22 U38 ( .A(a[3]), .B(n21), .C(a[4]), .D(n20), .YN
(n22) );
   AOI21 U39 ( .A(b[3]), .B(n23), .C(n22), .Y
(n28) );
   INVD1_DIFF U40 ( .A(n24), .YN
(n49) );
   INVD1_DIFF U41 ( .A(a[5]), .YN
(n48) );
   INVD1_DIFF U42 ( .A(a[6]), .YN
(n25) );
   AOI22 U43 ( .A(n48), .B(b[5]), .C(b[6]), .D(n25), .YN
(n26) );
   AND2 U44 ( .A(n49), .B(n26), .YN
(n27) );
   AOI21 U45 ( .A(n29), .B(n28), .C(n27), .YN
(n30) );
   AOI21 U46 ( .A(n31), .B(a[6]), .C(n30), .YN
(n32) );
   INVD1_DIFF U47 ( .A(a[8]), .YN
(n52) );
   AOI22 U48 ( .A(n50), .B(n32), .C(b[8]), .D(n52), .YN
(n33) );
   AND2 U49 ( .A(n34), .B(n33), .YN
(n36) );
   INVD1_DIFF U50 ( .A(a[13]), .YN
(n44) );
   AND2 U51 ( .A(n44), .B(b[13]), .YN
(n74) );
   INVD1_DIFF U52 ( .A(a[12]), .YN
(n38) );
   AND2 U53 ( .A(n38), .B(b[12]), .YN
(n77) );
   AND2 U54 ( .A(n74), .B(n77), .YN
(n35) );
   AOI21 U55 ( .A(n37), .B(n36), .C(n35), .YN
(n41) );
   AND2 U56 ( .AN(n38), .BN(b[12]), .Y
(n79) );
   OAI22 U57 ( .A(b[14]), .B(n43), .C(b[13]), .D(n44), .YN
(n39) );
   AOI21 U58 ( .A(n79), .B(n74), .C(n39), .Y
(n40) );
   AND2 U59 ( .AN(n41), .BN(n40), .Y
(n42) );
   AOI21 U60 ( .A(b[14]), .B(n43), .C(n42), .Y
(n167) );
   INVD1_DIFF U61 ( .A(n167), .YN
(n243) );
   MUX2 U62 ( .D0(b[10]), .D1(a[10]), .S(n243), .YN
(n210) );
   MUX2 U63 ( .D0(b[11]), .D1(a[11]), .S(n243), .YN
(n290) );
   INVD1_DIFF U64 ( .A(n167), .YN
(n166) );
   AOI22 U65 ( .A(n167), .B(b[7]), .C(a[7]), .D(n166), .YN
(n410) );
   INVD1_DIFF U66 ( .A(n410), .YN
(n64) );
   AOI22 U67 ( .A(n167), .B(b[8]), .C(a[8]), .D(n166), .YN
(n56) );
   INVD1_DIFF U68 ( .A(n56), .YN
(n417) );
   AND2 U69 ( .AN(n64), .BN(n417), .Y
(n207) );
   AND2 U70 ( .AN(b[14]), .BN(a[14]), .Y
(n218) );
   AOI22 U71 ( .A(n167), .B(b[9]), .C(a[9]), .D(n243), .YN
(n186) );
   INVD1_DIFF U72 ( .A(b[13]), .YN
(n73) );
   MUX2 U73 ( .D0(n73), .D1(n44), .S(n243), .YN
(n301) );
   INVD1_DIFF U74 ( .A(n301), .YN
(n215) );
   MUX2 U75 ( .D0(b[12]), .D1(a[12]), .S(n243), .YN
(n294) );
   AND4 U76 ( .A(n218), .B(n186), .C(n215), .D(n294), .Y
(n45) );
   AND4 U77 ( .A(n210), .B(n290), .C(n207), .D(n45), .YN
(n312) );
   INVD1_DIFF U78 ( .A(n218), .YN
(n307) );
   INVD1_DIFF U79 ( .A(n294), .YN
(n214) );
   INVD1_DIFF U80 ( .A(n290), .YN
(n212) );
   INVD1_DIFF U81 ( .A(n186), .YN
(n423) );
   AND2 U82 ( .AN(n56), .BN(n410), .Y
(n208) );
   AND2 U83 ( .A(n423), .B(n208), .YN
(n209) );
   AND2 U84 ( .AN(n209), .BN(n210), .Y
(n211) );
   AND2 U85 ( .A(n212), .B(n211), .Y
(n213) );
   MUX2 U86 ( .D0(n294), .D1(n214), .S(n213), .YN
(n297) );
   INVD1_DIFF U87 ( .A(a[15]), .YN
(n46) );
   MUX2 U88 ( .D0(n46), .D1(a[15]), .S(b[15]), .YN
(n308) );
   MUX2 U89 ( .D0(n48), .D1(n47), .S(n243), .YN
(n126) );
   AND2 U90 ( .A(n50), .B(n49), .YN
(n130) );
   INVD1_DIFF U91 ( .A(n130), .YN
(n127) );
   AOI22 U92 ( .A(n167), .B(a[7]), .C(b[7]), .D(n166), .YN
(n258) );
   AND2 U93 ( .AN(n64), .BN(n258), .Y
(n55) );
   MUX2 U94 ( .D0(n52), .D1(n51), .S(n243), .YN
(n263) );
   AND2 U95 ( .AN(n127), .BN(n133), .Y
(n132) );
   INVD1_DIFF U96 ( .A(n133), .YN
(n125) );
   AOI22 U97 ( .A(n167), .B(a[4]), .C(b[4]), .D(n166), .YN
(n129) );
   AND2 U98 ( .AN(n125), .BN(n130), .Y
(n156) );
   AOI22 U99 ( .A(n167), .B(a[2]), .C(b[2]), .D(n166), .YN
(n144) );
   AOI22 U100 ( .A(n125), .B(n129), .C(n156), .D(n144), .YN
(n54) );
   AOI22 U101 ( .A(n167), .B(a[3]), .C(b[3]), .D(n166), .YN
(n128) );
   AOI21 U102 ( .A(n128), .B(n130), .C(n132), .YN
(n53) );
   AOI22 U103 ( .A(n126), .B(n132), .C(n54), .D(n53), .YN
(n107) );
   FA32_DRD U104 ( .A(n56), .B(n55), .CI(n263), .COUT
(n59), .SUM(n133) );
   MUX2 U105 ( .D0(n58), .D1(n57), .S(n243), .YN
(n264) );
   FA32_DRD U106 ( .A(n186), .B(n59), .CI(n264), .COUT
(n70), .SUM(n139) );
   MUX2 U107 ( .D0(a[10]), .D1(b[10]), .S(n243), .YN
(n62) );
   INVD1_DIFF U108 ( .A(n62), .YN
(n268) );
   AND2 U109 ( .AN(n263), .BN(n264), .Y
(n61) );
   AOI22 U110 ( .A(n167), .B(a[13]), .C(b[13]), .D(n166), .YN
(n66) );
   AOI22 U111 ( .A(n167), .B(a[12]), .C(b[12]), .D(n166), .YN
(n260) );
   AOI22 U112 ( .A(n167), .B(a[11]), .C(b[11]), .D(n166), .YN
(n259) );
   AND4 U113 ( .A(n66), .B(n260), .C(n259), .D(n258), .Y
(n60) );
   AND2 U114 ( .A(a[14]), .B(b[14]), .YN
(n257) );
   AND4 U115 ( .A(n62), .B(n61), .C(n60), .D(n257), .YN
(n65) );
   AND4 U116 ( .A(n423), .B(n301), .C(n214), .D(n212), .Y
(n63) );
   INVD1_DIFF U117 ( .A(n210), .YN
(n289) );
   AND4 U118 ( .A(n307), .B(n63), .C(n289), .D(n417), .YN
(n256) );
   INVD1_DIFF U119 ( .A(n256), .YN
(n280) );
   AND2 U120 ( .A(n280), .B(n64), .YN
(n275) );
   AND2 U121 ( .A(n65), .B(n275), .YN
(n122) );
   INVD1_DIFF U122 ( .A(n66), .YN
(n262) );
   AOI22 U123 ( .A(n262), .B(n215), .C(b[14]), .D(a[14]), .YN
(n84) );
   INVD1_DIFF U124 ( .A(n67), .YN
(n69) );
   FA32_DRD U125 ( .A(n210), .B(n70), .CI(n268), .COUT
(n71), .SUM(n104) );
   INVD1_DIFF U126 ( .A(n71), .YN
(n72) );
   AND2 U127 ( .A(n1), .B(n72), .YN
(n82) );
   AND2 U128 ( .A(n73), .B(a[13]), .YN
(n75) );
   AND2 U129 ( .A(n75), .B(n74), .YN
(n76) );
   AND2 U130 ( .A(n2), .B(n76), .YN
(n81) );
   INVD1_DIFF U131 ( .A(n77), .YN
(n78) );
   AND2 U132 ( .A(n3), .B(n4), .YN
(n80) );
   AND3 U133 ( .A(n82), .B(n81), .C(n80), .YN
(n83) );
   AOI21 U134 ( .A(n84), .B(n307), .C(n83), .Y
(n121) );
   AND2 U135 ( .AN(n122), .BN(n121), .Y
(n105) );
   AND2 U136 ( .A(n104), .B(n105), .YN
(n174) );
   INVD1_DIFF U137 ( .A(n174), .YN
(n85) );
   AND2 U138 ( .A(n139), .B(n85), .YN
(n90) );
   AOI22 U139 ( .A(n167), .B(a[6]), .C(b[6]), .D(n166), .YN
(n88) );
   AND2 U140 ( .A(n127), .B(n88), .YN
(n103) );
   AND2 U141 ( .AN(n139), .BN(n174), .Y
(n157) );
   AND2 U142 ( .A(n103), .B(n157), .YN
(n86) );
   OAI22 U143 ( .A(n107), .B(n90), .C(n125), .D(n86), .YN
(n87) );
   MUX2 U144 ( .D0(n308), .D1(n310), .S(n87), .YN
(n155) );
   AOI22 U145 ( .A(n167), .B(a[1]), .C(b[1]), .D(n166), .YN
(n102) );
   INVD1_DIFF U146 ( .A(n102), .YN
(n146) );
   INVD1_DIFF U147 ( .A(n156), .YN
(n137) );
   AND2 U148 ( .AN(n137), .BN(n90), .Y
(n204) );
   INVD1_DIFF U149 ( .A(n88), .YN
(n131) );
   OAI22 U150 ( .A(n127), .B(n131), .C(n126), .D(n137), .YN
(n89) );
   AND2 U151 ( .AN(n89), .BN(n132), .Y
(n171) );
   AOI22 U152 ( .A(n146), .B(n204), .C(n171), .D(n157), .YN
(n94) );
   AND2 U153 ( .AN(n90), .BN(n133), .Y
(n109) );
   AND2 U154 ( .A(n109), .B(n127), .Y
(n147) );
   INVD1_DIFF U155 ( .A(n128), .YN
(n92) );
   INVD1_DIFF U156 ( .A(n90), .YN
(n172) );
   AND3 U157 ( .A(n130), .B(n133), .C(n172), .YN
(n141) );
   AND2 U158 ( .A(n130), .B(n109), .YN
(n143) );
   OAI22 U159 ( .A(n144), .B(n141), .C(n129), .D(n143), .YN
(n91) );
   AOI21 U160 ( .A(n147), .B(n92), .C(n91), .YN
(n93) );
   AND2 U161 ( .A(n94), .B(n93), .YN
(n95) );
   MUX2 U162 ( .D0(n308), .D1(n310), .S(n95), .YN
(n152) );
   AOI22 U163 ( .A(n167), .B(a[0]), .C(b[0]), .D(n243), .YN
(n142) );
   INVD1_DIFF U164 ( .A(n142), .YN
(n113) );
   INVD1_DIFF U165 ( .A(n129), .YN
(n117) );
   AOI22 U166 ( .A(n130), .B(n126), .C(n117), .D(n156), .Y
(n96) );
   AOI21 U167 ( .A(n125), .B(n103), .C(n96), .Y
(n163) );
   AOI22 U168 ( .A(n113), .B(n204), .C(n157), .D(n163), .YN
(n100) );
   INVD1_DIFF U169 ( .A(n144), .YN
(n98) );
   OAI22 U170 ( .A(n128), .B(n143), .C(n102), .D(n141), .YN
(n97) );
   AOI21 U171 ( .A(n147), .B(n98), .C(n97), .YN
(n99) );
   AND2 U172 ( .A(n100), .B(n99), .YN
(n101) );
   MUX2 U173 ( .D0(n308), .D1(n310), .S(n101), .YN
(n189) );
   AOI22 U174 ( .A(n167), .B(b[0]), .C(a[0]), .D(n243), .YN
(n188) );
   AOI22 U175 ( .A(n130), .B(n102), .C(n142), .D(n127), .YN
(n110) );
   INVD1_DIFF U176 ( .A(n157), .YN
(n106) );
   AND3 U177 ( .A(n103), .B(n139), .C(n133), .YN
(n175) );
   INVD1_DIFF U178 ( .A(n104), .YN
(n114) );
   AND2 U179 ( .A(n114), .B(n105), .YN
(n138) );
   OAI22 U180 ( .A(n107), .B(n106), .C(n175), .D(n138), .YN
(n108) );
   AOI21 U181 ( .A(n110), .B(n109), .C(n108), .YN
(n240) );
   AND2 U182 ( .AN(n113), .BN(n146), .Y
(n118) );
   AOI21 U183 ( .A(n130), .B(n131), .C(n126), .YN
(n111) );
   AND4 U184 ( .A(n139), .B(n133), .C(n129), .D(n111), .Y
(n112) );
   AND4 U185 ( .A(n144), .B(n128), .C(n118), .D(n112), .YN
(n115) );
   AOI22 U186 ( .A(n115), .B(n114), .C(n132), .D(n113), .YN
(n124) );
   OAI22 U187 ( .A(n133), .B(n128), .C(n156), .D(n144), .YN
(n116) );
   AOI21 U188 ( .A(n132), .B(n117), .C(n116), .YN
(n119) );
   AOI21 U189 ( .A(n119), .B(n118), .C(n139), .YN
(n120) );
   AND2 U190 ( .AN(n121), .BN(n120), .Y
(n123) );
   AOI21 U191 ( .A(n124), .B(n123), .C(n122), .YN
(n241) );
   INVD1_DIFF U192 ( .A(n241), .YN
(n235) );
   AND3 U193 ( .A(n240), .B(n308), .C(n235), .Y
(n191) );
   AND3 U194 ( .A(n126), .B(n125), .C(n127), .YN
(n136) );
   AOI22 U195 ( .A(n130), .B(n129), .C(n128), .D(n127), .YN
(n134) );
   AOI22 U196 ( .A(n134), .B(n133), .C(n132), .D(n131), .YN
(n135) );
   AND2 U197 ( .A(n136), .B(n135), .YN
(n158) );
   AND2 U198 ( .AN(n138), .BN(n137), .Y
(n140) );
   AOI22 U199 ( .A(n158), .B(n157), .C(n140), .D(n139), .YN
(n149) );
   OAI22 U200 ( .A(n144), .B(n143), .C(n142), .D(n141), .YN
(n145) );
   AOI21 U201 ( .A(n147), .B(n146), .C(n145), .YN
(n148) );
   AND2 U202 ( .A(n149), .B(n148), .YN
(n190) );
   AND2 U203 ( .AN(n190), .BN(n310), .Y
(n192) );
   AND2 U204 ( .A(n191), .B(n192), .YN
(n187) );
   AOI22 U205 ( .A(n167), .B(b[1]), .C(a[1]), .D(n243), .YN
(n150) );
   AOI22 U206 ( .A(n167), .B(b[2]), .C(a[2]), .D(n166), .YN
(n153) );
   FA32_DRD U207 ( .A(n152), .B(n151), .CI(n150), .COUT
(n154), .SUM(n328) );
   AND2 U208 ( .A(n326), .B(n328), .YN
(n194) );
   INVD1_DIFF U209 ( .A(n194), .YN
(n165) );
   FA32_DRD U210 ( .A(n155), .B(n154), .CI(n153), .COUT
(n162), .SUM(n326) );
   AOI22 U211 ( .A(n167), .B(b[3]), .C(a[3]), .D(n243), .YN
(n161) );
   AOI22 U212 ( .A(n158), .B(n172), .C(n157), .D(n156), .YN
(n159) );
   MUX2 U213 ( .D0(n310), .D1(n308), .S(n159), .YN
(n160) );
   INVD1_DIFF U214 ( .A(n325), .YN
(n374) );
   FA32_DRD U215 ( .A(n162), .B(n161), .CI(n160), .COUT
(n170), .SUM(n325) );
   AOI22 U216 ( .A(n167), .B(b[4]), .C(a[4]), .D(n243), .YN
(n169) );
   AND2 U217 ( .A(n163), .B(n172), .YN
(n164) );
   MUX2 U218 ( .D0(n310), .D1(n308), .S(n164), .YN
(n168) );
   INVD1_DIFF U219 ( .A(n394), .YN
(n372) );
   AND2 U220 ( .AN(n374), .BN(n372), .Y
(n197) );
   AND2 U221 ( .A(n165), .B(n197), .YN
(n185) );
   AOI22 U222 ( .A(n167), .B(b[6]), .C(a[6]), .D(n243), .YN
(n182) );
   AOI22 U223 ( .A(n167), .B(b[5]), .C(a[5]), .D(n166), .YN
(n179) );
   FA32_DRD U224 ( .A(n170), .B(n169), .CI(n168), .COUT
(n178), .SUM(n394) );
   AND2 U225 ( .A(n172), .B(n171), .YN
(n173) );
   MUX2 U226 ( .D0(n310), .D1(n308), .S(n173), .YN
(n177) );
   AND2 U227 ( .AN(n175), .BN(n174), .Y
(n176) );
   MUX2 U228 ( .D0(n308), .D1(n310), .S(n176), .YN
(n180) );
   FA32_DRD U229 ( .A(n179), .B(n178), .CI(n177), .COUT
(n181), .SUM(n352) );
   AND2 U230 ( .A(n201), .B(n352), .YN
(n195) );
   FA32_DRD U231 ( .A(n182), .B(n181), .CI(n180), .COUT
(n184), .SUM(n201) );
   INVD1_DIFF U232 ( .A(n184), .YN
(n203) );
   MUX2 U233 ( .D0(n308), .D1(n310), .S(n204), .YN
(n183) );
   MUX2 U234 ( .D0(n184), .D1(n203), .S(n183), .YN
(n385) );
   INVD1_DIFF U235 ( .A(n385), .YN
(n206) );
   AND2 U236 ( .A(n308), .B(n206), .YN
(n199) );
   AND2 U237 ( .AN(n195), .BN(n199), .Y
(n334) );
   INVD1_DIFF U238 ( .A(n334), .YN
(n347) );
   AND2 U239 ( .AN(n185), .BN(n347), .Y
(n388) );
   AND2 U240 ( .A(n334), .B(n185), .YN
(n391) );
   INVD1_DIFF U241 ( .A(n391), .YN
(n379) );
   MUX2 U242 ( .D0(n423), .D1(n186), .S(n208), .YN
(n419) );
   FA32_DRD U243 ( .A(n189), .B(n188), .CI(n187), .COUT
(n151), .SUM(n329) );
   AOI21 U244 ( .A(n310), .B(n190), .C(n192), .YN
(n193) );
   MUX2 U245 ( .D0(n193), .D1(n192), .S(n191), .YN
(n319) );
   INVD1_DIFF U246 ( .A(n319), .YN
(n333) );
   AOI21 U247 ( .A(n329), .B(n333), .C(n194), .Y
(n196) );
   AOI21 U248 ( .A(n197), .B(n196), .C(n195), .YN
(n198) );
   AND2 U249 ( .AN(n199), .BN(n198), .Y
(n233) );
   INVD1_DIFF U250 ( .A(n329), .YN
(n320) );
   INVD1_DIFF U251 ( .A(n326), .YN
(n355) );
   AOI21 U252 ( .A(n328), .B(n320), .C(n355), .Y
(n200) );
   AOI21 U253 ( .A(n325), .B(n200), .C(n372), .Y
(n202) );
   INVD1_DIFF U254 ( .A(n201), .YN
(n390) );
   AOI21 U255 ( .A(n352), .B(n202), .C(n390), .Y
(n205) );
   MUX2 U256 ( .D0(n204), .D1(n310), .S(n203), .Y
(n384) );
   AOI21 U257 ( .A(n206), .B(n205), .C(n384), .YN
(n232) );
   INVD1_DIFF U258 ( .A(n232), .YN
(n237) );
   AND2 U259 ( .AN(n237), .BN(n410), .Y
(n224) );
   AND2 U260 ( .AN(n208), .BN(n207), .YN
(n414) );
   AOI21 U261 ( .A(n210), .B(n209), .C(n211), .Y
(n286) );
   INVD1_DIFF U262 ( .A(n222), .YN
(n221) );
   MUX2 U263 ( .D0(n290), .D1(n212), .S(n211), .YN
(n293) );
   AND2 U264 ( .AN(n221), .BN(n293), .YN
(n227) );
   AND2 U265 ( .AN(n297), .BN(n227), .Y
(n226) );
   INVD1_DIFF U266 ( .A(n226), .YN
(n223) );
   AND2 U267 ( .A(n214), .B(n213), .YN
(n216) );
   MUX2 U268 ( .D0(n301), .D1(n215), .S(n216), .YN
(n300) );
   AND2 U269 ( .AN(n223), .BN(n300), .Y
(n225) );
   AND2 U270 ( .AN(n216), .BN(n215), .Y
(n217) );
   MUX2 U271 ( .D0(n307), .D1(n218), .S(n217), .YN
(n304) );
   AND2 U272 ( .A(n225), .B(n304), .YN
(n230) );
   FA32_DRD U273 ( .A(n379), .B(n419), .CI(n219), .COUT
(n220), .SUM(n421) );
   FA32_DRD U274 ( .A(n388), .B(n220), .CI(n286), .COUT
(n222), .SUM(n287) );
   FA32_DRD U275 ( .A(n233), .B(n224), .CI(n414), .COUT
(n219), .SUM(n415) );
   MUX2 U276 ( .D0(n222), .D1(n221), .S(n293), .YN
(n291) );
   AND4 U277 ( .A(n421), .B(n287), .C(n415), .D(n291), .YN
(n229) );
   AND2 U278 ( .A(n223), .B(n300), .YN
(n298) );
   AOI21 U279 ( .A(n410), .B(n237), .C(n224), .YN
(n411) );
   INVD1_DIFF U280 ( .A(n225), .YN
(n299) );
   MUX2 U281 ( .D0(n299), .D1(n225), .S(n304), .YN
(n305) );
   AOI21 U282 ( .A(n297), .B(n227), .C(n226), .YN
(n295) );
   AND4 U283 ( .A(n298), .B(n411), .C(n305), .D(n295), .YN
(n228) );
   OAI22 U284 ( .A(n307), .B(n230), .C(n229), .D(n228), .YN
(n273) );
   AND2 U285 ( .A(n312), .B(n273), .YN
(n282) );
   INVD1_DIFF U286 ( .A(n233), .YN
(n239) );
   AND2 U287 ( .AN(n239), .BN(n237), .Y
(n373) );
   AND2 U288 ( .A(n388), .B(n373), .YN
(n313) );
   INVD1_DIFF U289 ( .A(n313), .YN
(n231) );
   AND2 U290 ( .AN(n282), .BN(n231), .Y
(status[3]) );
   AND2 U291 ( .AN(rnd[1]), .BN(rnd[0]), .Y
(n255) );
   AND2 U292 ( .AN(n232), .BN(n233), .Y
(n371) );
   INVD1_DIFF U293 ( .A(n328), .YN
(n343) );
   AND2 U294 ( .A(n239), .B(n232), .YN
(n353) );
   AND2 U295 ( .A(n237), .B(n233), .YN
(n327) );
   OAI22 U296 ( .A(n329), .B(n353), .C(n333), .D(n327), .YN
(n234) );
   AOI21 U297 ( .A(n371), .B(n343), .C(n234), .Y
(n356) );
   AND2 U298 ( .A(n347), .B(n356), .YN
(n335) );
   INVD1_DIFF U299 ( .A(n240), .YN
(n236) );
   MUX2 U300 ( .D0(n240), .D1(n236), .S(n241), .YN
(n249) );
   MUX2 U301 ( .D0(n249), .D1(n319), .S(n237), .Y
(n238) );
   AND3 U302 ( .A(n391), .B(n239), .C(n238), .YN
(n386) );
   INVD1_DIFF U303 ( .A(n371), .YN
(n351) );
   OAI22 U304 ( .A(n388), .B(n386), .C(n240), .D(n351), .YN
(n242) );
   AND2 U305 ( .AN(n242), .BN(n241), .Y
(n270) );
   AND2 U306 ( .A(n335), .B(n270), .YN
(n247) );
   INVD1_DIFF U307 ( .A(rnd[0]), .YN
(n244) );
   MUX2 U308 ( .D0(b[15]), .D1(a[15]), .S(n243), .YN
(n316) );
   MUX2 U309 ( .D0(n244), .D1(rnd[0]), .S(n316), .YN
(n245) );
   AND2 U310 ( .A(rnd[1]), .B(n245), .Y
(n250) );
   AND2 U311 ( .AN(rnd[2]), .BN(n250), .YN
(n246) );
   AOI21 U312 ( .A(n255), .B(n247), .C(n246), .YN
(n251) );
   INVD1_DIFF U313 ( .A(n327), .YN
(n383) );
   OAI22 U314 ( .A(n329), .B(n351), .C(n333), .D(n353), .YN
(n248) );
   AOI21 U315 ( .A(n383), .B(n249), .C(n248), .Y
(n346) );
   AND2 U316 ( .A(n346), .B(n347), .YN
(n269) );
   AOI21 U317 ( .A(rnd[2]), .B(rnd[0]), .C(n250), .YN
(n254) );
   OAI22 U318 ( .A(n251), .B(n269), .C(n254), .D(n270), .YN
(n272) );
   AND4 U319 ( .A(n272), .B(n390), .C(n343), .D(n355), .YN
(n253) );
   INVD1_DIFF U320 ( .A(n352), .YN
(n382) );
   AND4 U321 ( .A(n320), .B(n382), .C(n374), .D(n372), .YN
(n252) );
   AND2 U322 ( .AN(n253), .BN(n252), .Y
(n278) );
   AOI21 U323 ( .A(n278), .B(n385), .C(n384), .YN
(n279) );
   AND2 U324 ( .AN(n256), .BN(n279), .Y
(status[4]) );
   AND2 U325 ( .A(n313), .B(n312), .YN
(n309) );
   AOI21 U326 ( .A(n254), .B(n273), .C(n309), .Y
(status[0]) );
   INVD1_DIFF U327 ( .A(n254), .YN
(n408) );
   AND2 U328 ( .AN(n408), .BN(n255), .Y
(n281) );
   INVD1_DIFF U329 ( .A(status[4]), .YN
(n274) );
   OAI22 U330 ( .A(n281), .B(n274), .C(n410), .D(n256), .YN
(status[1]) );
   INVD1_DIFF U331 ( .A(n257), .YN
(n267) );
   AND2 U332 ( .AN(n259), .BN(n258), .Y
(n266) );
   INVD1_DIFF U333 ( .A(n260), .YN
(n261) );
   AND4 U334 ( .A(n264), .B(n263), .C(n262), .D(n261), .Y
(n265) );
   AND4 U335 ( .A(n268), .B(n267), .C(n266), .D(n265), .YN
(n311) );
   AND2 U336 ( .AN(n311), .BN(n310), .Y
(status[2]) );
   INVD1_DIFF U337 ( .A(status[3]), .YN
(n271) );
   AND4 U338 ( .A(n271), .B(n270), .C(n274), .D(n269), .YN
(status[5]) );
   AND2 U339 ( .A(n272), .B(n274), .YN
(n370) );
   INVD1_DIFF U340 ( .A(n273), .YN
(n276) );
   AND4 U341 ( .A(n370), .B(n276), .C(n275), .D(n274), .YN
(n342) );
   AND2 U342 ( .AN(n335), .BN(n342), .YN
(n277) );
   INVD1_DIFF U343 ( .A(n370), .YN
(n401) );
   AND2 U344 ( .A(n335), .B(n401), .YN
(n318) );
   AND2 U345 ( .A(n281), .B(status[4]), .YN
(n406) );
   AND3 U346 ( .A(n277), .B(n318), .C(n406), .YN
(o[0]) );
   AOI21 U347 ( .A(n278), .B(n319), .C(n310), .YN
(n283) );
   AOI21 U348 ( .A(n281), .B(n280), .C(n279), .YN
(n284) );
   AND2 U349 ( .AN(n283), .BN(n284), .Y
(n424) );
   AND3 U350 ( .A(n313), .B(n282), .C(n283), .YN
(n420) );
   INVD1_DIFF U351 ( .A(n283), .YN
(n285) );
   AND2 U352 ( .A(n285), .B(n284), .YN
(n418) );
   OAI22 U353 ( .A(n287), .B(n420), .C(n286), .D(n418), .YN
(n288) );
   AOI21 U354 ( .A(n424), .B(n289), .C(n288), .Y
(o[10]) );
   INVD1_DIFF U355 ( .A(n418), .YN
(n407) );
   INVD1_DIFF U356 ( .A(n424), .YN
(n409) );
   OAI22 U357 ( .A(n291), .B(n420), .C(n290), .D(n409), .YN
(n292) );
   AOI21 U358 ( .A(n293), .B(n407), .C(n292), .Y
(o[11]) );
   OAI22 U359 ( .A(n295), .B(n420), .C(n294), .D(n409), .YN
(n296) );
   AOI21 U360 ( .A(n297), .B(n407), .C(n296), .Y
(o[12]) );
   AOI21 U361 ( .A(n299), .B(n298), .C(n420), .Y
(n303) );
   AOI22 U362 ( .A(n301), .B(n424), .C(n300), .D(n407), .YN
(n302) );
   AND2 U363 ( .A(n303), .B(n302), .YN
(o[13]) );
   OAI22 U364 ( .A(n305), .B(n420), .C(n304), .D(n418), .YN
(n306) );
   AOI21 U365 ( .A(n424), .B(n307), .C(n306), .Y
(o[14]) );
   AND4 U366 ( .A(n309), .B(rnd[0]), .C(rnd[1]), .D(n308), .YN
(n317) );
   AOI21 U367 ( .A(n312), .B(n311), .C(n310), .Y
(n314) );
   AND2 U368 ( .A(n314), .B(n313), .YN
(n315) );
   OAI22 U369 ( .A(rnd[2]), .B(n317), .C(n316), .D(n315), .YN
(o[15]) );
   AND2 U370 ( .A(n318), .B(n342), .YN
(n338) );
   AND2 U371 ( .AN(n370), .BN(n335), .Y
(n323) );
   AOI22 U372 ( .A(n320), .B(n383), .C(n373), .D(n319), .YN
(n322) );
   INVD1_DIFF U373 ( .A(n353), .YN
(n389) );
   AOI22 U374 ( .A(n343), .B(n389), .C(n371), .D(n355), .YN
(n321) );
   AND2 U375 ( .A(n322), .B(n321), .YN
(n378) );
   AND2 U376 ( .A(n378), .B(n347), .YN
(n336) );
   MUX2 U377 ( .D0(n338), .D1(n323), .S(n336), .YN
(n324) );
   AND2 U378 ( .A(n406), .B(n324), .YN
(o[1]) );
   OAI22 U379 ( .A(n326), .B(n353), .C(n325), .D(n351), .YN
(n331) );
   INVD1_DIFF U380 ( .A(n373), .YN
(n393) );
   OAI22 U381 ( .A(n329), .B(n393), .C(n328), .D(n327), .YN
(n330) );
   AND2 U382 ( .AN(n331), .BN(n330), .Y
(n392) );
   AND2 U383 ( .A(n371), .B(n379), .YN
(n332) );
   OAI22 U384 ( .A(n334), .B(n392), .C(n333), .D(n332), .YN
(n341) );
   AND2 U385 ( .AN(n336), .BN(n335), .Y
(n340) );
   MUX2 U386 ( .D0(n340), .D1(n336), .S(n341), .Y
(n337) );
   AOI22 U387 ( .A(n341), .B(n338), .C(n337), .D(n401), .YN
(n339) );
   AND2 U388 ( .A(n406), .B(n339), .YN
(o[2]) );
   AND2 U389 ( .A(n341), .B(n340), .YN
(n359) );
   INVD1_DIFF U390 ( .A(n342), .YN
(n369) );
   AOI21 U391 ( .A(n401), .B(n359), .C(n369), .Y
(n364) );
   AND2 U392 ( .AN(n359), .BN(n370), .Y
(n349) );
   AOI22 U393 ( .A(n343), .B(n373), .C(n383), .D(n355), .YN
(n345) );
   AOI22 U394 ( .A(n374), .B(n389), .C(n371), .D(n372), .YN
(n344) );
   AND2 U395 ( .A(n345), .B(n344), .YN
(n348) );
   AOI22 U396 ( .A(n348), .B(n347), .C(n379), .D(n346), .YN
(n360) );
   MUX2 U397 ( .D0(n364), .D1(n349), .S(n360), .YN
(n350) );
   AND2 U398 ( .A(n406), .B(n350), .YN
(o[3]) );
   OAI22 U399 ( .A(n394), .B(n353), .C(n352), .D(n351), .YN
(n354) );
   AOI21 U400 ( .A(n373), .B(n355), .C(n354), .YN
(n358) );
   AOI22 U401 ( .A(n356), .B(n379), .C(n383), .D(n374), .YN
(n357) );
   AND2 U402 ( .A(n358), .B(n357), .YN
(n368) );
   INVD1_DIFF U403 ( .A(n360), .YN
(n367) );
   INVD1_DIFF U404 ( .A(n359), .YN
(n366) );
   INVD1_DIFF U405 ( .A(n368), .YN
(n361) );
   AND2 U406 ( .A(n366), .B(n361), .YN
(n362) );
   AOI22 U407 ( .A(n367), .B(n362), .C(n361), .D(n360), .YN
(n363) );
   AOI22 U408 ( .A(n368), .B(n364), .C(n363), .D(n401), .YN
(n365) );
   AND2 U409 ( .A(n406), .B(n365), .YN
(o[4]) );
   AND3 U410 ( .A(n368), .B(n367), .C(n366), .YN
(n398) );
   AOI21 U411 ( .A(n401), .B(n398), .C(n369), .Y
(n403) );
   AND2 U412 ( .AN(n398), .BN(n370), .Y
(n380) );
   AOI22 U413 ( .A(n382), .B(n389), .C(n371), .D(n390), .YN
(n376) );
   AOI22 U414 ( .A(n374), .B(n373), .C(n383), .D(n372), .YN
(n375) );
   AND2 U415 ( .A(n376), .B(n375), .YN
(n377) );
   AOI21 U416 ( .A(n379), .B(n378), .C(n377), .YN
(n399) );
   MUX2 U417 ( .D0(n403), .D1(n380), .S(n399), .YN
(n381) );
   AND2 U418 ( .A(n406), .B(n381), .YN
(o[5]) );
   AOI22 U419 ( .A(n385), .B(n384), .C(n383), .D(n382), .YN
(n397) );
   INVD1_DIFF U420 ( .A(n386), .YN
(n387) );
   AOI22 U421 ( .A(n390), .B(n389), .C(n388), .D(n387), .YN
(n396) );
   OAI22 U422 ( .A(n394), .B(n393), .C(n392), .D(n391), .Y
(n395) );
   AND3 U423 ( .A(n397), .B(n396), .C(n395), .YN
(n404) );
   AND2 U424 ( .AN(n404), .BN(n398), .Y
(n400) );
   MUX2 U425 ( .D0(n400), .D1(n404), .S(n399), .Y
(n402) );
   AOI22 U426 ( .A(n404), .B(n403), .C(n402), .D(n401), .YN
(n405) );
   AND2 U427 ( .A(n406), .B(n405), .YN
(o[6]) );
   AOI22 U428 ( .A(n408), .B(status[3]), .C(n410), .D(n407), .YN
(n413) );
   OAI22 U429 ( .A(n411), .B(n420), .C(n410), .D(n409), .Y
(n412) );
   AND2 U430 ( .A(n413), .B(n412), .YN
(o[7]) );
   OAI22 U431 ( .A(n415), .B(n420), .C(n414), .D(n418), .YN
(n416) );
   AOI21 U432 ( .A(n424), .B(n417), .C(n416), .Y
(o[8]) );
   OAI22 U433 ( .A(n421), .B(n420), .C(n419), .D(n418), .YN
(n422) );
   AOI21 U434 ( .A(n424), .B(n423), .C(n422), .Y
(o[9]) );
endmodule

;module SYMM_AO6_WRAP(
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