`timescale 1ns / 1ps

module tb_parity_generator;

    reg [3:0] data;           
    wire even_parity;         
    wire odd_parity;          

    // Instantiate the parity generator module
    parity_generator uut (
        .data(data),
        .even_parity(even_parity),
        .odd_parity(odd_parity)
    );

    integer i;

    initial begin
        
        $dumpfile("parity_generator.vcd");
        $dumpvars(0, tb_parity_generator);
        
        for (i = 0; i < 16; i = i + 1) begin
            data = i[3:0];   
            #10;            
        end
        #10 $finish;        // End simulation
    end

endmodule
