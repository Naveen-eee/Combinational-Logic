`timescale 1ns/1ps
module and_gate_tb;
    reg a;
    reg b;
    wire c;

and_gate  dut(
    .a(a),
    .b(b),
    .c(c)
);

initial begin
    $display("AND gate test begins");
    a=0; b=0 ;
    #10;
    if(c==0)
    begin
        $display("PASS,EXPECTED = 0 , GOT=%b",c);
    end
    else
    begin
        $display("FAIL,EXPECTED=0,GOT=%b",c);
    end
    a=0; b=1;
    #10;
    if(c==0)
    begin
        $display("PASS,EXPECTED = 0 , GOT=%b",c);
    end
    else
    begin
        $display("FAIL,EXPECTED=0,GOT=%b",c);
    end
    a=1; b=0;
    #10;
    if(c==0)
    begin
        $display("PASS,EXPECTED = 0 , GOT=%b",c);
    end
    else
    begin
        $display("FAIL,EXPECTED=0,GOT=%b",c);
    end
    a=1; b=1;
    #10;
    if(c==1)
    begin
        $display("PASS,EXPECTED = 1 , GOT=%b",c);
    end
    else
    begin
        $display("FAIL,EXPECTED=1,GOT=%b",c);
    end
    $display("AND gate test ends");
    $finish;
end


endmodule