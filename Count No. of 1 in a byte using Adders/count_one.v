module count_one(I,out);
input [7:0]I;
output [3:0]out;
wire w1,w2,w3,w4,w5,w6,w7,w8,w9,w10;
fa a1(I[6],I[5],I[4],w1,w2);
fa a2(I[3],I[2],I[1],w3,w4);
fa a3(w1,w3,I[0],w5,w6);
fa a4(w2,w4,w6,w7,w8);
ha a5(w5,I[7],out[0],w9);
ha a6(w7,w9,out[1],w10);
ha a7(w8,w10,out[2],out[3]);
endmodule
