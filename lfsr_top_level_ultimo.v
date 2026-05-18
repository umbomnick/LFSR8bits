module lfsr_8bit_flat (clk, q0, q1, q2, q3, q4, q5, q6, q7);
   input clk;
   output q0, q1, q2, q3, q4, q5, q6, q7;
   wire x1, x2, feedback;
   wire qb0, n1_0, n2_0, n3_0, n4_0;
   wire qb1, n1_1, n2_1, n3_1, n4_1;
   wire qb2, n1_2, n2_2, n3_2, n4_2;
   wire qb3, n1_3, n2_3, n3_3, n4_3;
   wire qb4, n1_4, n2_4, n3_4, n4_4;
   wire qb5, n1_5, n2_5, n3_5, n4_5;
   wire qb6, n1_6, n2_6, n3_6, n4_6;
   wire qb7, n1_7, n2_7, n3_7, n4_7;

   xor (x1, q3, q4);
   xor (x2, x1, q5);
   xor (feedback, x2, q7);

   nand (n1_0, n2_0, n4_0);
   nand (n2_0, n1_0, clk);
   nand (n3_0, n2_0, clk, n4_0);
   nand (n4_0, n3_0, feedback);
   nand (q0, n2_0, qb0);
   nand (qb0, q0, n3_0);

   nand (n1_1, n2_1, n4_1);
   nand (n2_1, n1_1, clk);
   nand (n3_1, n2_1, clk, n4_1);
   nand (n4_1, n3_1, q0);
   nand (q1, n2_1, qb1);
   nand (qb1, q1, n3_1);

   nand (n1_2, n2_2, n4_2);
   nand (n2_2, n1_2, clk);
   nand (n3_2, n2_2, clk, n4_2);
   nand (n4_2, n3_2, q1);
   nand (q2, n2_2, qb2);
   nand (qb2, q2, n3_2);

   nand (n1_3, n2_3, n4_3);
   nand (n2_3, n1_3, clk);
   nand (n3_3, n2_3, clk, n4_3);
   nand (n4_3, n3_3, q2);
   nand (q3, n2_3, qb3);
   nand (qb3, q3, n3_3);

   nand (n1_4, n2_4, n4_4);
   nand (n2_4, n1_4, clk);
   nand (n3_4, n2_4, clk, n4_4);
   nand (n4_4, n3_4, q3);
   nand (q4, n2_4, qb4);
   nand (qb4, q4, n3_4);

   nand (n1_5, n2_5, n4_5);
   nand (n2_5, n1_5, clk);
   nand (n3_5, n2_5, clk, n4_5);
   nand (n4_5, n3_5, q4);
   nand (q5, n2_5, qb5);
   nand (qb5, q5, n3_5);

   nand (n1_6, n2_6, n4_6);
   nand (n2_6, n1_6, clk);
   nand (n3_6, n2_6, clk, n4_6);
   nand (n4_6, n3_6, q5);
   nand (q6, n2_6, qb6);
   nand (qb6, q6, n3_6);

   nand (n1_7, n2_7, n4_7);
   nand (n2_7, n1_7, clk);
   nand (n3_7, n2_7, clk, n4_7);
   nand (n4_7, n3_7, q6);
   nand (q7, n2_7, qb7);
   nand (qb7, q7, n3_7);

endmodule