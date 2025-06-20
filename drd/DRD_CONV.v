module SYMM_AO6_WRAP(
    input   I0,
    input   I0N,
    input   I1,
    input   I1N,
    input   I2,
    input   I2N,
    input   I3,
    input   I3N,
    input   I4,
    input   I4N,
    input   I5,
    input   I5N,
    input   S0,
    input   S0N,
    input   S1,
    input   S1N,
    input   S2,
    input   S2N,
    input   S3,
    input   S3N,
    input   S4,
    input   S4N,
    input   S5,
    input   S5N,
    output  Y,
    output  YN,
    input   CLK,
    inout   VDD,
    inout   VSS
    );

endmodule

module SYMM_AO3_WRAP(
    input   I0,
    input   I0N,
    input   I1,
    input   I1N,
    input   I2,
    input   I2N,
    input   S0,
    input   S0N,
    input   S1,
    input   S1N,
    input   S2,
    input   S2N,
    output  Y,
    output  YN,
    input   CLK,
    inout   VDD,
    inout   VSS
    );

endmodule

module SYMM_AO2_WRAP(
    input   I0,
    input   I0N,
    input   I1,
    input   I1N,
    input   S0,
    input   S0N,
    input   S1,
    input   S1N,
    output  Y,
    output  YN,
    input   CLK,
    inout   VDD,
    inout   VSS
    );

endmodule

module SYMM_AO2(
    input           CLK,
    input   [1:0]   REGI,
    input   [1:0]   REGIN,
    input           SEL,
    input           SELN,
    output          Y,
    output          YN
);
endmodule

module SYMM_AO3(
    input           CLK,
    input   [2:0]   REGI,
    input   [2:0]   REGIN,
    input   [2:0]   SEL,
    input   [2:0]   SELN,
    output          Y,
    output          YN
);
endmodule

module SYMM_AO6(
    input           CLK,
    input   [5:0]   REGI,
    input   [5:0]   REGIN,
    input   [5:0]   SEL,
    input   [5:0]   SELN,
    output          Y,
    output          YN
);
endmodule

module SE2DIFF(
    input   A,
    output  Y,
    output  YN,
    input   CLK,
    inout   VDD,
    inout   VSS
    );


endmodule

module DIFF2SE(
    input   A,
    input   AN,
    output  Y,
    input   CLK,
    inout   VDD,
    inout   VSS
    );

endmodule

module AND2(
    input   A,
    input   AN,
    input   B,
    input   BN,
    output  Y,
    output  YN,
    input   CLK,
    inout   VDD,
    inout   VSS
    );

endmodule

module AND3(
    input   A,
    input   AN,
    input   B,
    input   BN,
    input   C,
    input   CN,
    output  Y,
    output  YN,
    input   CLK,
    inout   VDD,
    inout   VSS
    );

endmodule

module AND4(
    input   A,
    input   AN,
    input   B,
    input   BN,
    input   C,
    input   CN,
    input   D,
    input   DN,
    output  Y,
    output  YN,
    input   CLK,
    inout   VDD,
    inout   VSS
    );

endmodule

module XOR2(
    input   A,
    input   AN,
    input   B,
    input   BN,
    output  Y,
    output  YN,
    input   CLK,
    inout   VDD,
    inout   VSS
    );

endmodule

module MUX2(
    input   D0,
    input   D0N,
    input   D1,
    input   D1N,
    input   S,
    input   SN,
    output  Y,
    output  YN,
    input   CLK,
    inout   VDD,
    inout   VSS
    );

endmodule


module FA32_DRD (
    input   A,
    input   AN,
    input   B,
    input   BN,
    input   CI,
    input   CIN,
    output  SUM,
    output  SUMN,
    output  COUT,
    output  COUTN,
    input   CLK,
    inout   VDD,
    inout   VSS
    );

endmodule

module HA_DRD(
    input   A,
    input   AN,
    input   B,
    input   BN,
    output  SUM,
    output  SUMN,
    output  COUT,
    output  COUTN,
    input   CLK,
    inout   VDD,
    inout   VSS
    );

endmodule

module AOI22(
    input   A,
    input   AN,
    input   B,
    input   BN,
    input   C,
    input   CN,
    input   D,
    input   DN,
    output  Y,
    output  YN,
    input   CLK,
    inout   VDD,
    inout   VSS
    );

endmodule

module AOI21(
    input   A,
    input   AN,
    input   B,
    input   BN,
    input   C,
    input   CN,
    output  Y,
    output  YN,
    input   CLK,
    inout   VDD,
    inout   VSS
    );

endmodule

module OAI22(
    input   A,
    input   AN,
    input   B,
    input   BN,
    input   C,
    input   CN,
    input   D,
    input   DN,
    output  Y,
    output  YN,
    input   CLK,
    inout   VDD,
    inout   VSS
    );

endmodule

module CMPE42(
    input   A,
    input   AN,
    input   B,
    input   BN,
    input   C,
    input   CN,
    input   D,
    input   DN,
    input   CIX,
    input   CIXN,
    output  SUM,
    output  SUMN,
    output  COUT,
    output  COUTN,
    output  COX,
    output  COXN,
    input   CLK,
    inout   VDD,
    inout   VSS
    );

endmodule

module INVD1_DIFF(
    input   A,
    input   AN,
    output Y,
    input   CLK,
    output YN
    );
endmodule

module CKLNQD24(
    input   TE,
    input   E,
    input   CP,
    output  Q
);
endmodule

module CKLNQD12(
    input   TE,
    input   E,
    input   CP,
    output  Q
);
endmodule


module CKAN8_4X(
    input   E,
    input   CK,
    output   OUT
);
endmodule

module CKAN8_8X(
    input   E,
    input   CK,
    output   OUT
);
endmodule

module AO7X22(
    input   I0,
    input   I0N,
    input   I1,
    input   I1N,
    input   I2,
    input   I2N,
    input   I3,
    input   I3N,
    input   I4,
    input   I4N,
    input   I5,
    input   I5N,
    input   I6,
    input   I6N,
    input   S0,
    input   S0N,
    input   S1,
    input   S1N,
    input   S2,
    input   S2N,
    input   S3,
    input   S3N,
    input   S4,
    input   S4N,
    input   S5,
    input   S5N,
    input   S6,
    input   S6N,
    output  Y,
    output  YN,
    input   CLK,
    inout   VDD,
    inout   VSS
    );

endmodule

module AO6X22(
    input   I0,
    input   I0N,
    input   I1,
    input   I1N,
    input   I2,
    input   I2N,
    input   I3,
    input   I3N,
    input   I4,
    input   I4N,
    input   I5,
    input   I5N,
    input   S0,
    input   S0N,
    input   S1,
    input   S1N,
    input   S2,
    input   S2N,
    input   S3,
    input   S3N,
    input   S4,
    input   S4N,
    input   S5,
    input   S5N,
    output  Y,
    output  YN,
    input   CLK,
    inout   VDD,
    inout   VSS
    );

endmodule

module AO3X22(
    input   I0,
    input   I0N,
    input   I1,
    input   I1N,
    input   I2,
    input   I2N,
    input   S0,
    input   S0N,
    input   S1,
    input   S1N,
    input   S2,
    input   S2N,
    output  Y,
    output  YN,
    input   CLK,
    inout   VDD,
    inout   VSS
    );

endmodule

module DEC_ADDSUB(
    input [6:0]     ocode,
    input [6:0]     ocode_N,
    output          out_e,
    output          out_e_N,
    inout           CLK,
    inout           VDD,
    inout           VSS
);

endmodule

module DEC_LOGIC(
    input [6:0]     ocode,
    input [6:0]     ocode_N,
    output          out_e,
    output          out_e_N,
    inout           CLK,
    inout           VDD,
    inout           VSS
);

endmodule

module DEC_SHIFT(
    input [6:0]     ocode,
    input [6:0]     ocode_N,
    output          out_e,
    output          out_e_N,
    inout           CLK,
    inout           VDD,
    inout           VSS
);

endmodule


module DEC_COM(
    input [6:0]     ocode,
    input [6:0]     ocode_N,
    output          out_e,
    output          out_e_N,
    inout           CLK,
    inout           VDD,
    inout           VSS
);

endmodule

module DEC_MUL(
    input [6:0]     ocode,
    input [6:0]     ocode_N,
    output          out_e,
    output          out_e_N,
    inout           CLK,
    inout           VDD,
    inout           VSS
);

endmodule

module DEC_MAC(
    input [6:0]     ocode,
    input [6:0]     ocode_N,
    output          out_e,
    output          out_e_N,
    inout           CLK,
    inout           VDD,
    inout           VSS
);

endmodule

module DEC_MUL_SEL(
    input [6:0]     ocode,
    input [6:0]     ocode_N,
    output          hi_e,
    output          hi_e_N,
    output          low_e,
    output          low_e_N,
    inout           CLK,
    inout           VDD,
    inout           VSS
);

endmodule

module SRL_REG(
    input   [31:0]  D,
    input   [31:0]  DN,
    output  [31:0]  Q,
    output  [31:0]  QN,
    input           E,
    inout           CLK,
    inout           VDD,
    inout           VSS
);
endmodule

module SRL_EN_CELL(
    input           D,
    input           DN,
    output          Y,
    output          YN,
    input           E,
    inout           CLK,
    inout           VDD,
    inout           VSS
);
endmodule

module RAM_CELL(
    input           D,
    input           DN,
    output          Y,
    output          YN,
    input           E,
    inout           CLK,
    inout           VDD,
    inout           VSS
);
endmodule


module BUF_OR_SEL(
    input [31:0]    REGI,
    input [31:0]    REGIN,
    input [31:0]    SEL,
    input [31:0]    SELN,
    output          Y,
    output          YN,
    inout           CLK,
    inout           VDD,
    inout           VSS
);
endmodule