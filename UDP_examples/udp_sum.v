//Full adder sum generation
primitive udp_sum(sum,a,b,c);//output shld be at the first
input a,b,c;
output sum;
table
//a b c : sum
  0 0 0 : 0;
  0 0 1 : 1;
  0 1 0 : 1;
  0 1 1 : 0;
  1 0 0 : 1;
  1 0 1 : 0;
  1 1 0 : 0;
  1 1 1 : 1;
endtable
endprimitive
