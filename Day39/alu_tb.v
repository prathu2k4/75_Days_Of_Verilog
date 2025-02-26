 // alu_tb.v
module tb_alu;
    reg [3:0] a, b;
    reg [1:0] sel;
    wire [3:0] result;
    
    alu uut(.a(a), .b(b), .sel(sel), .result(result));
    
    initial begin
        $dumpfile("alu.vcd");
        $dumpvars(0, tb_alu);
        
        a = 4'b0011; b = 4'b0001;
        
        sel = 2'b00; #10;
        sel = 2'b01; #10;
        sel = 2'b10; #10;
        sel = 2'b11; #10;
        
        #20 $finish;
    end
endmodule