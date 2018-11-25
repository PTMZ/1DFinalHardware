/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module mojo_top_0 (
    input clk,
    input rst_n,
    output reg [7:0] led,
    input cclk,
    output reg spi_miso,
    input spi_ss,
    input spi_mosi,
    input spi_sck,
    output reg [3:0] spi_channel,
    input avr_tx,
    output reg avr_rx,
    input avr_rx_busy,
    output reg [23:0] io_led,
    output reg [3:0] io_seg,
    input [23:0] io_dip,
    output reg [6:0] dataline
  );
  
  
  
  reg rst;
  
  reg [1175:0] mapArr;
  
  wire [1-1:0] M_reset_cond_out;
  reg [1-1:0] M_reset_cond_in;
  reset_conditioner_1 reset_cond (
    .clk(clk),
    .in(M_reset_cond_in),
    .out(M_reset_cond_out)
  );
  wire [7-1:0] M_display_datalines;
  reg [1176-1:0] M_display_mapArr;
  display_2 display (
    .clk(clk),
    .rst(rst),
    .mapArr(M_display_mapArr),
    .datalines(M_display_datalines)
  );
  
  integer i;
  integer j;
  
  always @* begin
    M_reset_cond_in = ~rst_n;
    rst = M_reset_cond_out;
    led = 8'h00;
    spi_miso = 1'bz;
    spi_channel = 4'bzzzz;
    avr_rx = 1'bz;
    io_led = 24'h000000;
    io_seg = 8'hff;
    for (i = 1'h0; i < 3'h7; i = i + 1) begin
      for (j = 1'h0; j < 3'h7; j = j + 1) begin
        mapArr[(i)*168+(j)*24+23-:24] = io_dip[0+(j)*1+0-:1] == 1'h1 ? 24'hffffff : 24'h000000;
      end
    end
    M_display_mapArr = mapArr;
    dataline = M_display_datalines;
  end
endmodule
