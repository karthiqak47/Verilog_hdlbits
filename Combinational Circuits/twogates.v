module top_module (
    input in1,
    input in2,
    output out);
wire q;
    assign q=~in2;
    and(out,in1,q);
    
endmodule
