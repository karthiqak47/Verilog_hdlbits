module top_module ( input [1:0] A, input [1:0] B, output z ); 
    always @(*) begin
        z=1'b0;
        if (A==B)
            z=1'b1;
    end
endmodule
