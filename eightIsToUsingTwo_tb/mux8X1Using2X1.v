


module mux8X1Using2X1( in,sel,out);
input [7:0]in;
input [2:0]sel;
wire a,b,c,d,e,f;
output out;


mux2X1 mux1(in[0],in[1],sel[0], a);
mux2X1 mux2(in[2],in[3],sel[0], b);
mux2X1 mux3(in[4],in[5],sel[0], c);
mux2X1 mux4(in[6],in[7],sel[0], d);
mux2X1 mux5(a,b,sel[1], e);
mux2X1 mux6(c,d,sel[1], f);
mux2X1 mux7(e,f,sel[2], out);

endmodule
