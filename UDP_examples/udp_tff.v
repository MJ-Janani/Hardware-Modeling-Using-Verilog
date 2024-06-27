//whenever there is a clock the output toggles
//(10)denotes falling edge and (01) denotes rising edge
primitive udp_tff(q,clr,clk);
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
