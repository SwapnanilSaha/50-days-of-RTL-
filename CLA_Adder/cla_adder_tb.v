module cla_adder_tb();
reg [3:0]a,b;
reg cin;
wire [3:0] s;
wire cout;
cla_adder s1(a,b,cin,s,cout);
initial
begin
a=4'b1000;
b=4'b0110;
cin=1;
#5;
a=4'b1000;
b=4'b0101;
cin=0;
$monitor("a=%b, b=%b, cin=%b, sum=%b, cout=%b",a,b,cin,s,cout);
#5 $finish;
end
endmodule
