module hamming_code_2_tb;
reg [11:0]I;
wire [3:0]y;
hamming_code_2 s1(I,y);
initial
begin
I=12'b100111111000;
#5;
$finish;
end
endmodule
