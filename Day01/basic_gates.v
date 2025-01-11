module BasicGates (
    input A,
    input B,
    output Y0,
    output Y1,
    output Y2,
    output Y3,
    output Y4,
    output Y5
);
    assign Y0 = A & B;
    assign Y1 = A | B;
    assign Y2 = ~A;
    assign Y3 = ~(A | B);
    assign Y4 = A ^ B;
    assign Y5 = ~(A ^ B);
endmodule
