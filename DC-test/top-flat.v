/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP2
// Date      : Sat Jul 19 02:01:45 2025
/////////////////////////////////////////////////////////////


module (CLK, RST, enable, value, led);
input [31:0] value;
output [7:0] led;
input CLK, RST, enable;
wire   n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59,
n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71,
\intadd_0/CI , \intadd_0/SUM_20 , \intadd_0/SUM_19 ,
\intadd_0/SUM_18 , \intadd_0/SUM_17 , \intadd_0/SUM_16 ,
\intadd_0/SUM_15 , \intadd_0/SUM_14 , \intadd_0/SUM_13 ,
\intadd_0/SUM_12 , \intadd_0/SUM_11 , \intadd_0/SUM_10 ,
\intadd_0/SUM_9 , \intadd_0/SUM_8 , \intadd_0/SUM_7 ,
\intadd_0/SUM_6 , \intadd_0/SUM_5 , \intadd_0/SUM_4 ,
\intadd_0/SUM_3 , \intadd_0/SUM_2 , \intadd_0/SUM_1 ,
\intadd_0/SUM_0 , \intadd_0/n22 , \intadd_0/n21 , \intadd_0/n20 ,
\intadd_0/n19 , \intadd_0/n18 , \intadd_0/n17 , \intadd_0/n16 ,
\intadd_0/n15 , \intadd_0/n14 , \intadd_0/n13 , \intadd_0/n12 ,
\intadd_0/n11 , \intadd_0/n10 , \intadd_0/n9 , \intadd_0/n8 ,
\intadd_0/n7 , \intadd_0/n6 , \intadd_0/n5 , \intadd_0/n4 ,
\intadd_0/n3 , \intadd_0/n2 , n73, n74, n75, n76, n77, n78, n79, n80,
n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94,
n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106,
n107, n108, n109, n110, n111, n112;
wire   [15:0] count;
wire   [7:0] state;

DFF_X1 \state_reg_0  ( .D(n71), .CK(CLK), .Q(state_0), .QN(n111) );
DFF_X1 \state_reg_1  ( .D(n70), .CK(CLK), .Q(state_1), .QN(n109) );
DFF_X1 \count_reg_1  ( .D(n69), .CK(CLK), .Q(count_1), .QN(n110) );
DFF_X1 \count_reg_0  ( .D(n68), .CK(CLK), .Q(count_0), .QN(n112) );
DFF_X1 \count_reg_2  ( .D(n67), .CK(CLK), .Q(count_2) );
DFF_X1 \count_reg_3  ( .D(n66), .CK(CLK), .Q(count_3) );
DFF_X1 \count_reg_4  ( .D(n65), .CK(CLK), .Q(count_4) );
DFF_X1 \count_reg_5  ( .D(n64), .CK(CLK), .Q(count_5) );
DFF_X1 \count_reg_6  ( .D(n63), .CK(CLK), .Q(count_6) );
DFF_X1 \count_reg_7  ( .D(n62), .CK(CLK), .Q(count_7) );
DFF_X1 \count_reg_8  ( .D(n61), .CK(CLK), .Q(count_8) );
DFF_X1 \count_reg_9  ( .D(n60), .CK(CLK), .Q(count_9) );
DFF_X1 \count_reg_10  ( .D(n59), .CK(CLK), .Q(count_10) );
DFF_X1 \count_reg_11  ( .D(n58), .CK(CLK), .Q(count_11) );
DFF_X1 \count_reg_12  ( .D(n57), .CK(CLK), .Q(count_12) );
DFF_X1 \count_reg_13  ( .D(n56), .CK(CLK), .Q(count_13) );
DFF_X1 \count_reg_14  ( .D(n55), .CK(CLK), .Q(count_14) );
DFF_X1 \count_reg_15  ( .D(n54), .CK(CLK), .Q(count_15) );
DFF_X1 \count_reg_16  ( .D(n53), .CK(CLK), .Q(led_0) );
DFF_X1 \count_reg_17  ( .D(n52), .CK(CLK), .Q(led_1) );
DFF_X1 \count_reg_18  ( .D(n51), .CK(CLK), .Q(led_2) );
DFF_X1 \count_reg_19  ( .D(n50), .CK(CLK), .Q(led_3) );
DFF_X1 \count_reg_20  ( .D(n49), .CK(CLK), .Q(led_4) );
DFF_X1 \count_reg_21  ( .D(n48), .CK(CLK), .Q(led_5) );
DFF_X1 \count_reg_22  ( .D(n47), .CK(CLK), .Q(led_6) );
DFF_X1 \count_reg_23  ( .D(n46), .CK(CLK), .Q(led_7) );
FA_X1 \intadd_0/U23  ( .A(value_2), .B(count_2), .CI(\intadd_0/CI ), .CO(
\intadd_0/n22 ), .S(\intadd_0/SUM_0 ) );
FA_X1 \intadd_0/U22  ( .A(value_3), .B(count_3), .CI(\intadd_0/n22 ), .CO(
\intadd_0/n21 ), .S(\intadd_0/SUM_1 ) );
FA_X1 \intadd_0/U21  ( .A(value_4), .B(count_4), .CI(\intadd_0/n21 ), .CO(
\intadd_0/n20 ), .S(\intadd_0/SUM_2 ) );
FA_X1 \intadd_0/U20  ( .A(value_5), .B(count_5), .CI(\intadd_0/n20 ), .CO(
\intadd_0/n19 ), .S(\intadd_0/SUM_3 ) );
FA_X1 \intadd_0/U19  ( .A(value_6), .B(count_6), .CI(\intadd_0/n19 ), .CO(
\intadd_0/n18 ), .S(\intadd_0/SUM_4 ) );
FA_X1 \intadd_0/U18  ( .A(value_7), .B(count_7), .CI(\intadd_0/n18 ), .CO(
\intadd_0/n17 ), .S(\intadd_0/SUM_5 ) );
FA_X1 \intadd_0/U17  ( .A(value_8), .B(count_8), .CI(\intadd_0/n17 ), .CO(
\intadd_0/n16 ), .S(\intadd_0/SUM_6 ) );
FA_X1 \intadd_0/U16  ( .A(value_9), .B(count_9), .CI(\intadd_0/n16 ), .CO(
\intadd_0/n15 ), .S(\intadd_0/SUM_7 ) );
FA_X1 \intadd_0/U15  ( .A(value_10), .B(count_10), .CI(\intadd_0/n15 ),
.CO(\intadd_0/n14 ), .S(\intadd_0/SUM_8 ) );
FA_X1 \intadd_0/U14  ( .A(value_11), .B(count_11), .CI(\intadd_0/n14 ),
.CO(\intadd_0/n13 ), .S(\intadd_0/SUM_9 ) );
FA_X1 \intadd_0/U13  ( .A(value_12), .B(count_12), .CI(\intadd_0/n13 ),
.CO(\intadd_0/n12 ), .S(\intadd_0/SUM_10 ) );
FA_X1 \intadd_0/U12  ( .A(value_13), .B(count_13), .CI(\intadd_0/n12 ),
.CO(\intadd_0/n11 ), .S(\intadd_0/SUM_11 ) );
FA_X1 \intadd_0/U11  ( .A(value_14), .B(count_14), .CI(\intadd_0/n11 ),
.CO(\intadd_0/n10 ), .S(\intadd_0/SUM_12 ) );
FA_X1 \intadd_0/U10  ( .A(value_15), .B(count_15), .CI(\intadd_0/n10 ),
.CO(\intadd_0/n9 ), .S(\intadd_0/SUM_13 ) );
FA_X1 \intadd_0/U9  ( .A(value_16), .B(led_0), .CI(\intadd_0/n9 ), .CO(
\intadd_0/n8 ), .S(\intadd_0/SUM_14 ) );
FA_X1 \intadd_0/U8  ( .A(value_17), .B(led_1), .CI(\intadd_0/n8 ), .CO(
\intadd_0/n7 ), .S(\intadd_0/SUM_15 ) );
FA_X1 \intadd_0/U7  ( .A(value_18), .B(led_2), .CI(\intadd_0/n7 ), .CO(
\intadd_0/n6 ), .S(\intadd_0/SUM_16 ) );
FA_X1 \intadd_0/U6  ( .A(value_19), .B(led_3), .CI(\intadd_0/n6 ), .CO(
\intadd_0/n5 ), .S(\intadd_0/SUM_17 ) );
FA_X1 \intadd_0/U5  ( .A(value_20), .B(led_4), .CI(\intadd_0/n5 ), .CO(
\intadd_0/n4 ), .S(\intadd_0/SUM_18 ) );
FA_X1 \intadd_0/U4  ( .A(value_21), .B(led_5), .CI(\intadd_0/n4 ), .CO(
\intadd_0/n3 ), .S(\intadd_0/SUM_19 ) );
FA_X1 \intadd_0/U3  ( .A(value_22), .B(led_6), .CI(\intadd_0/n3 ), .CO(
\intadd_0/n2 ), .S(\intadd_0/SUM_20 ) );
INV_X1 U75 ( .A(n105), .ZN(n97) );
NOR2_X1 U76 ( .A1(RST), .A2(state_0), .ZN(n73) );
NAND2_X1 U77 ( .A1(state_1), .A2(n73), .ZN(n105) );
XOR2_X1 U78 ( .A(led_7), .B(value_23), .Z(n74) );
XOR2_X1 U79 ( .A(\intadd_0/n2 ), .B(n74), .Z(n75) );
NOR2_X2 U80 ( .A1(RST), .A2(n97), .ZN(n101) );
AOI22_X1 U81 ( .A1(n97), .A2(n75), .B1(n101), .B2(led_7), .ZN(n76) );
INV_X1 U82 ( .A(n76), .ZN(n46) );
AOI22_X1 U83 ( .A1(n97), .A2(\intadd_0/SUM_0 ), .B1(n101), .B2(count_2),
.ZN(n77) );
INV_X1 U84 ( .A(n77), .ZN(n67) );
AOI22_X1 U85 ( .A1(n97), .A2(\intadd_0/SUM_1 ), .B1(n101), .B2(count_3),
.ZN(n78) );
INV_X1 U86 ( .A(n78), .ZN(n66) );
AOI22_X1 U87 ( .A1(n97), .A2(\intadd_0/SUM_2 ), .B1(n101), .B2(count_4),
.ZN(n79) );
INV_X1 U88 ( .A(n79), .ZN(n65) );
AOI22_X1 U89 ( .A1(n97), .A2(\intadd_0/SUM_3 ), .B1(n101), .B2(count_5),
.ZN(n80) );
INV_X1 U90 ( .A(n80), .ZN(n64) );
AOI22_X1 U91 ( .A1(n97), .A2(\intadd_0/SUM_4 ), .B1(n101), .B2(count_6),
.ZN(n81) );
INV_X1 U92 ( .A(n81), .ZN(n63) );
AOI22_X1 U93 ( .A1(n97), .A2(\intadd_0/SUM_5 ), .B1(n101), .B2(count_7),
.ZN(n82) );
INV_X1 U94 ( .A(n82), .ZN(n62) );
AOI22_X1 U95 ( .A1(n97), .A2(\intadd_0/SUM_6 ), .B1(n101), .B2(count_8),
.ZN(n83) );
INV_X1 U96 ( .A(n83), .ZN(n61) );
AOI22_X1 U97 ( .A1(n97), .A2(\intadd_0/SUM_7 ), .B1(n101), .B2(count_9),
.ZN(n84) );
INV_X1 U98 ( .A(n84), .ZN(n60) );
AOI22_X1 U99 ( .A1(n97), .A2(\intadd_0/SUM_8 ), .B1(n101), .B2(count_10),
.ZN(n85) );
INV_X1 U100 ( .A(n85), .ZN(n59) );
AOI22_X1 U101 ( .A1(n97), .A2(\intadd_0/SUM_9 ), .B1(n101), .B2(count_11),
.ZN(n86) );
INV_X1 U102 ( .A(n86), .ZN(n58) );
AOI22_X1 U103 ( .A1(n97), .A2(\intadd_0/SUM_10 ), .B1(n101), .B2(count_12),
.ZN(n87) );
INV_X1 U104 ( .A(n87), .ZN(n57) );
AOI22_X1 U105 ( .A1(n97), .A2(\intadd_0/SUM_11 ), .B1(n101), .B2(count_13),
.ZN(n88) );
INV_X1 U106 ( .A(n88), .ZN(n56) );
AOI22_X1 U107 ( .A1(n97), .A2(\intadd_0/SUM_12 ), .B1(n101), .B2(count_14),
.ZN(n89) );
INV_X1 U108 ( .A(n89), .ZN(n55) );
AOI22_X1 U109 ( .A1(n97), .A2(\intadd_0/SUM_13 ), .B1(n101), .B2(count_15),
.ZN(n90) );
INV_X1 U110 ( .A(n90), .ZN(n54) );
AOI22_X1 U111 ( .A1(n97), .A2(\intadd_0/SUM_14 ), .B1(n101), .B2(led_0),
.ZN(n91) );
INV_X1 U112 ( .A(n91), .ZN(n53) );
AOI22_X1 U113 ( .A1(n97), .A2(\intadd_0/SUM_15 ), .B1(n101), .B2(led_1),
.ZN(n92) );
INV_X1 U114 ( .A(n92), .ZN(n52) );
AOI22_X1 U115 ( .A1(n97), .A2(\intadd_0/SUM_16 ), .B1(n101), .B2(led_2),
.ZN(n93) );
INV_X1 U116 ( .A(n93), .ZN(n51) );
AOI22_X1 U117 ( .A1(n97), .A2(\intadd_0/SUM_17 ), .B1(n101), .B2(led_3),
.ZN(n94) );
INV_X1 U118 ( .A(n94), .ZN(n50) );
AOI22_X1 U119 ( .A1(n97), .A2(\intadd_0/SUM_18 ), .B1(n101), .B2(led_4),
.ZN(n95) );
INV_X1 U120 ( .A(n95), .ZN(n49) );
AOI22_X1 U121 ( .A1(n97), .A2(\intadd_0/SUM_19 ), .B1(n101), .B2(led_5),
.ZN(n96) );
INV_X1 U122 ( .A(n96), .ZN(n48) );
AOI22_X1 U123 ( .A1(n97), .A2(\intadd_0/SUM_20 ), .B1(n101), .B2(led_6),
.ZN(n98) );
INV_X1 U124 ( .A(n98), .ZN(n47) );
AOI21_X1 U125 ( .B1(enable), .B2(n109), .A(state_0), .ZN(n99) );
AOI211_X1 U126 ( .C1(state_0), .C2(n109), .A(RST), .B(n99), .ZN(n71) );
NOR2_X1 U127 ( .A1(n111), .A2(RST), .ZN(n70) );
NAND2_X1 U128 ( .A1(value_0), .A2(count_0), .ZN(n108) );
INV_X1 U129 ( .A(n108), .ZN(n106) );
XOR2_X1 U130 ( .A(value_1), .B(n106), .Z(n100) );
XNOR2_X1 U131 ( .A(count_1), .B(n100), .ZN(n102) );
INV_X1 U132 ( .A(n101), .ZN(n103) );
OAI22_X1 U133 ( .A1(n105), .A2(n102), .B1(n103), .B2(n110), .ZN(n69) );
XNOR2_X1 U134 ( .A(count_0), .B(value_0), .ZN(n104) );
OAI22_X1 U135 ( .A1(n105), .A2(n104), .B1(n103), .B2(n112), .ZN(n68) );
OAI21_X1 U136 ( .B1(n106), .B2(count_1), .A(value_1), .ZN(n107) );
OAI21_X1 U137 ( .B1(n110), .B2(n108), .A(n107), .ZN(\intadd_0/CI ) );
endmodule
