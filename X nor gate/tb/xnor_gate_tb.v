`timescale 1ns/1ps
module xnor_gate_tb;
    reg a;
    reg b;
    wire c;

xnor_gate dut(
    .a(a),
    .b(b),
    .c(c)
);

initial
begin
    $display("XNOR gate test starts");
    a=0;b=0;
    #10;
    if(c==1)
        $display("PASS,expected=1,got=%b",c);
    else
        $display("FAIL,expected=1,got=%b",c);
    a=0;b=1;
    #10;
    if(c==0)
        $display("PASS,expected=0,got=%b",c);
    else
        $display("FAIL,expected=0,got=%b",c);
    a=1;b=0;
    #10;
    if(c==0)
        $display("PASS,expected=0,got=%b",c);
    else
        $display("FAIL,expected=0,got=%b",c);
    a=1;b=1;
    #10;
    if(c==1)
        $display("PASS,expected=1,got=%b",c);
    else
        $display("FAIL,expected=1,got=%b",c);
    $display("XNOR gate test ends");
    $finish;
end
endmodule

