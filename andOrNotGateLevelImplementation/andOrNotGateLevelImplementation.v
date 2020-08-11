
// Gate level implementation
module andOrNotGateLevelImplementation(A,B,C,x,y);

input A,B,C;
wire e;
output x,y;

and g1(e,A,B);
not g2(y,C);
or g3(x,e,y);

endmodule
