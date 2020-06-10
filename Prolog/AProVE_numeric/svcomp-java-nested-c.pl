%Source: Ports of programs found in TPDB/C/AProVE_numeric
%query:main.
% source: http://cl2-informatik.uibk.ac.at/mercurial.cgi/TPDB/file/72cccd64ec42/C/AProVE_numeric/svcomp_java_Nested.c

main :- main(0, 0).

main(I, C) :- I < 10, loop(I, 3, C).
main(I, C) :- I >= 10.
loop(I, J, C) :- J < 12, J1 is J - 1, C1 is C + 1, J2 is J1 + 2, loop(I, J2, C1).
loop(I, J, C) :- J >= 12, I1 is I + 1, main(I1, C).
