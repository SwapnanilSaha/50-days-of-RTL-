module count_one_tb;
reg [7:0]I;
wire [3:0]out;
integer i;
count_one s1(I,out);
initial
begin
for(i=0;i<=255;i=i+1)
begin
I=i;
#5;
end
end
endmodule
