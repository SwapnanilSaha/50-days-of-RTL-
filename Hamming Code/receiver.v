module receiver(I,out);
input [11:0]I;
output [3:0]out;
hamming_code_2 h1(I,out);
always@(out)
begin
if(out==0)
begin
$display("No error");
end
else 
begin
$display("error on  %d bit",out);
end
end
endmodule
