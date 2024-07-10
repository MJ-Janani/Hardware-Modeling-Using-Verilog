module sequence_detector_tb;
    reg x,clk,rst;
    wire z;
    reg[1:0]PS,NS;
    sequence_detector uut(x,clk,rst,z);
    initial begin
        $dumpfile("sequence_detector.vcd");
        $dumpvars(0,sequence_detector_tb);
        rst=1'b1;clk=1'b0;
        #10 rst=1'b0;
    end
    always #5 clk=~clk;
    initial begin
        #8 x=0; #10 x=0 ; #10 x=1;#10 x=1;
        #10 x=0; #10 x=1 ; #10 x=1;#10 x=0;
        #10 x=1; #10 x=0 ; #10 x=1;#10 x=1;
        #10 x=0; #10 x=1 ; #10 x=1;#10 x=0;
        #10 $finish();
    end
endmodule
