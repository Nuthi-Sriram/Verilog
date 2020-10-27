

module RisingEdge_DFlipFlop_SyncReset(D,clk,sync_reset,Q);
input D;
input clk;
input sync_reset;
output reg Q;
always @(posedge clk or posedge sync_reset)
begin
 if (sync_reset==1'b1)
   Q <= 1'b0;
 else
   Q <= D;
end
endmodule