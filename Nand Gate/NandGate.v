
//Model to Nand Gate

module nandgate(x,y,z);

input x,y;
output z;

assign z=~(x&y);

endmodule