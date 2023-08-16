module bcd_excess_tb;
reg [3:0]I;
wire [3:0]out;
bcd_excess s1(I,out);
initial
begin
I=4'b1000;
#5;
I=4'b0101;
#5;
$finish;
end
endmodule
