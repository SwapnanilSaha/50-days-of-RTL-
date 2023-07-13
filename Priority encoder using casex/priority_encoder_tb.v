module priority_encoder_tb();
reg [7:0]I;
wire en;
wire [2:0]y;
priority_encoder a1(I,en,y);
initial
begin    
$monitor("en=%b i=%b y=%b",en,I,y);
I=128;#5
I=64;#5
I=32;#5
I=16;#5
I=8;#5
I=4;#5
I=2;#5
I=1;#5
I=8'b00100101;#5
$finish;
end
endmodule
