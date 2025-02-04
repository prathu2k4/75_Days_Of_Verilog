// async_counter.v
module async_counter (
    input clk, reset,
    output reg [3:0] q
);
    always @(negedge clk or posedge reset) begin
        if (reset)
            q <= 0;
        else
            q <= q + 1;
    end
endmodule
