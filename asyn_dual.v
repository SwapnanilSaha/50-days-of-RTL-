module asyn_dual(read,write,rd_addr,wr_addr,data_in,data_out);
parameter RAM_WIDTH=16,
RAM_DEPTH=8,
ADDR_SIZE=3;
input read,write;
input [RAM_WIDTH-1:0] data_in;
input [ADDR_SIZE-1:0] rd_addr,wr_addr;
output reg [RAM_WIDTH-1:0] data_out;
reg [(RAM_WIDTH-1):0] mem [(RAM_DEPTH-1):0];
always@(*)
begin
if(write)
mem[wr_addr]<=data_in;
if(read)
data_out<=mem[rd_addr];
end
endmodule
