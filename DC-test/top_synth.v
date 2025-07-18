/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP2
// Date      : Sat Jul 19 02:01:45 2025
/////////////////////////////////////////////////////////////


module top ( CLK, RST, enable, value, led );
  input [31:0] value;
  output [7:0] led;
  input CLK, RST, enable;
  wire   n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59,
         n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71,
         \intadd_0/CI , \intadd_0/SUM[20] , \intadd_0/SUM[19] ,
         \intadd_0/SUM[18] , \intadd_0/SUM[17] , \intadd_0/SUM[16] ,
         \intadd_0/SUM[15] , \intadd_0/SUM[14] , \intadd_0/SUM[13] ,
         \intadd_0/SUM[12] , \intadd_0/SUM[11] , \intadd_0/SUM[10] ,
         \intadd_0/SUM[9] , \intadd_0/SUM[8] , \intadd_0/SUM[7] ,
         \intadd_0/SUM[6] , \intadd_0/SUM[5] , \intadd_0/SUM[4] ,
         \intadd_0/SUM[3] , \intadd_0/SUM[2] , \intadd_0/SUM[1] ,
         \intadd_0/SUM[0] , \intadd_0/n22 , \intadd_0/n21 , \intadd_0/n20 ,
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

  DFF_X1 \state_reg[0]  ( .D(n71), .CK(CLK), .Q(state[0]), .QN(n111) );
  DFF_X1 \state_reg[1]  ( .D(n70), .CK(CLK), .Q(state[1]), .QN(n109) );
  DFF_X1 \count_reg[1]  ( .D(n69), .CK(CLK), .Q(count[1]), .QN(n110) );
  DFF_X1 \count_reg[0]  ( .D(n68), .CK(CLK), .Q(count[0]), .QN(n112) );
  DFF_X1 \count_reg[2]  ( .D(n67), .CK(CLK), .Q(count[2]) );
  DFF_X1 \count_reg[3]  ( .D(n66), .CK(CLK), .Q(count[3]) );
  DFF_X1 \count_reg[4]  ( .D(n65), .CK(CLK), .Q(count[4]) );
  DFF_X1 \count_reg[5]  ( .D(n64), .CK(CLK), .Q(count[5]) );
  DFF_X1 \count_reg[6]  ( .D(n63), .CK(CLK), .Q(count[6]) );
  DFF_X1 \count_reg[7]  ( .D(n62), .CK(CLK), .Q(count[7]) );
  DFF_X1 \count_reg[8]  ( .D(n61), .CK(CLK), .Q(count[8]) );
  DFF_X1 \count_reg[9]  ( .D(n60), .CK(CLK), .Q(count[9]) );
  DFF_X1 \count_reg[10]  ( .D(n59), .CK(CLK), .Q(count[10]) );
  DFF_X1 \count_reg[11]  ( .D(n58), .CK(CLK), .Q(count[11]) );
  DFF_X1 \count_reg[12]  ( .D(n57), .CK(CLK), .Q(count[12]) );
  DFF_X1 \count_reg[13]  ( .D(n56), .CK(CLK), .Q(count[13]) );
  DFF_X1 \count_reg[14]  ( .D(n55), .CK(CLK), .Q(count[14]) );
  DFF_X1 \count_reg[15]  ( .D(n54), .CK(CLK), .Q(count[15]) );
  DFF_X1 \count_reg[16]  ( .D(n53), .CK(CLK), .Q(led[0]) );
  DFF_X1 \count_reg[17]  ( .D(n52), .CK(CLK), .Q(led[1]) );
  DFF_X1 \count_reg[18]  ( .D(n51), .CK(CLK), .Q(led[2]) );
  DFF_X1 \count_reg[19]  ( .D(n50), .CK(CLK), .Q(led[3]) );
  DFF_X1 \count_reg[20]  ( .D(n49), .CK(CLK), .Q(led[4]) );
  DFF_X1 \count_reg[21]  ( .D(n48), .CK(CLK), .Q(led[5]) );
  DFF_X1 \count_reg[22]  ( .D(n47), .CK(CLK), .Q(led[6]) );
  DFF_X1 \count_reg[23]  ( .D(n46), .CK(CLK), .Q(led[7]) );
  FA_X1 \intadd_0/U23  ( .A(value[2]), .B(count[2]), .CI(\intadd_0/CI ), .CO(
        \intadd_0/n22 ), .S(\intadd_0/SUM[0] ) );
  FA_X1 \intadd_0/U22  ( .A(value[3]), .B(count[3]), .CI(\intadd_0/n22 ), .CO(
        \intadd_0/n21 ), .S(\intadd_0/SUM[1] ) );
  FA_X1 \intadd_0/U21  ( .A(value[4]), .B(count[4]), .CI(\intadd_0/n21 ), .CO(
        \intadd_0/n20 ), .S(\intadd_0/SUM[2] ) );
  FA_X1 \intadd_0/U20  ( .A(value[5]), .B(count[5]), .CI(\intadd_0/n20 ), .CO(
        \intadd_0/n19 ), .S(\intadd_0/SUM[3] ) );
  FA_X1 \intadd_0/U19  ( .A(value[6]), .B(count[6]), .CI(\intadd_0/n19 ), .CO(
        \intadd_0/n18 ), .S(\intadd_0/SUM[4] ) );
  FA_X1 \intadd_0/U18  ( .A(value[7]), .B(count[7]), .CI(\intadd_0/n18 ), .CO(
        \intadd_0/n17 ), .S(\intadd_0/SUM[5] ) );
  FA_X1 \intadd_0/U17  ( .A(value[8]), .B(count[8]), .CI(\intadd_0/n17 ), .CO(
        \intadd_0/n16 ), .S(\intadd_0/SUM[6] ) );
  FA_X1 \intadd_0/U16  ( .A(value[9]), .B(count[9]), .CI(\intadd_0/n16 ), .CO(
        \intadd_0/n15 ), .S(\intadd_0/SUM[7] ) );
  FA_X1 \intadd_0/U15  ( .A(value[10]), .B(count[10]), .CI(\intadd_0/n15 ), 
        .CO(\intadd_0/n14 ), .S(\intadd_0/SUM[8] ) );
  FA_X1 \intadd_0/U14  ( .A(value[11]), .B(count[11]), .CI(\intadd_0/n14 ), 
        .CO(\intadd_0/n13 ), .S(\intadd_0/SUM[9] ) );
  FA_X1 \intadd_0/U13  ( .A(value[12]), .B(count[12]), .CI(\intadd_0/n13 ), 
        .CO(\intadd_0/n12 ), .S(\intadd_0/SUM[10] ) );
  FA_X1 \intadd_0/U12  ( .A(value[13]), .B(count[13]), .CI(\intadd_0/n12 ), 
        .CO(\intadd_0/n11 ), .S(\intadd_0/SUM[11] ) );
  FA_X1 \intadd_0/U11  ( .A(value[14]), .B(count[14]), .CI(\intadd_0/n11 ), 
        .CO(\intadd_0/n10 ), .S(\intadd_0/SUM[12] ) );
  FA_X1 \intadd_0/U10  ( .A(value[15]), .B(count[15]), .CI(\intadd_0/n10 ), 
        .CO(\intadd_0/n9 ), .S(\intadd_0/SUM[13] ) );
  FA_X1 \intadd_0/U9  ( .A(value[16]), .B(led[0]), .CI(\intadd_0/n9 ), .CO(
        \intadd_0/n8 ), .S(\intadd_0/SUM[14] ) );
  FA_X1 \intadd_0/U8  ( .A(value[17]), .B(led[1]), .CI(\intadd_0/n8 ), .CO(
        \intadd_0/n7 ), .S(\intadd_0/SUM[15] ) );
  FA_X1 \intadd_0/U7  ( .A(value[18]), .B(led[2]), .CI(\intadd_0/n7 ), .CO(
        \intadd_0/n6 ), .S(\intadd_0/SUM[16] ) );
  FA_X1 \intadd_0/U6  ( .A(value[19]), .B(led[3]), .CI(\intadd_0/n6 ), .CO(
        \intadd_0/n5 ), .S(\intadd_0/SUM[17] ) );
  FA_X1 \intadd_0/U5  ( .A(value[20]), .B(led[4]), .CI(\intadd_0/n5 ), .CO(
        \intadd_0/n4 ), .S(\intadd_0/SUM[18] ) );
  FA_X1 \intadd_0/U4  ( .A(value[21]), .B(led[5]), .CI(\intadd_0/n4 ), .CO(
        \intadd_0/n3 ), .S(\intadd_0/SUM[19] ) );
  FA_X1 \intadd_0/U3  ( .A(value[22]), .B(led[6]), .CI(\intadd_0/n3 ), .CO(
        \intadd_0/n2 ), .S(\intadd_0/SUM[20] ) );
  INV_X1 U75 ( .A(n105), .ZN(n97) );
  NOR2_X1 U76 ( .A1(RST), .A2(state[0]), .ZN(n73) );
  NAND2_X1 U77 ( .A1(state[1]), .A2(n73), .ZN(n105) );
  XOR2_X1 U78 ( .A(led[7]), .B(value[23]), .Z(n74) );
  XOR2_X1 U79 ( .A(\intadd_0/n2 ), .B(n74), .Z(n75) );
  NOR2_X2 U80 ( .A1(RST), .A2(n97), .ZN(n101) );
  AOI22_X1 U81 ( .A1(n97), .A2(n75), .B1(n101), .B2(led[7]), .ZN(n76) );
  INV_X1 U82 ( .A(n76), .ZN(n46) );
  AOI22_X1 U83 ( .A1(n97), .A2(\intadd_0/SUM[0] ), .B1(n101), .B2(count[2]), 
        .ZN(n77) );
  INV_X1 U84 ( .A(n77), .ZN(n67) );
  AOI22_X1 U85 ( .A1(n97), .A2(\intadd_0/SUM[1] ), .B1(n101), .B2(count[3]), 
        .ZN(n78) );
  INV_X1 U86 ( .A(n78), .ZN(n66) );
  AOI22_X1 U87 ( .A1(n97), .A2(\intadd_0/SUM[2] ), .B1(n101), .B2(count[4]), 
        .ZN(n79) );
  INV_X1 U88 ( .A(n79), .ZN(n65) );
  AOI22_X1 U89 ( .A1(n97), .A2(\intadd_0/SUM[3] ), .B1(n101), .B2(count[5]), 
        .ZN(n80) );
  INV_X1 U90 ( .A(n80), .ZN(n64) );
  AOI22_X1 U91 ( .A1(n97), .A2(\intadd_0/SUM[4] ), .B1(n101), .B2(count[6]), 
        .ZN(n81) );
  INV_X1 U92 ( .A(n81), .ZN(n63) );
  AOI22_X1 U93 ( .A1(n97), .A2(\intadd_0/SUM[5] ), .B1(n101), .B2(count[7]), 
        .ZN(n82) );
  INV_X1 U94 ( .A(n82), .ZN(n62) );
  AOI22_X1 U95 ( .A1(n97), .A2(\intadd_0/SUM[6] ), .B1(n101), .B2(count[8]), 
        .ZN(n83) );
  INV_X1 U96 ( .A(n83), .ZN(n61) );
  AOI22_X1 U97 ( .A1(n97), .A2(\intadd_0/SUM[7] ), .B1(n101), .B2(count[9]), 
        .ZN(n84) );
  INV_X1 U98 ( .A(n84), .ZN(n60) );
  AOI22_X1 U99 ( .A1(n97), .A2(\intadd_0/SUM[8] ), .B1(n101), .B2(count[10]), 
        .ZN(n85) );
  INV_X1 U100 ( .A(n85), .ZN(n59) );
  AOI22_X1 U101 ( .A1(n97), .A2(\intadd_0/SUM[9] ), .B1(n101), .B2(count[11]), 
        .ZN(n86) );
  INV_X1 U102 ( .A(n86), .ZN(n58) );
  AOI22_X1 U103 ( .A1(n97), .A2(\intadd_0/SUM[10] ), .B1(n101), .B2(count[12]), 
        .ZN(n87) );
  INV_X1 U104 ( .A(n87), .ZN(n57) );
  AOI22_X1 U105 ( .A1(n97), .A2(\intadd_0/SUM[11] ), .B1(n101), .B2(count[13]), 
        .ZN(n88) );
  INV_X1 U106 ( .A(n88), .ZN(n56) );
  AOI22_X1 U107 ( .A1(n97), .A2(\intadd_0/SUM[12] ), .B1(n101), .B2(count[14]), 
        .ZN(n89) );
  INV_X1 U108 ( .A(n89), .ZN(n55) );
  AOI22_X1 U109 ( .A1(n97), .A2(\intadd_0/SUM[13] ), .B1(n101), .B2(count[15]), 
        .ZN(n90) );
  INV_X1 U110 ( .A(n90), .ZN(n54) );
  AOI22_X1 U111 ( .A1(n97), .A2(\intadd_0/SUM[14] ), .B1(n101), .B2(led[0]), 
        .ZN(n91) );
  INV_X1 U112 ( .A(n91), .ZN(n53) );
  AOI22_X1 U113 ( .A1(n97), .A2(\intadd_0/SUM[15] ), .B1(n101), .B2(led[1]), 
        .ZN(n92) );
  INV_X1 U114 ( .A(n92), .ZN(n52) );
  AOI22_X1 U115 ( .A1(n97), .A2(\intadd_0/SUM[16] ), .B1(n101), .B2(led[2]), 
        .ZN(n93) );
  INV_X1 U116 ( .A(n93), .ZN(n51) );
  AOI22_X1 U117 ( .A1(n97), .A2(\intadd_0/SUM[17] ), .B1(n101), .B2(led[3]), 
        .ZN(n94) );
  INV_X1 U118 ( .A(n94), .ZN(n50) );
  AOI22_X1 U119 ( .A1(n97), .A2(\intadd_0/SUM[18] ), .B1(n101), .B2(led[4]), 
        .ZN(n95) );
  INV_X1 U120 ( .A(n95), .ZN(n49) );
  AOI22_X1 U121 ( .A1(n97), .A2(\intadd_0/SUM[19] ), .B1(n101), .B2(led[5]), 
        .ZN(n96) );
  INV_X1 U122 ( .A(n96), .ZN(n48) );
  AOI22_X1 U123 ( .A1(n97), .A2(\intadd_0/SUM[20] ), .B1(n101), .B2(led[6]), 
        .ZN(n98) );
  INV_X1 U124 ( .A(n98), .ZN(n47) );
  AOI21_X1 U125 ( .B1(enable), .B2(n109), .A(state[0]), .ZN(n99) );
  AOI211_X1 U126 ( .C1(state[0]), .C2(n109), .A(RST), .B(n99), .ZN(n71) );
  NOR2_X1 U127 ( .A1(n111), .A2(RST), .ZN(n70) );
  NAND2_X1 U128 ( .A1(value[0]), .A2(count[0]), .ZN(n108) );
  INV_X1 U129 ( .A(n108), .ZN(n106) );
  XOR2_X1 U130 ( .A(value[1]), .B(n106), .Z(n100) );
  XNOR2_X1 U131 ( .A(count[1]), .B(n100), .ZN(n102) );
  INV_X1 U132 ( .A(n101), .ZN(n103) );
  OAI22_X1 U133 ( .A1(n105), .A2(n102), .B1(n103), .B2(n110), .ZN(n69) );
  XNOR2_X1 U134 ( .A(count[0]), .B(value[0]), .ZN(n104) );
  OAI22_X1 U135 ( .A1(n105), .A2(n104), .B1(n103), .B2(n112), .ZN(n68) );
  OAI21_X1 U136 ( .B1(n106), .B2(count[1]), .A(value[1]), .ZN(n107) );
  OAI21_X1 U137 ( .B1(n110), .B2(n108), .A(n107), .ZN(\intadd_0/CI ) );
endmodule
