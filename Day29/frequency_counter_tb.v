//frequency_counter_tb.v
`timescale 1ns / 1ps

module frequency_counter_tb;
    reg clk, signal_in, reset;
    wire [7:0] freq_count;

    frequency_counter uut (
        .clk(clk),
        .signal_in(signal_in),
        .reset(reset),
        .freq_count(freq_count)
    );

    always #5 clk = ~clk;
    always #7 signal_in = ~signal_in;

    initial begin
        $dumpfile("frequency_counter.vcd");
        $dumpvars(0, frequency_counter_tb);

        clk = 0; signal_in = 0; reset = 1;
        #10 reset = 0;
        #200;
        $finish;
    end
endmodule
