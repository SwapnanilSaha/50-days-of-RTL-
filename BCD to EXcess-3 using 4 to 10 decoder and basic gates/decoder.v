module decoder(I,out);
input [3:0]I;
output reg [9:0]out;
always@(I)
begin
case(I)
4'b0000: out=10'b0000000001;
4'b0001: out=10'b0000000010;
4'b0010: out=10'b0000000100;
4'b0011: out=10'b0000001000;
4'b0100: out=10'b0000010000;
4'b0101: out=10'b0000100000;
4'b0110: out=10'b0001000000;
4'b1111: out=10'b0010000000;
4'b1000: out=10'b0100000000;
4'b1001: out=10'b1000000000;
default: out=10'b0000000000;
endcase
end
endmodule
