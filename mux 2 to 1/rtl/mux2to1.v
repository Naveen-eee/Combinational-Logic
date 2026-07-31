module mux2to1(
    input a,b,s,
    output c
);

assign c = s ? b : a;

endmodule
