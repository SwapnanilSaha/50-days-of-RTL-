module adder_subtractor_tb;
reg [3:0]a,b;
reg sel;
wire [3:0]s,cout;
adder_subtractor m1(a,b,sel,s,cout);
initial
begin
sel=0;a=5;b=6;
#5 a=1;b=2;
#5 a=4;b=15;
#5 sel=1; a=2;b=1;
#5 a=5; b=8;
#5 $finish;
end
endmodule
