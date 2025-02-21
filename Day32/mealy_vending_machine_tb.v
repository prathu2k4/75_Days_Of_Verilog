 //mealy_vending_machine_tb.v
 module tb_vending_machine;
    reg clk, reset, coin, select;
    wire dispense;
    
    vending_machine uut(.clk(clk), .reset(reset), .coin(coin), .select(select), .dispense(dispense));
    
    always #5 clk = ~clk;
    
    initial begin
        $dumpfile("vending_machine.vcd");
        $dumpvars(0, tb_vending_machine);
        
        clk = 0; reset = 1; coin = 0; select = 0;
        #10 reset = 0;
        
        #10 coin = 1; #10 select = 1; // Dispense triggered
        #10 coin = 0; select = 0;
        
        #20 $finish;
    end
endmodule
