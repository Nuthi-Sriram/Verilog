//Full adder implemented using 2 halfadder

//Gate level implementation of Full adder
module fullAdderImplementedUsinghalfAdder(x,y,cin,s,cout);
input x,y,cin;
output s,cout;

wire s1,c1,c2;
HalfAdderGateLevel(x,y,s1,c1);
HalfAdderGateLevel(cin,s1,s,c2);
or(cout,c1,c2);
endmodule
