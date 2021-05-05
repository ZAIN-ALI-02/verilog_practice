

module half(

    output wire sum , carry ,
    input wire a , b 
    
    
);

assign sum = a ^ b;
assign carry = a & b;

endmodule
