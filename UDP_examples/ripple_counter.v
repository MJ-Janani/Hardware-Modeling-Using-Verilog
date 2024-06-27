//Instantiating TFFs to contruct 6 bit Ripple counter

primitive TFF(q,clr,clk);
input clr,clk;
output q;
table
//clr  clk    : q : q_new
   1    ?     : ? :  0;//FF is cleared
  (10)  ?     : ? :  -;
   0    (10)  : 0 :  1;//ff toggles at neg edge 0 to 1
   0    (10)  : 1 :  0;//ff toggles at neg edge 1 to 0
   0    (0?)  : ? :  -;//ignore +ve edge of clk
endtable
endprimitive


module ripple_counter(count,clr,clk);
input clk,clr;
output [5:0]count;

TFF t1(count[0],clr,clk);
TFF t2(count[1],clr,count[0]);
TFF t3(count[2],clr,count[1]);
TFF t4(count[3],clr,count[2]);
TFF t5(count[4],clr,count[3]);
TFF t6(count[5],clr,count[4]);

endmodule
