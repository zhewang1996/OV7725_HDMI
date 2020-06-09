module rgb565_rgb888(
	input [15:0] rgb565,
	output [23:0] rgb888
);

wire [7:0] R;
wire [7:0] G;
wire [7:0] B;

assign rgb888 = {R,G,B};
assign R = {rgb565[15:11],rgb565[15:13]};
assign G = {rgb565[10:5],rgb565[10:9]};
assign B = {rgb565[4:0],rgb565[4:2]};

endmodule