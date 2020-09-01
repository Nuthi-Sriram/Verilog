
module alu(S, A, B, F);
input[2:0]S;
input[3:0]A, B;
output reg[3:0] F;

always @(S or A or B)
begin 
  case(S) 
       3'b000:F=4'b0000;
       3'b001:F=B-A;
       3'b010:F=A-B;
       3'b011:F=A+B;
       3'b100:F=A^B;
       3'b101:F=A | B;
       3'b110:F=A & B;
       3'b111:F=4'b1111;
  endcase
end
endmodule