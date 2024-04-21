module digital_clock(clcock,reset,load,load_ms_hr,load_ls_hr,load_ms_min,load_ls_min,time_ms_hr,time_ls_hr,time_ms_min,time_ls_min);
input  clcock,reset,load;
input [2:0]load_ls_hr;
input [3:0]load_ls_min;
input [1:0]load_ms_hr;
input [2:0]load_ms_min;
output reg[1:0]time_ms_hr,
output reg [2:0]time_ls_hr;
output reg [2:0]time_ms_min;
output reg[3:0]time_ls_min;
always@(posedge clock or negedge reset)
begin
if(reset)
begin
time_ms_hr<=0;
time_ls_hr<=0;
time_ms_min<=0;
time_ls_min<=0;
end
else
begin
if(load)
begin
time_ls_hr<=load_ls_hr;
time_ms_hr<=load_ms_hr;
time_ls_min<=load_ms_min;
time_ms_min<=load_ms_min;
end
else
begin
time_ls_min<=time_ls_min+1;
if(time_ls_min==10)
begin
time_ls_min<=0;
time_ms_min<=time_ms_min+1;
if(time_ms_min==6)
begin
time_ms_min<=0;
time_ls_hr<=time_ls_hr+1;
if(time_ls_hr==4)
begin
time_ls_hr<=0;
time_ms_hr<=time_ms_hr+1;
if(time_ms_hr==3)
begin
time_ms_hr<=0;
end
end
end
end
end
end
end
endmodule
