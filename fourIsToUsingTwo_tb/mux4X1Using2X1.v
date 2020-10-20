
// 4:1 implemente using 2:1 mux
module mux4X1Using2X1( in,sel,out);
input [3:0]in;
input [1:0]sel;
wire a,b;
output out;

//assign out =sel[1] ? ( mux2X1 (in[2],in[3],sel[0], out)) : ( mux2X1 (in[0],in[1],sel[0], out));
//assign out = sel[1] ? ( sel[0] ? in[3]: in[2]) : ( sel[0] ? in[1]: in[0]);
mux2X1 mux1(in[0],in[1],sel[0], a);
mux2X1 mux2(in[2],in[3],sel[0], b);
mux2X1 mux3(a,b,sel[1], out);
endmodule