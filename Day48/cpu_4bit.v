// cpu_4bit.v
module cpu_4bit(
    input wire clk, reset,
    input wire [7:0] instruction, // Opcode + Operand
    output reg [3:0] acc          // Accumulator
);
    reg [3:0] operand;
    reg [3:0] opcode;

    always @(posedge clk or posedge reset) begin
        if (reset)
            acc <= 4'b0000;
        else begin
            opcode  <= instruction[7:4]; // Extract opcode
            operand <= instruction[3:0]; // Extract operand
            case (opcode)
                4'b0001: acc <= acc + operand; // ADD
                4'b0010: acc <= acc - operand; // SUB
                4'b0011: acc <= acc & operand; // AND
                4'b0100: acc <= acc | operand; // OR
                default: acc <= acc;
            endcase
        end
    end
endmodule
