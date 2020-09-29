
//Circuit for a half adder using gate level implementation
module HalfAdderGateLevel(x,y,s,c);
input x,y;
output s,c;

xor u1(s,x,y);
and u2(c,x,y);

endmodule