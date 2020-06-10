%Source: Ports of programs found in TPDB/C/AProVE_numeric
%query:main.
% source: http://cl2-informatik.uibk.ac.at/mercurial.cgi/TPDB/file/72cccd64ec42/C/AProVE_numeric/svcomp_java_Break.c

main :- main(0, 0).

main(I, C) :- I > 10, !.
main(I, C) :- I1 is I + 1, C1 is C + 1, main(I1, C1).
