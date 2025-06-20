module halfadd (X, Y, C, S );
input X, Y; 
output C, S; 
wire S1, S2, S3; 
nand NANDA (S3, X, Y); 
nand NANDB (S1, X, S3); 
nand NANDC (S2, S3, Y); 
nand NANDD (S, S1, S2); 
assign C = S3; 
 
endmodule 
