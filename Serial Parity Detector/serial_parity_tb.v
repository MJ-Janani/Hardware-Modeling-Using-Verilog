 module serial_parity_tb;
     reg x,clock;
     wire z;
     serial_parity_detector2 uut(x,clock,z);
     
     initial begin
         $dumpfile("serial_parity_detector1.vcd");
         $dumpvars(0,serial_parity_tb);
         clock=1'b0;
         #100 $finish();
     end
     always #5 clock=~clock;
     initial begin
        #2 x=0; #10 x=1; #10 x=1; #10 x=1;
        #10 x=0; #10 x=1; #10 x=1; #10 x=1;
        #10 x=0; #10 x=1; #10 x=1; #10 x=0;
        #10 x=0; #10 x=1; #10 x=1; #10 x=0;
        #10 $finish();
     end
 endmodule
