//Modeling sequntial circuits
primitive udp_dlatch(q,q_new,clr,clk,D);
input clr,clk,D;
output reg q,q_new;//q_new not declared

initial 
q=0;//optional 

table
// clr clk D : q q_new
    1   ?  ? : ? : 0; //latch is cleared
    0   1  0 : ? : 0;
    0   1  1 : ? : 1;
    0   0  ? : ? : -; //- means unchanged previous value is held
endtable
endprimitive
