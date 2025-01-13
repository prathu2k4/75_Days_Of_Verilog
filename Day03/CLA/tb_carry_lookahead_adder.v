module tb_carry_look_ahead_adder;
    reg [3:0] a, b;
    reg cin;
    wire [3:0] sum;
    wire cout;

    carry_look_ahead_adder uut(.a(a), .b(b), .cin(cin), .sum(sum), .cout(cout));

    initial begin
        $dumpfile("carry_look_ahead_adder.vcd");
        $dumpvars(0, tb_carry_look_ahead_adder);
        for (integer i = 0; i < 16; i = i + 1) 
        begin
            for (integer j = 0; j < 16; j = j + 1) 
            begin
                a = i; b = j; cin = 0; #10;
                a = i; b = j; cin = 1; #10;
            end
        end
        $finish;
    end
endmodule
