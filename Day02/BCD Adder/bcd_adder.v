module bcd_adder(a, b, cin, sum, cout);
    input [3:0] a, b;
    input cin;
    output [3:0] sum;
    output cout;

    wire [4:0] temp_sum;
    wire [3:0] correction;
    wire carry_correction;

    assign temp_sum = a + b + cin;
    assign correction = (temp_sum > 9) ? 4'b0110 : 4'b0000; //if temp_sum is greater than 9, then we add 6(decimal) to the sum else add 0
    assign carry_correction = (temp_sum > 9) ? 1 : 0; //if temp_sum is greater than 9, then we add 1 to the cout else add 0
    assign sum = temp_sum[3:0] + correction;
    assign cout = temp_sum[4] | carry_correction;
    
endmodule
/*
        The above logic can also be written as:
        if (temp_sum > 9)
            begin
             assign correction = sum + 4'b0110;
             assign carry_correction = 1;
             assign sum = temp_sum[3:0] + correction;
             assign cout = temp_sum[4] | carry_correction;
        end

        else
            begin
             assign sum = temp_sum[3:0];
             assign cout = temp_sum[4];
            end

    */