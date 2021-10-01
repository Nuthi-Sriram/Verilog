module nineOdd(A,Z0);
input [8:0] A;
output Z0;
wire a,b,c;

threeOdd gate1(A[0],A[1],A[2],a);
threeOdd gate2(A[3],A[4],A[5],b);
threeOdd gate3(A[6],A[7],A[8],c);
threeOdd gateFinal(a,b,c,Z0);
endmodule
