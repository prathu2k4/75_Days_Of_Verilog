module majority_function (
    input a, b, c,
    output majority
);
    assign majority = (a & b) | (b & c) | (a & c);
endmodule
