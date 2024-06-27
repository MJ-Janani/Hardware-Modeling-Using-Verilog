primitive udp_srff(q,s,r,clk,clr);
input s,r,clk,clr;
output reg q;
//positive edge triggered
table
// s   r   clk   clr   :  q  q_new 
    ?   ?   ?     1      :  ?   0;//clear
    ?   ?   ?   (10)     :  ?   -;
    0   0  (01)   0      :  ?   0;//no change
    0   1  (01)   0      :  ?   0;//reset
    1   0  (01)    0    :  ?   1;//set
    1   1  (01)    0    :  ?   x;//invalid condition in srff
    ?   ?  (10)    0    :  ?   -;
    
endtable
endprimitive
