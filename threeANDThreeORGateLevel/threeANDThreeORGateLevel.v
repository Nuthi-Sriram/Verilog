

//Gate Level Implementation

module threeANDFourORGateLevel(x1,x2,x2,x3,x4,f);

input x1,x2,x3,x4;s
output f;
wire a,b,c,d,e,y,g,h;

and and1(c,x1,x3);
and and2(d,x2,x4);
not not1(a,x3);
not not2(b,x2);
or or1(e,x1,a);
or or2(y,b,x4);
or or3(g,c,d);
and and3(h,e,y);
or orFinal(f,g,h);

endmodule