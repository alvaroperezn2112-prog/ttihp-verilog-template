module fibonacci_8bit (
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

/* 
 * Do not change Module name 
*/
module main;
  // Señales del testbench
  reg clk;
  wire [7:0] fib;

  // Instancia del DUT (Device Under Test)
  fibonacci_8bit uut (
      .clk(clk),
      .fib(fib)
  );

  // Generación de clock (periodo = 10 unidades)
  initial begin
      clk = 0;
      forever #5 clk = ~clk;
  end

  // Simulación
  initial begin
      $display("fib");
      $monitor("%d", fib);

      // correr simulación un tiempo
      #140;

      $display("Fin simulacion");
      $finish;
  end
endmodule


