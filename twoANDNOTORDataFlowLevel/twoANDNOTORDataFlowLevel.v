




// Data Flow level Implementation

module twoANDNOTORDataFlowLevel(x1,x2,s,f);

input x1,s,x2;
output f;
assign f=((x1 & ~s) | (s & x2));

endmodule
