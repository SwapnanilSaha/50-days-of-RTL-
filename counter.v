module counter(clk,reset,updown,load,datain,out);
input clk,reset,updown,load;
input [3:0]datain;
output reg [3:0]out;
always@(posedge clk)
begin
if(reset)
out<=0;
else
begin
if(load && datain<4'b1100)
out<=datain;
else
begin
if(updown)
begin
if(out==4'b1011)
out<=4'b0000;
else
out<=out+1;
end
else
begin
if(out==4'b0000)
out<=4'b1011;
else
out<=out-1;
end
end
end
end
endmodule