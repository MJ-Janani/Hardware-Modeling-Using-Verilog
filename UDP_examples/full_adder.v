//Instantiating sum and carry in full adder

//Full adder sum generation
primitive udp_sum(sum,a,b,c);
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


module full_adder(sum,cout,a,b,c);
input a,b,c;
output sum,cout;
udp_sum SUM(sum,a,b,c);
udp_carry CARRY(cout,a,b,c);
/*
initial begin
$monitor($time,"a=%b,b=%b,c=%b,sum=%b,cout=%b",a,b,c,SUM,COUT);
end
*/
endmodule
