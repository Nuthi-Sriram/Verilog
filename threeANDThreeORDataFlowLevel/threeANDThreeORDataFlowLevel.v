


//Data Flow Level Implementation

module threeANDFourORDataFlowLevel(x1,x2,x2,x3,x4,f);

input x1,x2,x3,x4;
output f;
wire a,b,c,d,e,y,g,h;

assign f=(((x1 & x3) | (x2 & x4)) | ((x1 | ~x3)&(x4 | ~x2)));

endmodule