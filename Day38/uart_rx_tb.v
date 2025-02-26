 // uart_rx_tb.v
module tb_uart_rx;
    reg clk, reset, rx;
    wire [7:0] data;
    
    uart_rx uut(.clk(clk), .reset(reset), .rx(rx), .data(data));
    
    always #5 clk = ~clk;
    
    initial begin
        $dumpfile("uart_rx.vcd");
        $dumpvars(0, tb_uart_rx);
        
        clk = 0; reset = 1; rx = 1;
        #10 reset = 0;
        
        #10 rx = 0; #10 rx = 1; #10 rx = 0; #10 rx = 1; 

        #200 $finish;
    end
endmodule
