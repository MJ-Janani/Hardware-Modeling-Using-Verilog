module Full_adder_tb;
reg a,b,c;
wire sum,cout;
integer i;
Full_adder uut(a,b,c,sum,cout);
initial begin
for (i=0;i<8;i++) begin
{a,b,c}=i;
#10;
$display("Time=%2d,a=%b,b=%b,c=%b,sum=%b,cout=%b",$time,a,b,c,sum,cout);
end
end
endmodule
