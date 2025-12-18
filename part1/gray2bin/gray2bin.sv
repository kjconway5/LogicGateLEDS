module gray2bin
  #(parameter width_p = 5) (
   // You must fill these in with width_p
   input logic [width_p-1 : 0] gray_i,
   output logic [width_p-1 : 0] bin_o
);

  // functionally passes but fails lint because of the for loop counting down
  // genvar i; 
  // generate
  //   for (i = width_p-2; i >= 0; i--) begin 
  //     assign bin_o[i] = gray_i[i] ^ bin_o[i+1];
  //   end
  // endgenerate
  // assign bin_o[width_p-1] = gray_i[width_p-1];

  genvar i;
  generate
    for (i = 0; i < width_p-1; i++) begin : gray2bin_loop
      assign bin_o[i] = ^(gray_i[width_p-1:i]);  
    end
  endgenerate
  assign bin_o[width_p-1] = gray_i[width_p-1];

endmodule
