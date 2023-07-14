module mux2X1(I,s,y);
input I;
input s;
output y;
assign y=(~s&I)+(s&~I);
endmodule
