module mux4to1_tb;
    reg a;
    reg b;
    reg c;
    reg d;
    reg [1:0] sel;
    wire e;

mux4to1 dut(
    .a(a),
    .b(b),
    .c(c),
    .d(d),
    .sel(sel),
    .e(e)
);

initial
begin
    $display("Mux 4 to 1 test starts");
    a=1;b=0;c=0;d=0;sel=2'b00;
    #10;
    if(e==1)
        $display("PASS,expected=1,got=%b",e);
    else
        $display("FAIL,expected=1,got=%b",e);
    a=0;b=1;c=0;d=0;sel=2'b01;
    #10;
    if(e==1)
        $display("PASS,expected=1,got=%b",e);
    else
        $display("FAIL,expected=1,got=%b",e);
    a=0;b=0;c=1;d=0;sel=2'b10;
    #10;
    if(e==1)
        $display("PASS,expected=1,got=%b",e);
    else
        $display("FAIL,expected=1,got=%b",e);
    a=0;b=0;c=0;d=1;sel=2'b11;
    #10;
    if(e==1)
        $display("PASS,expected=1,got=%b",e);
    else
        $display("FAIL,expected=1,got=%b",e);
    $display("Mux 4 to 1 test ends");
    $finish;
end
endmodule
