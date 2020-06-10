%Source: Ports of programs found in TPDB/C/AProVE_numeric
%query:fermat.
% source: http://cl2-informatik.uibk.ac.at/mercurial.cgi/TPDB/file/72cccd64ec42/C/AProVE_numeric/svcomp_fermat.c

fermat :- loop(1, 1, 1, 1000).

loop(A, B, C, Max) :- A * A * A =:= B * B * B + C * C * C, !.
loop(A, B, C, Max) :- A1 is A + 1, checkA(A1, B, C, Max).
checkA(A, B, C, Max) :- A > Max, !, A1 is 1, B1 is B + 1, checkB(A1, B1, C, Max).
checkA(A, B, C, Max) :- checkB(A, B, C, Max).
checkB(A, B, C, Max) :- B > Max, !, B1 is 1, C1 is C + 1, checkC(A, B1, C1, Max).
checkB(A, B, C, Max) :- checkC(A, B, C, Max).
checkC(A, B, C, Max) :- C > Max, !.
checkC(A, B, C, Max) :- loop(A, B, C, Max).
