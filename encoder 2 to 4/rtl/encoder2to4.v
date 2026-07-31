module encoder4to2(
    input y0,y1,y2,y3,
    output a,b
);

assign a = y2 | y3;
assign b = y1 | y3 ;

endmodule
