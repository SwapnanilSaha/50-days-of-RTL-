module decoder_tb;
reg [3:0]I;
wire [9:0]out;
decoder a1(I,out);
initial
begin
I=4'b1000;
#5;
I=4'b0101;
#5;
$finish;
end
endmodule
