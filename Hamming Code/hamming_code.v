module hamming_code(I,y);
input [6:0]I;
output [3:0]y;
wire [3:0]w;
assign w=0;
assign y[0]=w[0]^I[0]^I[1]^I[3]^I[4]^I[6];
assign y[1]=w[1]^I[0]^I[2]^I[3]^I[5]^I[6];
assign y[2]=w[2]^I[1]^I[2]^I[3];
assign y[3]=w[3]^I[4]^I[5]^I[6];
endmodule
