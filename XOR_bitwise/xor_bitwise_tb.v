module xor_bitwise_tb();
reg [15:0]a,b;
wire [15:0]out;
xor_bitwise G(out,a,b);
initial begin
$monitor($time,"a=%b,b=%b,out=%b",a,b,out);
$dumpfile("xor_bitwise.vcd");
$dumpvars(0,xor_bitwise_tb);
a=16'hffff;b=16'h3333;
#10 a=16'haabb;b=16'h1212;
#20 $finish;
end
endmodule
