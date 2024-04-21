module priority_sensor(sensor_a,sensor_b,sensor_c,alarm_a,alarm_b,alarm_c);
input sensor_a,sensor_b,sensor_c;
output reg alarm_a,alarm_b,alarm_c;
always@(sensor_a,sensor_b,sensor_c)
begin
alarm_a=0;
alarm_b=0;
alarm_c=0;
if(sensor_b && sensor_c)
begin
alarm_a=1;
alarm_c=1;
end
if(sensor_a && sensor_c)
begin
alarm_b=1;
alarm_c=1;
end
if(sensor_a && sensor_b)
alarm_c=1;
end
endmodule
