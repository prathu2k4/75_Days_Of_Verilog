//sequence_detector.v
module sequence_detector (
    input clk, reset, in,
    output reg detected
);
    reg [1:0] state;
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            state <= 2'b00;
            detected <= 0;
        end else begin
            case (state)
                2'b00: state <= (in) ? 2'b01 : 2'b00;
                2'b01: state <= (in) ? 2'b01 : 2'b10;
                2'b10: begin
                    state <= (in) ? 2'b11 : 2'b00;
                    detected <= (in) ? 1 : 0;
                end
                2'b11: state <= (in) ? 2'b01 : 2'b10;
            endcase
        end
    end
endmodule
