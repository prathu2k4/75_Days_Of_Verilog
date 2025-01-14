module tb_magnitude_comparator;
    reg [1:0] a, b;
    wire a_less_than_b, a_greater_than_b, a_equal_b;

    magnitude_comparator uut(
        .a(a), 
        .b(b), 
        .a_less_than_b(a_less_than_b), 
        .a_greater_than_b(a_greater_than_b), 
        .a_equal_b(a_equal_b)
        );

    initial begin
        $dumpfile("magnitude_comparator.vcd");
        $dumpvars(0, tb_magnitude_comparator);
        for (integer i = 0; i < 4; i = i + 1) 
        begin
            for (integer j = 0; j < 4; j = j + 1) 
            begin
                a = i; b = j; #10;
            end
        end
        $finish;
    end
endmodule
