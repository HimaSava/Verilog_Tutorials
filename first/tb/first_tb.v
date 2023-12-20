`timescale 1ns/ 1ns
`include "../src/first.v"

module first_tb;

reg A;
wire B;

first uut(A,B);

initial begin
  $dumpfile("first_tb.vcd");
  $dumpvars(0, first_tb);

  A = 0;
  #20;

  A = 1;
  #20;

  A = 0;
  #20;

  A = 1;
  #20;

  A = 0;
  #20;

  A = 1;
  #20;

  A = 0;
  #20;

  $display("Test Completed");
end

endmodule