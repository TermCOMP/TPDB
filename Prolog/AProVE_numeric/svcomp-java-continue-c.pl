%Source: Ports of programs found in TPDB/C/AProVE_numeric
%query:main.
% source: http://cl2-informatik.uibk.ac.at/mercurial.cgi/TPDB/file/72cccd64ec42/C/AProVE_numeric/svcomp_java_Continue1.c

main :- main(0, 0).

main(I, C) :- I < 20, body(I, C).
main(I, C) :- I >= 20, body(I, C).

body(I, C) :- I1 is I + 1, I1 =< 10, body(I1, C).
body(I, C) :- I1 is I + 1, I1 > 10, C1 is C + 1, body(I1, C1).
