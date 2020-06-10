%Source: Ports of programs found in TPDB/C/AProVE_numeric
%query:iterate(g).
% source: http://cl2-informatik.uibk.ac.at/mercurial.cgi/TPDB/file/72cccd64ec42/C/AProVE_numeric/svcomp_easySum.c

iterate(Bound) :- loop(Bound, 0, 0).

loop(Bound, I, Sum) :- I < Bound, Sum1 is Sum + I, I1 is I + 1, loop(Bound, I1, Sum1).
loop(Bound, I, Sum) :- I >= Bound.
