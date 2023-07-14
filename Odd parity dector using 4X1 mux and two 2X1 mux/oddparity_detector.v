module oddparity_detector(I,out);
input [3:0]I;
output out;
wire [3:0]w;
mux2X1 s1(I[0],I[1],w[0]);
mux2X1 s2(~I[0],I[1],w[1]);
assign w[3]=w[0];
assign w[2]=w[1];
muxbehavioural s3(w,I[3:2],out);
endmodule
