module fibo(clk,reset,series);
input clk,reset;
output [31:0]series;
reg [31:0]prev_out;
reg [32:0]a,curr_out;
always@(posedge clk)
begin
if(reset)
begin
prev_out<=0;
curr_out<=1;
end
else if(curr_out<=32'hffffffff)
begin
curr_out<=curr_out+prev_out;
prev_out<=curr_out;
end
else
begin
curr_out<=1;
prev_out<=0;
end
end
assign series=prev_out;
endmodule
