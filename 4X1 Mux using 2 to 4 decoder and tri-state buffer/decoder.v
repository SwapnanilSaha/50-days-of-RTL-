module decoder(en,d,y);
input [1:0]d;
input en;
output [3:0]y;
assign y[0]=(en&~d[0]&~d[1]);
assign y[1]=(en&~d[1]&d[0]);
assign y[2]=(en&d[1]&~d[0]);
assign y[3]=(en&d[1]&d[0]);
endmodule
