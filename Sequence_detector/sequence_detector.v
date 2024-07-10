module sequence_detector(x,clk,rst,z);
    input x,clk,rst;
    output reg z;
    parameter s0=0,s1=1,s2=2,s3=3;
    reg [1:0]NS,PS;
    always@ (posedge rst or posedge clk)
        if(rst) PS<=0;
    	else PS<=NS;
    always@ (x,PS)
        case(PS)
            s0:begin
                z=x?0:0;
                NS=x?s0:s1;
            end
            s1:begin
                z=x?0:0;
                NS=x?s2:s1;
            end
            s2:begin
                z=x?0:0;
                NS=x?s3:s1;
            end
            s3:begin
                z=x?0:1;
                NS=x?s0:s1;
            end
        endcase 
endmodule

    
            
            
