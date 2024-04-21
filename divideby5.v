module divideby5(I,clk,reset,out);
input I,clk,reset;
output  out;
parameter Idle=3'b000,s0=3'b001,s01=3'b010,s10=3'b011,s11=3'b100,s100=3'b101;
reg [2:0]state,next_state;
always@(posedge clk)
begin
if(reset)
state<=Idle;
else
state<=next_state;
end
always@(*)
begin
next_state=Idle;
case(state)
Idle: if(I) next_state=s01;
	else next_state=s0;
s0:  if(I) next_state=s01;
	else next_state=s0;
	
s01: if(I) next_state=s11;
	else next_state=s10;
s10: if(I) next_state=s0;
	else next_state=s100;
s11: if(I) next_state=s10;
	else next_state=s01;
s100: if(I) next_state=s100;
	else next_state=s11;
default: next_state=Idle;
endcase
end
assign out=(state==s0);
endmodule
