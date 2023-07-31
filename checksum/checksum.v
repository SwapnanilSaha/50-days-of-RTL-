module checksum(d,out);
input [31:0]d;
output [15:0]out;
reg [31:0]sum;
reg [15:0]sum1;
always@(d)
begin
sum=d[31:16]+d[15:0];
if(sum&32'hffff0000)
begin
sum1=sum;
sum1=sum1+1;
end
else
sum1=sum;
end
assign out=~sum1;
endmodule
