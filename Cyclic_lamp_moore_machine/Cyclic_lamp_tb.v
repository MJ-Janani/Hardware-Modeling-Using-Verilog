 module cyclic_lamp_tb;
     reg clock;
     wire [2:0]light;
     cyclic_lamp uut(clock,light);
     always #5 clock=~clock;
     initial begin
         clock=1'b0;
         #100 $finish();
     end
     initial begin
         $dumpfile("cyclic_lamp.vcd");
         $dumpvars(0,cyclic_lamp_tb);
         $monitor("Time: %d , RGY= %b ",$time,light);
     end
 endmodule
