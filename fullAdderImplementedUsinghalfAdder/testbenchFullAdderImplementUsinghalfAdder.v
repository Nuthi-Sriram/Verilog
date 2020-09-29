//Test bench for  full adder implementation using half adder


module testBenchFullAdderImplementedUsinghalfAdder();
reg x;
reg y;
reg cin;

wire cout,s1,c1,c2;

fullAdderImplementedUsinghalfAdder dut(.x(x),.y(y),.cin(cin),.s(s),.cout(cout));

initial
 begin
 x=1'b0;
 y=1'b0;
 cin=1'b0;
#10
 x=1'b0;
 y=1'b0;
 cin=1'b1;
#10
 x=1'b0;
 y=1'b1;
 cin=1'b0;
#10
 x=1'b0;
 y=1'b1;
 cin=1'b1;
#10
 x=1'b1;
 y=1'b0;
 cin=1'b0;
#10
 x=1'b1;
 y=1'b0;
 cin=1'b1;
#10
 x=1'b1;
 y=1'b1;
 cin=1'b0;
#10
 x=1'b1;
 y=1'b1;
 cin=1'b1;
#10

$finish;
end
initial
 $monitor("At time %t, x=%d, y=%d, cin=%d   =s=%d, cout=%d", $time,x,y,cin,s,cout);
endmodule
