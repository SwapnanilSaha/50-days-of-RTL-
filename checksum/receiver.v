module receiver(d,out);
input [47:0]d;
output out;
wire [15:0]sum,sum1;
checksum d1(d[47:16],sum);
assign sum1=~sum;
assign out=(d[15:0]+sum1)==16'hffff;
endmodule
