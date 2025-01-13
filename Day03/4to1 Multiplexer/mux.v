// 4:1 Multiplexer Module
module mux4to1 (
    input wire [3:0] d,     // 4 data inputs
    input wire [1:0] sel,   // 2-bit select line
    output wire y           // Output
);

    assign y = (sel == 2'b00) ? d[0] :
               (sel == 2'b01) ? d[1] :
               (sel == 2'b10) ? d[2] :
               d[3];          // Default case (sel == 2'b11)

endmodule
