// sync_counter.v
module sync_counter (
    input clk, reset,
    output reg [3:0] q
);
    always @(posedge clk or posedge reset) begin
        if (reset)
            q <= 0;
        else
            q <= q + 1;
    end
endmodule
