module muxbehavioural(I,s,y);
input [3:0]I;
input [1:0]s;
output reg y;
always@(*)
begin
case(s)
2'b00:  y=I[0];
2'b01:  y=I[1];
2'b10:  y=I[2];
2'b11:  y=I[3];
default:  y=1'bz;
endcase
end
endmodule
