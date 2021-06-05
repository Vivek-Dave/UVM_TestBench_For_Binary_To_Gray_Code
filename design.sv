module bin2gray(in,out);

    input  [7:0] in;
    output [7:0] out;

    assign out[7] = in[7];
    assign out[6] = in[7] ^ in[6];
    assign out[5] = in[6] ^ in[5];
    assign out[4] = in[5] ^ in[4];
    assign out[3] = in[4] ^ in[3];
    assign out[2] = in[3] ^ in[2];
    assign out[1] = in[2] ^ in[1];
    assign out[0] = in[1] ^ in[0];

endmodule
