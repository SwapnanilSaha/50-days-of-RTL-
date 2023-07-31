module checksum_tb;
reg [31:0]d;
wire [15:0]out;
checksum v1(d,out);
initial
begin
d=32'b10011101001011011100001111010101;
#5 $finish;
end
endmodule
