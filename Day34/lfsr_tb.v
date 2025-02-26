 //lfsr_tb.v
module tb_lfsr;
    reg clk, reset;
    wire [3:0] out;
    
    lfsr uut(.clk(clk), .reset(reset), .out(out));
    
    always #5 clk = ~clk;
    
    initial begin
        $dumpfile("lfsr.vcd");
        $dumpvars(0, tb_lfsr);
        
        clk = 0; reset = 1;
        #10 reset = 0;
        
        #100 $finish;
    end
endmodule
