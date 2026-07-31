`timescale 1ns/1ps
module demux1to4_tb;
    reg a;
    reg [1:0] sel;
    wire b,c,d,e;

demux1to4 dut(
    .a(a),
    .sel(sel),
    .b(b),
    .c(c),
    .d(d),
    .e(e)
);

initial
begin
    $display("DEMUX 4 TO 1 Test starts");
    a=1;sel=2'b00;
    #10;
    if(b==1 && c==0 && d==0 && e==0)
        $display("PASS,expected=1,got=%b",b);
    else
        $display("FAIL,expected=1,got=%b",b);
    a=1;sel=2'b01;
    #10;
    if(b==0 && c==1 && d==0 && e==0)
        $display("PASS,expected=1,got=%b",c);
    else
        $display("FAIL,expected=1,got=%b",c);
    a=1;sel=2'b10;
    #10;
    if(b==0 && c==0 && d==1 && e==0)
        $display("PASS,expected=1,got=%b",d);
    else
        $display("FAIL,expected=1,got=%b",d);
    a=1;sel=2'b11;
    #10;
    if(b==0 && c==0 && d==0 && e==1)
        $display("PASS,expected=1,got=%b",e);
    else
        $display("FAIL,expected=1,got=%b",e);
    $display("DEMUX 4 TO 1 test ends");
    $finish;
end
endmodule

    
