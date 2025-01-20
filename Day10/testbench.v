`timescale 1ns / 1ps

module tb_priority_encoder;

    reg [3:0] in;          
    wire [1:0] out;        
    wire valid;            

    // Instantiate the priority encoder module
    priority_encoder uut (
        .in(in),
        .out(out),
        .valid(valid)
    );

    integer i;

    initial begin
        $dumpfile("priority_encoder.vcd");
        $dumpvars(0, tb_priority_encoder);

        // Test all possible input combinations
        for (i = 0; i < 16; i = i + 1) begin
            in = i[3:0];    
            #10;            
        end

        #10 $finish;        // End simulation
    end

endmodule
