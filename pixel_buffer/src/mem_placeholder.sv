module data_frame_mem (
    input   logic           clka,
    input   logic [0 : 0]   wea,
    input   logic [6 : 0]   addra,
    input   logic [447 : 0] dina,
    input   logic           clkb,
    input   logic [6 : 0]   addrb,
    output  logic [447 : 0] doutb
    );

    assign doutb = 448'h0;

    // GENERATED USING BRAM GENERATOR 8.4

    // data_frame_mem your_instance_name (
    //   .clka(clka),    // input wire clka
    //   .wea(wea),      // input wire [0 : 0] wea
    //   .addra(addra),  // input wire [6 : 0] addra
    //   .dina(dina),    // input wire [447 : 0] dina
    //   .clkb(clkb),    // input wire clkb
    //   .addrb(addrb),  // input wire [6 : 0] addrb
    //   .doutb(doutb)   // output wire [447 : 0] doutb
    // );

endmodule

module pixel_mem (
    input   logic           clka,
    input   logic [0 : 0]   wea,
    input   logic [8 : 0]   addra,
    input   logic [21 : 0]  dina,
    input   logic           clkb,
    input   logic [8 : 0]   addrb,
    output  logic [21 : 0]  doutb
    );

    assign doutb = 21'h0;

    // GENERATED USING BRAM GENERATOR 8.4

    // data_frame_mem your_instance_name (
    //   .clka(clka),    // input wire clka
    //   .wea(wea),      // input wire [0 : 0] wea
    //   .addra(addra),  // input wire [8 : 0] addra
    //   .dina(dina),    // input wire [21 : 0] dina
    //   .clkb(clkb),    // input wire clkb
    //   .addrb(addrb),  // input wire [8 : 0] addrb
    //   .doutb(doutb)   // output wire [21 : 0] doutb

endmodule