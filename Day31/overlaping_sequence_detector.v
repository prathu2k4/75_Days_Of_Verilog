 //overlaping_sequence_detector.v
module sequence_detector(
    input clk, reset, in,
    output reg out
);
    reg [1:0] state, next_state;
    localparam S0 = 2'b00, 
               S1 = 2'b01, 
               S2 = 2'b10, 
               S3 = 2'b11;

    // State transition
    always @(posedge clk or posedge reset) begin
        if (reset)
            state <= S0;
        else
            state <= next_state;
    end

    // Next state logic
    always @(*) begin
        case (state)
            S0: next_state = in ? S1 : S0;
            S1: next_state = in ? S1 : S2;
            S2: next_state = in ? S3 : S0;
            S3: next_state = in ? S1 : S2;
            default: next_state = S0;
        endcase
    end
    always @(posedge clk or posedge reset) begin
        if (reset)
            out <= 0;
        else
            out <= (state == S3); // Detects "101"
    end
endmodule
