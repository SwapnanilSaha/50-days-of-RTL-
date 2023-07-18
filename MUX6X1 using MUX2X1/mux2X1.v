module mux2X1(I,s,y);
input [1:0]I;
input s;
output y;
assign y=(~s&I[0])+(s&I[1]);
endmodule
