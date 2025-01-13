`timescale 1ns / 1ps

module tb_mux4to1;

    reg [3:0] d;            
    reg [1:0] sel;          
    wire y;                 

    // Instantiate the multiplexer module
    mux4to1 uut (
        .d(d),
        .sel(sel),
        .y(y)
    );

    initial begin
        
        $dumpfile("mux4to1.vcd");
        $dumpvars(0, tb_mux4to1);


        d = 4'b0000; sel = 2'b00;

        // Test cases
        #10 d = 4'b1010; sel = 2'b00;  
        #10 sel = 2'b01;               
        #10 sel = 2'b10;               
        #10 sel = 2'b11;               
        #10 d = 4'b1101; sel = 2'b10; 
        #10 $finish;
    end

endmodule
