module sender(d,out);
input [31:0]d;
output [47:0]out;
wire [15:0]error_check;
checksum c1(d,error_check);
assign out={d,error_check};
endmodule

