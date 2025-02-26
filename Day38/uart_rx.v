 // uart_rx.v
module uart_rx(
    input clk, reset, rx,
    output reg [7:0] data
);
    reg [3:0] bit_count;
    reg [9:0] shift_reg;

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            bit_count <= 0;
        end else if (bit_count == 0 && rx == 0) begin
            bit_count <= 10;
        end else if (bit_count > 0) begin
            shift_reg <= {rx, shift_reg[9:1]};
            bit_count <= bit_count - 1;
            if (bit_count == 1)
                data <= shift_reg[8:1];
        end
    end
endmodule
