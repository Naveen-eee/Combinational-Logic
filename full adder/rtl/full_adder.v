module full_adder(
    input a,b,c_in,
    output sum,carry
);

wire s1,c1,c2;

half_adder HA1(
    .a(a),
    .b(b),
    .sum(s1),
    .carry(c1)
);

half_adder HA2(
    .a(s1),
    .b(c_in),
    .sum(sum),
    .carry(c2)
);

assign carry = c1 | c2;

endmodule


