module threeOdd(A0,A1,A2,B0);

input A0,A1,A2;
output B0;
wire d;
xor xor1(d,A0,A1);
xor xor2(B0,d,A2);
endmodule
