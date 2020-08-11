
//Gate level implementation

module threeorgateGateLevel(out, a, b, c, d);
input a, b, c, d;
output out;
 wire x,y;
or or1(x, a,b);
or or2(y, c,d);
or orFinal(out, x,y);
endmodule


