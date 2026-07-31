`timescale 1ns/1ps
module full_adder_tb;
    reg a,b,c_in;
    wire sum,carry;

full_adder dut(
    .a(a),
    .b(b),
    .c_in(c_in),
    .sum(sum),
    .carry(carry)
);

initial 
begin
    $display("full adder test starts");
    a=0;b=0;c_in=0;
    #10;
    if(sum ==0 && carry ==0)
        $display("PASS,expected sum =0,carry =0 , actual sum =%b, carry = %b",sum,carry);
    else
        $display("FAIL,expected sum =0,carry =0 , actual sum =%b, carry = %b",sum,carry);
    a=0;b=0;c_in=1;
    #10;
    if(sum ==1 && carry ==0)
        $display("PASS,expected sum =1,carry =0 , actual sum =%b, carry = %b",sum,carry);
    else
        $display("FAIL,expected sum =1,carry =0 , actual sum =%b, carry = %b",sum,carry);
    a=0;b=1;c_in=0;
    #10;
    if(sum ==1 && carry ==0)
        $display("PASS,expected sum =1,carry =0 , actual sum =%b, carry = %b",sum,carry);
    else
        $display("FAIL,expected sum =1,carry =0 , actual sum =%b, carry = %b",sum,carry);
    a=0;b=1;c_in=1;
    #10;
    if(sum ==0 && carry ==1)
        $display("PASS,expected sum =0,carry =1 , actual sum =%b, carry = %b",sum,carry);
    else
        $display("FAIL,expected sum =0,carry =1 , actual sum =%b, carry = %b",sum,carry);
    a=1;b=0;c_in=0;
    #10;
    if(sum ==1 && carry ==0)
        $display("PASS,expected sum =1,carry =0 , actual sum =%b, carry = %b",sum,carry);
    else
        $display("FAIL,expected sum =1,carry =0 , actual sum =%b, carry = %b",sum,carry);
    a=1;b=0;c_in=1;
    #10;
    if(sum ==0 && carry ==1)
        $display("PASS,expected sum =0,carry =1 , actual sum =%b, carry = %b",sum,carry);
    else
        $display("FAIL,expected sum =0,carry =1 , actual sum =%b, carry = %b",sum,carry);
    a=1;b=1;c_in=0;
    #10;
    if(sum ==0 && carry ==1)
        $display("PASS,expected sum =0,carry =1 , actual sum =%b, carry = %b",sum,carry);
    else
        $display("FAIL,expected sum =0,carry =1 , actual sum =%b, carry = %b",sum,carry);
    a=1;b=1;c_in=1;
    #10;
    if(sum ==1 && carry ==1)
        $display("PASS,expected sum =1,carry =1 , actual sum =%b, carry = %b",sum,carry);
    else
        $display("FAIL,expected sum =1,carry =1 , actual sum =%b, carry = %b",sum,carry);
    $display("Full adder test ends");
    $finish;
end
endmodule

