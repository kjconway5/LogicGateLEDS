module iverilog_dump();
initial begin
    $dumpfile("xnor2.fst");
    $dumpvars(0, xnor2);
end
endmodule
