module receiver_tb;
reg [11:0]I;
wire [3:0]out;
receiver r1(I,out);
initial
begin
I=12'b100011111000;
#5;
$finish;
end
endmodule
