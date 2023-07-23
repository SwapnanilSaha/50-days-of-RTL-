module mux8X1_tb;
reg [7:0]I;
reg [2:0]s;
wire y;
mux8X1 t1(I,s,y);
initial
begin
I=8'b11010110;
#10 s=3'b000;
#10 s=3'b001;
#10 s=3'b010;
#10 s=3'b011;
#10 s=3'b100;
#10 s=3'b101;
#10 s=3'b110;
#10 s=3'b111;
end
initial #100 $finish;
endmodule
