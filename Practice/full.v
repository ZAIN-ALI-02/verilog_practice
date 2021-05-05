
module full (

    output wire sum , carry , o_r ,
    input wire a , b , c 
    
    
);

assign sum = a ^ b;
assign carry = a & b;
assign o_r = c + b;

endmodule