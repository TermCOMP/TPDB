%Source: Ports of programs found in TPDB/C/AProVE_numeric
%query:loop(g,g,g).
% source: port of http://cl2-informatik.uibk.ac.at/mercurial.cgi/TPDB/file/72cccd64ec42/C/AProVE_numeric/Et2_true.c
loop(A,B,R) :- R > 0, B > 0, B1 is B - (1 + R), A1 is A - (1 + R), loop(A1, B1, R).
