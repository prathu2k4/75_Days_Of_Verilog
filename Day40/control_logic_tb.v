 // control_logic_tb.v
module tb_control_logic;
    reg clk, reset;
    reg [3:0] opcode;
    wire [2:0] control_signals;
    
    control_logic uut(.clk(clk), .reset(reset), .opcode(opcode), .control_signals(control_signals));
    
    always #5 clk = ~clk;
    
    initial begin
        $dumpfile("control_logic.vcd");
        $dumpvars(0, tb_control_logic);
        
        clk = 0; reset = 1; opcode = 4'b0000;
        #10 reset = 0;
        
        #10 opcode = 4'b0001;
        #10 opcode = 4'b0010;
        #10 opcode = 4'b0011;
        
        #20 $finish;
    end
endmodule
