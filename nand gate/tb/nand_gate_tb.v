`timescale 1ns/1ps
module nand_gate_tb;
    reg a;
    reg b;
    wire c;

nand_gate dut(
    .a(a),
    .b(b),
    .c(c)
);

initial
begin
    $display("NAND gate test begins");
    a=0;b=0;
    #10;
    if(c==1)
        $display("PASS,expected=1,got=%b",c);
    else
        $display("FAIL,expected=1,got=%b",c);
    a=0;b=1;
    #10;
    if(c==1)
        $display("PASS,expected=1,got=%b",c);
    else
        $display("FAIL,expected=1,got=%b",c);
    a=1;b=0;
    #10;
    if(c==1)
        $display("PASS,expected=1,got=%b",c);
    else
        $display("FAIL,expected=1,got=%b",c);
    a=1;b=1;
    #10;
    if(c==0)
        $display("PASS,expected=0,got=%b",c);
    else
        $display("FAIL,expected=0,got=%b",c);
    $display("NAND gate test ends");
    $finish;
end
endmodule
