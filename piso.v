module piso(I,clk,reset,load,q);
input [3:0]I;
input clk,reset,load;
output reg q;
reg [3:0]tmp;
always @(posedge clk )
begin
if (reset)
tmp<=4'b0;
else
begin
if(load)
tmp<=I;
else
tmp <= tmp << 1;
end
q<=tmp[3];
end
endmodule