module inverter_test;
reg a;
wire y;
inverter uut(a,y);
initial begin
$dumpfile("inverter.vcd");
$dumpvars(0,inverter_test);
#5 a=0;
#5 a=1;
#5 a=0;
#5 a=1;
#5 a=0;
#5 a=1;
a=1;
#10
a=1;
#10
a=0;
#10
$finish();
end
endmodule


