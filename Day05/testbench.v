`timescale 1ns / 1ps

module tb_decoder3to8;

    reg [2:0] a;           
    reg en;                
    wire [7:0] y;         

    // Instantiate the decoder module
    decoder3to8 uut (
        .a(a),
        .en(en),
        .y(y)
    );

    integer i;

    initial begin
        $dumpfile("decoder3to8.vcd");
        $dumpvars(0, tb_decoder3to8);

        en = 1'b0; a = 3'b000;

        #10 en = 1'b0; a = 3'b000; // Outputs should remain 0
        #10 en = 1'b0; a = 3'b101; // Outputs should remain 0

        // Test with enable signal ON
        en = 1'b1;
        for (i = 0; i < 8; i = i + 1) begin
            #10 a = i; // Change input and observe output
        end

        // Disable enable signal and check outputs
        #10 en = 1'b0; a = 3'b011; // Outputs should remain 0

        #10 $finish; // End simulation
    end

endmodule
