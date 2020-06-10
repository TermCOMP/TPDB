%Source: Ports of programs found in TPDB/C/AProVE_numeric
%query:main.
% source: http://cl2-informatik.uibk.ac.at/mercurial.cgi/TPDB/file/72cccd64ec42/C/AProVE_numeric/svcomp_java_Sequence.c

main :- main(0, 0).

main(I, C) :- I < 100, C1 is C + 1, I1 is I + 1, main(I1, C1).
main(I, C) :- I >= 100, main(I, 5, C).
main(I, J, C) :- J < 21, C1 is C + 1, J1 is J + 3, main(I, J1, C1).
main(I, J, C) :- J >= 21.
