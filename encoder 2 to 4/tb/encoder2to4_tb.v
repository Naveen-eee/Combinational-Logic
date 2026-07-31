`timescale 1ns/1ps
module encoder2to4_tb;
    reg y0,y1,y2,y3;
    wire a,b;

encoder4to2 dut(
    .y0(y0),
    .y1(y1),
    .y2(y2),
    .y3(y3),
    .a(a),
    .b(b)
);

initial 
begin
    $display("Encoder test starts");
    y0=1;y1=0;y2=0;y3=0;
    #10;
    if(a==0 && b==0)
        $display("PASS,expected=00,got=%b%b",a,b);
    else
        $display("FAIL,expected=00,got=%b%b",a,b);
    y0=0;y1=1;y2=0;y3=0;
    #10;
    if(a==0 && b==1)
        $display("PASS,expected=01,got=%b%b",a,b);
    else
        $display("FAIL,expected=01,got=%b%b",a,b);
     y0=0;y1=0;y2=1;y3=0;
    #10;
    if(a==1 && b==0)
        $display("PASS,expected=10,got=%b%b",a,b);
    else
        $display("FAIL,expected=10,got=%b%b",a,b);
     y0=0;y1=0;y2=0;y3=1;
    #10;
    if(a==1 && b==1)
        $display("PASS,expected=11,got=%b%b",a,b);
    else
        $display("FAIL,expected=11,got=%b%b",a,b);
    $display("ENCODER test ends");
    $finish;
end
endmodule
