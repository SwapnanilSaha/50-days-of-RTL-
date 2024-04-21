module test();
initial
begin
 $display("@%0t : PT starts", $time);
 #10 $display("@%0t: PT with delay #10", $time);
 fork: thread
 #50 $display("@%0t: CT1 with delay #50", $time);
 #10 $display("@%0t: CT2 with delay #10", $time);
 begin
 #30 $display("@%0t: CT3 with delay #30", $time);
 #10 $display("@%0t: CT3 with delay #10", $time);
 end
 join_none
 $display("@%0t: PT resumes", $time);
 #80 $display("@%0t: PT with delay #80", $time);
end
endmodule
