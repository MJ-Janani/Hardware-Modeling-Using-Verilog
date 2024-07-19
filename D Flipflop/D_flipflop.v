// Different DFF

module day2 (
  input     logic      clk,
  input     logic      reset,

  input     logic      d_i,

  output    logic      q_norst_o,
  output    logic      q_syncrst_o,
  output    logic      q_asyncrst_o
);
assign q_norst_o=d_i ;//non-resettable flop
  
  always  @(posedge clk)//synchronous reset
      if(reset)  q_syncrst_o<=0;
      else  q_syncrst_o<=d_i;
  
  always @(posedge clk or posedge reset)//asynchronous reset
      if(reset)  q_asyncrst_o<=0;
      else  q_asyncrst_o<=d_i;
      

endmodule
