//Test bench for  one Bit Full Adder


module testBenchoneBitFullAdder;
reg x;
reg y;
reg cin;
wire cout;

fulladd dut(.a(x),.b(y),.cIn(cin),.sum(s),.cOut(cout));
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
