
`ifdef LINTER
    `include "solutions/and_gate.v"
`endif

`timescale 1s/1ms

module and_gate_tb ();

reg clk = 1;
always #(0.5) clk <= ~clk;

reg [1:0] in = 0;
wire out;

and_gate a(in[0],in[1],out);

integer i;

/* Test */
integer f;
initial begin
$timeformat( 0, 0, "", 0);
f = $fopen("output.txt");
//\\ =========================== \\//

for (i = 0; i < 4; i=i+1) begin
    in <= i;
    @(posedge clk);
    $fwrite(f, "a=%b b=%b : c=%b\n", in[0], in[1], out);
end

//\\ =========================== \\//
$fclose(f);
$finish ;
end

endmodule
