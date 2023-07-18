module mux6X1_tb;
reg [5:0]I;
reg [2:0]s;
wire y;
mux6X1 m1(I,s,y);
initial 
begin
I=6'b100110;
#10 s=3'b000;
#10 s=3'b001;
#10 s=3'b010;
#10 s=3'b011;
#10 s=3'b100;
#10 s=3'b101;
end
initial #100 $finish;
endmodule
