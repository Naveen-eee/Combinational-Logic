`timescale 1ns/1ps
module nor_gate_tb;
    reg a;
    reg b;
    wire c;

nor_gate dut(
    .a(a),
    .b(b),
    .c(c)
);

initial
begin
    $display("NOR gate test starts");
    a=0;b=0;
    #10;
    if(c==1)
        $display("PASS,Expected=1,got=%b",c);
    else
        $display("FAIL,Expected=1,got=%b",c);
    a=0;b=1;
    #10;
    if(c==0)
        $display("PASS,Expected=0,got=%b",c);
    else
        $display("FAIL,Expected=0,got=%b",c);
    a=1;b=0;
    #10;
    if(c==0)
        $display("PASS,Expected=0,got=%b",c);
    else
        $display("FAIL,Expected=0,got=%b",c);
    a=1;b=1;
    #10;
    if(c==0)
        $display("PASS,Expected=0,got=%b",c);
    else
        $display("FAIL,Expected=0,got=%b",c);
    $display("NOR gate test ends");
    $finish;
end
endmodule

