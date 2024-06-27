//Full adder carry generation
primitive udp_carry(cout,a,b,c);
input a,b,c;
output cout;
table
//a b c : carry
  0 0 0 : 0;
  0 0 1 : 0;
  0 1 0 : 0;
  0 1 1 : 1;
  1 0 0 : 0;
  1 0 1 : 1;
  1 1 0 : 1;
  1 1 1 : 1;
endtable
endprimitive
/*
//Full adder carry generation
//using dont care
primitive udp_carry(cout,a,b,c);
input a,b,c;
output cout;
table
//a b c : carry
  ? 0 0 : 0;//any two 0 gives cout 0
  0 0 ? : 0;
  0 ? 0 : 0;
  ? 1 1 : 1;//any two 1 gives cout 1
  1 ? 1 : 1;
  1 1 ? : 1;
endtable
endprimitive
*/
