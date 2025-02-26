 // control_logic.v
module control_logic(
    input clk, reset,
    input [3:0] opcode,
    output reg [2:0] control_signals
);
    always @(posedge clk or posedge reset) begin
        if (reset)
            control_signals <= 3'b000;
        else begin
            case (opcode)
                4'b0000: control_signals <= 3'b001; // Load
                4'b0001: control_signals <= 3'b010; // Store
                4'b0010: control_signals <= 3'b011; // Add
                4'b0011: control_signals <= 3'b100; // Subtract
                default: control_signals <= 3'b000;
            endcase
        end
    end
endmodule
