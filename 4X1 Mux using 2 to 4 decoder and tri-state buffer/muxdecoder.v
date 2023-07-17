module muxdecoder(I,s,y);
input [3:0]I;
input [1:0]s;
output y;
wire [3:0]w;
wire en;
assign en=1;
decoder d1(en,s,w);
bufif1 b1(y,w[0],I[0]);
bufif1 b2(y,w[1],I[1]);
bufif1 b3(y,w[2],I[2]);
bufif1 b4(y,w[3],I[3]);
wor y;
endmodule
