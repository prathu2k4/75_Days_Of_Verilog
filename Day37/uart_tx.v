 // uart_tx.v
module uart_tx(
    input clk, reset, start,
    input [7:0] data,
    output reg tx
);
    reg [3:0] bit_count;
    reg [9:0] shift_reg;

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            bit_count <= 0;
            tx <= 1;
        end else if (start && bit_count == 0) begin
            shift_reg <= {1'b1, data, 1'b0};
            bit_count <= 10;
        end else if (bit_count > 0) begin
            tx <= shift_reg[0];
            shift_reg <= shift_reg >> 1;
            bit_count <= bit_count - 1;
        end
    end
endmodule
