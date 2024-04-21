module siso(I,clk,reset,q);
input I,clk,reset;
output reg q;
reg [3:0] tmp;
always @(posedge clk )
begin
if (reset)
tmp <= 4'b0;
else
begin
tmp <= tmp << 1;
tmp[0] <= I;
end
q <= tmp[3];
end
endmodule
