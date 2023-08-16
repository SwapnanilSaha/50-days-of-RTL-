module hamming_code_2(I,y);
input [11:0]I;
output [3:0]y;
assign y[0]=I[1]^I[3]^I[5]^I[7]^I[9]^I[11];
assign y[1]=I[2]^I[3]^I[6]^I[7]^I[10]^I[11];
assign y[2]=I[4]^I[5]^I[6]^I[7];
assign y[3]=I[8]^I[9]^I[10]^I[11];
endmodule
