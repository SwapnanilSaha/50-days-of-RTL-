module bcd_excess(I,out);
input [3:0]I;
output [3:0]out;
wire [9:0]w;
decoder d1(I,w);
assign out[3]=w[5]||w[6]||w[7]||w[8]||w[9];
assign out[2]=w[1]||w[2]||w[3]||w[4]||w[9];
assign out[1]=w[0]||w[3]||w[4]||w[7]||w[8];
assign out[0]=w[0]||w[2]||w[4]||w[6]||w[8];
endmodule
