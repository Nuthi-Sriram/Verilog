



module nineOdd_tb;

reg[8:0] d;
reg[8:0] A;
wire     Z0;

integer  i;

nineOdd my_mux( .A(d),.Z0(Z0) );

initial
begin
   #1 $monitor("d = %b", d, "  |  A = %b", d, "  |  output = %b", Z0 );

   for( i = 0; i <= 15; i = i + 1)
   begin
      d = i;
     
	#10	
      $display("-----------------------------------------");
    end

end
endmodule