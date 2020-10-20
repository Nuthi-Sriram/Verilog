
module eightIsToUsingFour_tb;

reg[7:0] d;
reg[2:0] select;
wire     q;

integer  i;

mux8X1Using4X1 my_mux( .sel(select), .in(d), .out(q) );

initial
begin
   #1 $monitor("d = %b", d, "  |  select = ", select, "  |  q = ", q );

   for( i = 0; i <= 15; i = i + 1)
   begin
      d = i;
      select = 0;  #1;
      select = 1;  #1;
      select = 2;  #1;
    //  select = 3;  #1;
      $display("-----------------------------------------");
    end

end
endmodule

