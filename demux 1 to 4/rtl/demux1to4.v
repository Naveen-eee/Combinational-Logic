module demux1to4(
    input a,
    input [1:0] sel,
    output reg b,c,d,e
);

always @(*)
begin
    case(sel)
    2'b00:begin b = a;
           c=0;
           d=0;
           e=0;
    end

    2'b01: begin
         c = a;
           b=0;
           d=0;
           e=0;
    end

    2'b10: begin
         d = a;
           b=0;
           c=0;
           e=0;
    end

    2'b11: begin
         e = a;
           b=0;
           c=0;
           d=0;
    end

    default: begin
        b=0;
             c=0;
             d=0;
             e=0;
    end

    endcase
end
endmodule
 