`timescale 1ns/1ps
module decoder2to4_tb;
    reg a,b;
    wire y0,y1,y2,y3;

decoder2to4 dut(
    .a(a),
    .b(b),
    .y0(y0),
    .y1(y1),
    .y2(y2),
    .y3(y3)
);

initial 
begin
    $display("DECODER 2 to 4 test starts");
    a=0;b=0;
    #10;
    if(y0==1 && y1==0 && y2==0 && y3==0)
        $display("PASS,expected=1,got=%b",y0);
    else
        $display("FAIL,expected=1,got=%b",y0);
    a=0;b=1;
    #10;
    if(y0==0 && y1==1 && y2==0 && y3==0)
        $display("PASS,expected=1,got=%b",y1);
    else
        $display("FAIL,expected=1,got=%b",y1);
    a=1;b=0;
    #10;
    if(y0==0 && y1==0 && y2==1 && y3==0)
        $display("PASS,expected=1,got=%b",y2);
    else
        $display("FAIL,expected=1,got=%b",y2);
    a=1;b=1;
    #10;
    if(y0==0 && y1==0 && y2==0 && y3==1)
        $display("PASS,expected=1,got=%b",y3);
    else
        $display("FAIL,expected=1,got=%b",y3);
    $display("DECODER 2 to 4 test ends");
    $finish;
end
endmodule
    
    
    