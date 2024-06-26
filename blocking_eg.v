module blocking_eg;

  // Internal signal declarations
  integer a, b, c, d;

  always @(*) begin
    repeat (4) begin
      #5 a = b + c;  // a is updated to b + c after 5 time units
      #5 d = a - 3;  // d is updated to a - 3 after another 5 time units
      #5 b = d + 10; // b is updated to d + 10 after another 5 time units
      #5 c = c + 1;  // c is incremented by 1 after another 5 time units
    end
  end

  initial begin
    $monitor($time, " a=%4d, b=%4d, c=%4d, d=%4d", a, b, c, d);
    a = 30; b = 20; c = 15; d = 5;
    #100 $finish;
  end

endmodule

