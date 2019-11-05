module pc_reg(input wire clk
	      input wire 		      rst,
	      output reg [`INST_ADDRESS_BUSS] pc,
	      output reg 		      ce);
   always @(posedge clk) begin
      if (rst == `RST_ENABLE) 	begin
	 ce <= `CHIP_DISABLE;	   
      end else begin
	 ce <= `CHIP_ENABLE;
      end
   end

   always @(posedge clk) begin
      if (ce == `CHIP_DISABLE) begin
	 pc <= `ZERO_WORD;
      end else begin
	 pc <= pc + 4'h4;
      end
   end
endmodule // pc_reg

