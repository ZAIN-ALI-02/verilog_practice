// half_adder_tb.v

`timescale 1 ns/1ns

module half_tb;

    reg a, b ;
    wire sum , carry ;

    initial begin
        $dumpfile("test.vcd");
        $dumpvars(0,half_tb);
    end


    half UUT (.a(a), .b(b), .sum(sum), .carry(carry));
    
    initial // initial block executes only once
        begin
            // values for a and b
            a = 1'b0;
            b = 1'b0;
            #10 

            a = 1'b1;
            b = 1'b0;
            #10

            a = 1'b0;
            b = 1'b1;
            #10

            a = 1'b1;
            b = 1'b1;
            #100;
        end
endmodule
