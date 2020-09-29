//One bit full adder implementation

module fulladd(sum,cOut,a,b,cIn);

output sum,cOut;
input a,b,cIn;

wire s1,c1,c2;

xor(s1,a,b);
and(c1,a,b);
xor(sum,s1,cIn);
and(c2,s1,cIn);
or(cOut,c2,c1);
or(cOut,c2,c1);
endmodule