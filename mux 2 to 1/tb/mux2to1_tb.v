`timescale 1ns/1ps
module mux2to1_tb;
    reg a;
    reg b;
    reg s;
    wire c;

mux2to1 dut(
    .a(a),
    .b(b),
    .s(s),
    .c(c)
);

initial
begin
    $display("Mux2 to 1 test starts");
    a=1;b=0;s=0;
    #10;
    if(c==1)
        $display("PASS,expected=1,got=%b",c);
    else
        $display("FAIL,expected=1,got=%b",c);
    a=0;b=1;s=1;
    #10;
    if(c==1)
        $display("PASS,expected=1,got=%b",c);
    else
        $display("FAIL,expected=1,got=%b",c);
    $display("Mux2 to 1 test ends");
    $finish;
end
endmodule
