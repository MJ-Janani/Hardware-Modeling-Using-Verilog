primitive udp_jkff(q,j,k,clk,clr);
input j,k,clk,clr;
output reg q;
//positive edge triggered
table
// j   k   clk   clr   :  q  q_new 
    ?   ?   ?     1      :  ?   0;//clear
    ?   ?   ?   (10)     :  ?   -;//ignore..no change
    0   0  (01)   0      :  ?   0;//no change
    0   1  (01)   0      :  ?   0;//reset
    1   0  (01)    0    :  ?   1;//set
    1   1  (01)    0    :  0   1;//toggles
    1   1  (01)    0    :  1   0;//toggles
    ?   ?  (10)    0    :  ?   -;//no change
    
endtable
endprimitive
