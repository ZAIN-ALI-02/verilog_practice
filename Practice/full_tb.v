// half_adder_tb.v

`timescale 1 ns/1ns

module full_tb;

    reg a_tb, b_tb , c_tb ;
    wire sum , carry  , o1 , o2 , o3;

    initial begin
        $dumpfile("test.vcd");
        $dumpvars(0,full_tb);
    end

    full adder (.a(a_tb), .b(b_tb), .sum(o1), .carry(o2));
    full adder_1 (.a(c_tb), .b(o1), .sum(sum), .carry(o3));
    full adder_2 (.c(o2), .b(o3), .o_r(carry));
    
 initial begin
        a_tb = 1'b0;
        b_tb = 1'b0;
        c_tb = 1'b0;
        #5
        a_tb = 1'b0;
        b_tb = 1'b1;
        c_tb = 1'b0;
        #5
        a_tb = 1'b1;
        b_tb = 1'b0;
        c_tb = 1'b0;
        #5
        a_tb = 1'b1;
        b_tb = 1'b1;
        c_tb = 1'b0;
        #5
        a_tb = 1'b0;
        b_tb = 1'b0;
        c_tb = 1'b1;
        #5
        a_tb = 1'b0;
        b_tb = 1'b1;
        c_tb = 1'b1;
        #5
        a_tb = 1'b1;
        b_tb = 1'b0;
        c_tb = 1'b1;
        #5
        a_tb = 1'b1;
        b_tb = 1'b1;
        c_tb = 1'b1;
        #40
     
        $finish;
    end

endmodule
