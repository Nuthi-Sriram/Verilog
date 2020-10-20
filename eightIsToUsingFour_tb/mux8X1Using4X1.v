

module mux8X1Using4X1( in,sel,out);
input [7:0]in;
input [2:0]sel;
wire a,b;
output out;


mux4X1 mux1(in[3:0],sel[0], a);
mux4X1 mux2(in[7:4],sel[1], b);
mux2X1 mux3(a,b,sel[2], out);
endmodule
