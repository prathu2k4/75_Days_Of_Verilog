module magnitude_comparator(a, b, a_less_than_b, a_greater_than_b, a_equal_b);
    input [1:0] a, b;
    output a_less_than_b, a_greater_than_b, a_equal_b;

    assign a_less_than_b = (a < b);
    assign a_greater_than_b = (a > b);
    assign a_equal_b = (a == b);
endmodule
