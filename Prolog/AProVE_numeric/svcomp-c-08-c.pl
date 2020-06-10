%Source: Ports of programs found in TPDB/C/AProVE_numeric
%query:test_fun(g,g).
% source: http://cl2-informatik.uibk.ac.at/mercurial.cgi/TPDB/file/72cccd64ec42/C/AProVE_numeric/svcomp_c.08.c

test_fun(I, J) :- loop(I, J, 0).

loop(I, J, C) :- I >= 0, J1 is 0, inner_loop(I, J1, C).
loop(I, J, C) :- I < 0.

inner_loop(I, J, C) :- J =< I - 1, J1 is J + 1, C1 is C + 1, inner_loop(I, J1, C1).
inner_loop(I, J, C) :- J > I - 1, I1 is I - 1, loop(I1, J, C).
