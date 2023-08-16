module sender(I,out);
input [6:0]I;
output [11:0]out;
wire [3:0]w;
hamming_code h1(I,w);
assign out[0]=0;
assign out[1]=w[0];
assign out[2]=w[1];
assign out[4]=w[2];
assign out[8]=w[3];
assign out[3]=I[0];
assign out[5]=I[1];
assign out[6]=I[2];
assign out[7]=I[3];
assign out[9]=I[4];
assign out[10]=I[5];
assign out[11]=I[6];
endmodule
