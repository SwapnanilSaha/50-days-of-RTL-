module priority_encoder(I,en,y);
input [7:0]I;
output reg [2:0]y;
output reg en;
always@(I)
begin
en=1'b1;
casex(I)
8'b1xxxxxxx: y=3'b111;
8'b01xxxxxx: y=3'b110;
8'b001xxxxx: y=3'b101;
8'b0001xxxx: y=3'b100;
8'b00001xxx: y=3'b011;
8'b000001xx: y=3'b010;
8'b0000001x: y=3'b001;
8'b00000001: y=3'b000;
default:
begin 
y=3'bx;
en=1'b0;
end
endcase
end
endmodule
