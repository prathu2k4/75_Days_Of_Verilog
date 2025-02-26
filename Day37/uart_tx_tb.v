 // uart_tx_tb.v
module tb_uart_tx;
    reg clk, reset, start;
    reg [7:0] data;
    wire tx;
    
    uart_tx uut(.clk(clk), .reset(reset), .start(start), .data(data), .tx(tx));
    
    always #5 clk = ~clk;
    
    initial begin
        $dumpfile("uart_tx.vcd");
        $dumpvars(0, tb_uart_tx);
        
        clk = 0; reset = 1; start = 0; data = 8'hA5;
        #10 reset = 0;
        
        #10 start = 1; #10 start = 0;
        
        #200 $finish;
    end
endmodule
