//traffic_light_fsm_tb.v
module tb_traffic_light;
    reg clk, reset;
    wire [1:0] light;
    
    // Instantiate the traffic light module
    traffic_light uut (
        .clk(clk), 
        .reset(reset), 
        .light(light)
    );
    
    // Clock generation with a period of 10 time units
    always #5 clk = ~clk;

    initial begin
        $dumpfile("traffic_light.vcd");
        $dumpvars(0, tb_traffic_light);
        
        clk = 0; 
        reset = 1;
        #10 reset = 0; // Release reset after 10 time units

        // Allow multiple transitions
        #100;

        // Assert reset in the middle of operation
        #5 reset = 1; 
        #10 reset = 0;

        // Observe behavior after reset
        #50;
        
        // End simulation
        $finish;
    end
    
    // Monitor state changes
    initial begin
        $monitor("Time=%0t | Reset=%b | Light=%b", $time, reset, light);
    end
endmodule
