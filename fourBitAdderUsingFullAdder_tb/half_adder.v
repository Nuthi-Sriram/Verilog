
//Name: Nuthi Sriram 
//regno: CSE18083


module half_adder(x,y,s,c);
input x,y;
output s,c;
xor(s,x,y);
and(c,x,y);
endmodule