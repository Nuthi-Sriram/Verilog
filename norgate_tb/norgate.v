
//Model to NOR Gate

module norgate(x,y,z);

input x,y;
output z;

assign z=~(x | y);

endmodule
