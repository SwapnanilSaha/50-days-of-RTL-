module pipo(I,clk,reset,load,q);
input [3:0]I;
input clk,reset,load;
output reg [3:0]q;
reg [3:0] tmp;
always @(posedge clk )
begin
if (reset)
q <= 4'b0;
else
begin
if(load)
q<= I;
else
q<=q<<1;
end
end
endmodule
