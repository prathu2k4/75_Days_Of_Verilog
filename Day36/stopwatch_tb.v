// stopwatch_tb.v
module tb_stopwatch;
    reg clk, reset, start_stop;
    wire [5:0] seconds;
    
    stopwatch uut(.clk(clk), .reset(reset), .start_stop(start_stop), .seconds(seconds));
    
    always #5 clk = ~clk;
    
    initial begin
        $dumpfile("stopwatch.vcd");
        $dumpvars(0, tb_stopwatch);
        
        clk = 0; reset = 1; start_stop = 0;
        #10 reset = 0; #10 start_stop = 1;
        
        #100 start_stop = 1; // Stop
        #50 start_stop = 1; // Start again
        
        #200 $finish;
    end
endmodule
