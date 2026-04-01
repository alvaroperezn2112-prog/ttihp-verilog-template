module tt_um_AlvaroPerez2112 (
    input clk,
    output reg [7:0] fib
);

reg [7:0] a = 0, b = 1;

always @(posedge clk) begin
    a <= b;
    b <= a + b;
    fib <= a;
end

endmodule