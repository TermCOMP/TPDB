%Source: Ports of programs found in TPDB/C/AProVE_numeric
%query:loop(g,g).
% source: port of http://cl2-informatik.uibk.ac.at/mercurial.cgi/TPDB/file/72cccd64ec42/C/AProVE_numeric/Et3_true.c
loop(A, B) :- A > 0, A1 is A + B, B1 is B - 1, loop(A1, B1).
