module muxdecoder_tb();
reg [3:0]I;
reg [1:0]s;
wire y;
muxdecoder m1(I,s,y);
initial 
begin
I=4'b1001;
#10 s=2'b00;
#10 s=2'b01;
#10 s=2'b10;
#10 s=2'b11;
end
initial $monitor("I=%b, s=%b, y=%b",I,s,y);
initial #50 $finish;
endmodule
