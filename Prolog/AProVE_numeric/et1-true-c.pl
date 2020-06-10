%Source: Ports of programs found in TPDB/C/AProVE_numeric
%query:loop(g,g).
loop(A, B) :- A > B, B1 is B + 1, A1 is A + 1, loop(A1, B1).
