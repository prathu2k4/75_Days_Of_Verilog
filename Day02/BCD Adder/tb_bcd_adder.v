module tb_bcd_adder;
    reg [3:0] a, b;
    reg cin;
    wire [3:0] sum;
    wire cout;

    bcd_adder uut(.a(a), .b(b), .cin(cin), .sum(sum), .cout(cout));

    initial begin
        $dumpfile("bcd_adder.vcd");
        $dumpvars(0, tb_bcd_adder);
        for (integer i = 0; i < 10; i = i + 1) begin
            for (integer j = 0; j < 10; j = j + 1) 
            begin
                a = i; b = j; cin = 0; #10;
                a = i; b = j; cin = 1; #10;
            end
        end
        $finish;
    end
endmodule
