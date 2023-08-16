module hamming_code_tb;
reg [6:0]I;
wire [3:0]y;
hamming_code s1(I,y);
initial
begin
I=7'b1001111;
#5;
$finish;
end
endmodule
