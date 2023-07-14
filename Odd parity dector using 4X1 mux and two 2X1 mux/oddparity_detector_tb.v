module oddparity_detector_tb;
reg [3:0]I;
wire out;
integer i;
oddparity_detector a1(I,out);
initial
begin
for (i=0;i<=15;i=i+1)
begin
I=i;
#5;
end
end
endmodule
