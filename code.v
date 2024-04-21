module code(clk,req,rst,ack);
input clk,req,rst;
output reg ack;
parameter Idle=3'b000,
	  s0=3'b001,
	  s1=3'b010,
	  s2=3'b011,
	  s3=3'b100,
	  s4=3'b101;
reg [2:0] state,next_state;
always@(posedge clk)
begin
if(rst)
state<=Idle;
else
state<=next_state;
end
always@(state or req)
begin
next_state=Idle;
case(state)
Idle:
begin
 if(req) next_state=s0;
	else next_state=Idle;
	ack=0;
end
s0:
begin
 next_state=s1;
	ack=0;
end
s1:
begin
  next_state=s2;
	
	ack=0;
end
s2:
begin
  next_state=s3;
	
	ack=0;
end
s3:
begin  
	next_state=s4;
	
	ack=0;
end
s4:
begin
if(req)
next_state=s0;
else
next_state=Idle;
ack=1'b1;
end
endcase 
end
endmodule
