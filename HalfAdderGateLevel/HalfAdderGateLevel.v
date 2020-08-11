
//Circuit for a half adder using gate level implementation
module HalfAdderGateLevel(A,B,Sum,Carry);
input A,B;
output Sum,Carry;

xor u1(Sum,A,B);
and u2(Carry,A,B);

endmodule