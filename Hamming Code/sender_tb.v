module sender_tb;
reg [6:0]I;
wire [11:0]out;
sender s1(I,out);
initial
begin
I=7'b1001111;
#5;
$finish;
end
endmodule
