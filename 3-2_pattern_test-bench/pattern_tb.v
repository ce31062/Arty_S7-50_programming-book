module pattern_tb;

/*Define clock period and number of simulation clocks*/
localparam STEP = 8;
localparam CLKNUM = (800*525+12000)*5;

/*Declaration of connection signal*/
reg		CLK;
reg		RST;
wire	[7:0]	VGA_R, VGA_G, VGA_B;
wire			VGA_HS, VGA_VS, VGA_DE;
wire			PCK;

/*Connect the pattern display circuit*/
pattern pattern(
	.CLK	(CLK),
	.RST	(RST),
	.VGA_R	(VGA_R),
	.VGA_G	(VGA_G),
	.VGA_B	(VGA_B),
	.VGA_HS	(VGA_HS),
	.VGA_VS	(VGA_VS),
	.VGA_DE	(VGA_DE),
	.PCK	(PCK)
);

/*Generate clock*/
always begin
	CLK = 0; #(STEP/2);
	CLK = 1; #(STEP/2);
end

/*Create input for validation target*/
initial	begin
				RST = 0;
	#(STEP*600)	RST = 1;
	#(STEP*20)	RST = 0;
	#(STEP*CLKNUM);
	$stop;
end
endmodule
