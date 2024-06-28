module comparator_2bit_tb;
    reg a0, a1, b0, b1;
    wire gt, lt, eq;

    comparator_2bit uut (a0, a1, b0, b1 , gt, lt, eq);

    initial begin
    $monitor("Time=%2d : a={%b,%b}, b={%b,%b} => gt=%b, lt=%b, eq=%b", $time, a1, a0, b1, b0, gt, lt, eq);
    $dumpfile("comparator_2bit.vcd");
    $dumpvars(0,comparator_2bit_tb);
    
        // Test case: 10 < 11 (a=2, b=3)
        a0 = 1'b0; a1 = 1'b1;
        b0 = 1'b1; b1 = 1'b1;
        #10; // Wait for 10 time units
        a0 = 1'b0; a1 = 1'b1;
        b0 = 1'b0; b1 = 1'b0;
        #10
        a0 = 1'b1; a1 = 1'b1;
        b0 = 1'b1; b1 = 1'b1;
        #10
        a0 = 1'b1; a1 = 1'b1;
        b0 = 1'b0; b1 = 1'b0;
        #10
     
        
        $finish;
    end
endmodule

