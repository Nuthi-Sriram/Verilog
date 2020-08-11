
//Circuit for a half adder using Data Flow level implementation
module HalfAdderGateLevel(A,B,Sum,Carry);
input A,B;
output Sum,Carry;

assign Sum=A ^ B;
assign Carry=A & B;

endmodule
