module sender_tb;
reg [31:0]d;
wire [47:0]out;
sender v1(d,out);
initial
begin
d=32'b10011101001011011100001111010101;
#5 $finish;
end
endmodule
