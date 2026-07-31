`timescale 1ns/1ps
module not_gate_tb;
    reg a;
    wire c;

not_gate dut(
    .a(a),
    .c(c)
);

initial
begin
    $display("NOT gate test starts");
    a=0;
    #10;
    if(c==1)
        $display("PASS,expected=1,got=%b",c);
    else
        $display("FAIL,expected=1,got=%b",c);
    a=1;
    #10;
    if(c==0)
        $display("PASS,expected=0,got=%b",c);
    else
        $display("FAIL,expected=0,got=%b",c);
    $display("NOT gate test ends");
    $finish;
end
endmodule
