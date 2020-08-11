
// Data Flow level implementation
module andOrNotDataFlowLevelImplementation(A,B,C,x,y);

input A,B,C;
output x,y;

assign y=~C;
assign x=((A & B) | ~C);

endmodule
