module bidirec(I,clk,reset,dir,q);
input I,clk,reset,dir;
output reg q;
reg [3:0] tmp;
always @(posedge clk )
begin
if (reset)
tmp <= 4'b0;
else
begin
if(dir)
tmp <= tmp >> 1;
else
begin
tmp<=tmp<<1;
tmp[0] <= I;
end
end
q <= tmp[3];
end
endmodule
