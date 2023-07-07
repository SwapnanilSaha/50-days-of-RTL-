module bcd_adder(a,b,cin,s,cout);
input [3:0]a,b;
input cin;
output [3:0] s;
output cout;
wire [3:0]w,w2;
wire w1,w3;
cla_adder s1(a,b,cin,w,w1);
cla_adder s2(w,w2,0,s,cout);
assign w3=w[3]&(w[2]|w[1])|w1;
assign w2={1'b0,w3,w3,1'b0};
endmodule
