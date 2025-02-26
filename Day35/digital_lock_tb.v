//digital_lock_tb.v
module tb_digital_lock;
    reg clk, reset;
    reg [3:0] key;
    wire unlock;
    
    digital_lock uut(.clk(clk), .reset(reset), .key(key), .unlock(unlock));
    
    always #5 clk = ~clk;
    
    initial begin
        $dumpfile("digital_lock.vcd");
        $dumpvars(0, tb_digital_lock);
        
        clk = 0; reset = 1; key = 4'b0000;
        #10 reset = 0;
        
        #10 key = 4'b1010; // Correct password
        #10 key = 4'b0110; // Wrong password
        
        #20 $finish;
    end
endmodule

