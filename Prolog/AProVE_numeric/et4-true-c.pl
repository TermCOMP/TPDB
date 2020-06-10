%Source: Ports of programs found in TPDB/C/AProVE_numeric
%query:loop(g,g,g,g).
% source: port of http://cl2-informatik.uibk.ac.at/mercurial.cgi/TPDB/file/72cccd64ec42/C/AProVE_numeric/Et4_true.c
loop(A, B, C, R) :- R > 0, B - C >= 1, A =:= C, B1 is 10, C1 is C + 1 + R, A1 is C1, loop(A1, B1, C1, R).
