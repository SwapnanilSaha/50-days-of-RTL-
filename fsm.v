module fsm(input clk, output reg [3:0] out);
parameter first=4'b1000,
            second=4'b1100,
            third=4'b0100,
            fourth=4'b0010,
            fifth=4'b0011,
            sixth=4'b0001,
            seventh=4'b1001;
        reg [3:0]state,next_state;
        always@(posedge clk)
            state<=out;
        always@(state)
        begin
        next_state=first;
        case(state)
        first: next_state=second;
        second: next_state=third;
        third: next_state=fourth;
        fourth: next_state=fifth;
        fifth: next_state=sixth;
        sixth: next_state=seventh;
        seventh: next_state=first;
        endcase
        end
        assign out=state[3:0];
endmodule

