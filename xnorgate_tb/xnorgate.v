
//Model to XNOR Gate

module xnorgate(x,y,z);

input x,y;
output z;

assign z=(x~^y);

endmodule
