

// Gate level Implementation

module twoANDNOTORGateLevel(x1,x2,s,f);

input x1,s,x2;
output f;
wire c,e,g,h;

not not1(c,s);
and and1(g,x1,c);
and and2(h,s,x2);
or or1(f,g,h);

endmodule