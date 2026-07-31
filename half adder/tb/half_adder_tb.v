module half_adder_tb;
    reg a,b;
    wire sum,carry;

half_adder dut(
    .a(a),
    .b(b),
    .sum(sum),
    .carry(carry)
);

initial
begin
    $display("Half adder test starts");
    a=0;b=0;
    #10;
    if(sum==0&&carry==0)
        $display("PASS,expected sum=0,carry=0, actual sum = %b, actual carry=%b",sum,carry);
    else
        $display("FAIL,expected sum=0,carry=0, actual sum = %b, actual carry=%b",sum,carry);
    a=0;b=1;
    #10;
    if(sum==1&&carry==0)
        $display("PASS,expected sum=1,carry=0, actual sum = %b, actual carry=%b",sum,carry);
    else
        $display("FAIL,expected sum=1,carry=0, actual sum = %b, actual carry=%b",sum,carry);
    a=1;b=0;
    #10;
    if(sum==1&&carry==0)
        $display("PASS,expected sum=1,carry=0, actual sum = %b, actual carry=%b",sum,carry);
    else
        $display("FAIL,expected sum=1,carry=0, actual sum = %b, actual carry=%b",sum,carry);
    a=1;b=1;
    #10;
    if(sum==0&&carry==1)
        $display("PASS,expected sum=0,carry=1, actual sum = %b, actual carry=%b",sum,carry);
    else
        $display("FAIL,expected sum=0,carry=1, actual sum = %b, actual carry=%b",sum,carry);
    $display("half adder test ends");
    $finish;
end
endmodule


