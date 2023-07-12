// This takes two signed 4 bit numbers and outputs a signed 8 bit number
// Need to check the code, still not working for negative numbers
//
module boothalogo(out, q, b);
  output reg signed [7:0] out;
  input signed [3:0] q, b;

  reg [1:0] temp;
  integer i;
  reg q0;
  reg [3:0] b1;

  always @(q,b)
  begin
    out = 8'd0;
    q0 = 1'b0;
    b1 = -b;
    
    for (i=0; i<4; i=i+1)
    begin
      temp = { q[i], q0 };
      case(temp)
        2'd2 : out[7:4] = out[7:4] + b1;
        2'd1 : out[7:4] = out[7:4] + b;
      endcase
      out = out >> 1;
      out[7] = out[6];
      q0=q[i];
      
    end
  end
  
endmodule
