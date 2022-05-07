/* Copyright(C) 2020 Cobac.Net All Rights Reserved. */
/* chapter: 第2章                               */
/* project: pattern                             */
/* outline: パターン表示回路のVGA出力用最上階層 */

module pattern_vga(
    input           CLK,
    input           RST,
    output  [3:0]   VGA_R, VGA_G, VGA_B,
    output          VGA_HS, VGA_VS
);

wire [3:0] dummy_r, dummy_g, dummy_b;

/* パターン表示回路を接続 */
pattern pattern(
    .CLK    (CLK),
    .RST    (RST),
    .VGA_R  ({VGA_R, dummy_r}),
    .VGA_G  ({VGA_G, dummy_g}),
    .VGA_B  ({VGA_B, dummy_b}),
    .VGA_HS (VGA_HS),
    .VGA_VS (VGA_VS),
    .VGA_DE (),
    .PCK    ()
);

endmodule
