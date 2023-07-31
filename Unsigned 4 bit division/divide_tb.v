module divide_tb;
reg [3:0]a,b;
wire [3:0]div,rem;
wire error;
divide d1(a,b,div,rem,error);
initial
begin
a=14;
b=3;
#5;
a=15;
b=0;
#5;
a=12;
b=6;
#5;
$finish;
end
endmodule
