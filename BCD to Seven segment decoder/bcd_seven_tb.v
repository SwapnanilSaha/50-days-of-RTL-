module bcd_seven_tb;
reg [3:0]I;
wire [6:0]out;
integer i;
bcd_seven s1(I,out);
initial
begin
for(i=0;i<=9;i=i+1)
begin
I=i;
#5;
end
end
endmodule
