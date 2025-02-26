 // stopwatch.v
module stopwatch(
    input clk, reset, start_stop,
    output reg [5:0] seconds
);
    reg running;

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            seconds <= 0;
            running <= 0;
        end else if (start_stop) begin
            running <= ~running;
        end else if (running) begin
            if (seconds == 59)
                seconds <= 0;
            else
                seconds <= seconds + 1;
        end
    end
endmodule
