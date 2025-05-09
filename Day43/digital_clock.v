// digital_clock.v
module digital_clock(
    input wire clk, reset,
    output reg [5:0] sec, min,
    output reg [4:0] hr
);
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            sec <= 0;
            min <= 0;
            hr  <= 0;
        end else begin
            if (sec == 59) begin
                sec <= 0;
                if (min == 59) begin
                    min <= 0;
                    if (hr == 23) hr <= 0;
                    else hr <= hr + 1;
                end else begin
                    min <= min + 1;
                end
            end else begin
                sec <= sec + 1;
            end
        end
    end
endmodule
