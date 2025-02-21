//clock_divider.v
module clock_divider (
    input clk, reset,
    output reg clk_out
);
    reg [2:0] count;

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            count <= 0;
            clk_out <= 0;
        end else if (count == 3'd3) begin
            clk_out <= ~clk_out;
            count <= 0;
        end else begin
            count <= count + 1;
        end
    end
endmodule
