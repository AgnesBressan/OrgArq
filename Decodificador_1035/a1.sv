module Decoder1035 (
    input [15:0] input_vector,
    output o
);

wire [15:0] ninp;

generate
    for (genvar i = 0; i < 16; i++) begin
        assign ninp[i] = ~input_vector[i];
    end
endgenerate

assign o = input_vector[0] & input_vector[1] & ninp[2] & input_vector[3] &
            ninp[4] & ninp[5] & ninp[6] & ninp[7] & ninp[8] & ninp[9] &
            input_vector[10] & ninp[11] & ninp[12] & ninp[13] & ninp[14] & ninp[15];

endmodule

