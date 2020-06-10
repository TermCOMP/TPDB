%query: money(o,o,o,o,o,o,o,o).
/*-----------------------------------------------------------------------------
Program: Cryptarithmetic puzzle SENDMORY
Author:  Rong Yang (adapted)
Date:

Notes:
1. To run:
    ?- money(S,E,N,D,M,O,R,Y).
2. Solution is reached in the domain approach so as to recognize determinism
    as the ecuations are being resolved.
3. After-checks are used and calc/5 ordering is better (L to R).
    compiled it takes about 50 sec.
-----------------------------------------------------------------------------*/


%:- entry(solve(f)).

demo:- nl,
    write('Cryptarithmetic puzzle'), nl,nl,
    write('     SEND'), nl,
    write('  +  MORE'), nl,
    write(' --------'), nl,
    write('    MONEY'), nl, nl, nl,
    time(_),
    money(S,E,N,D,M,O,R,Y),
    time(T),
    write('The solution is:'), nl, nl,
    write('     '), write(S),write(E),write(N),write(D), nl,
    write('   + '), write(M),write(O),write(R),write(E), nl,
    write(' --------'), nl,
    write('    '),write(M),write(O),write(N),write(E),write(Y), nl, nl,
    write('Solved in '), write(T), write(' msec.'), nl.

time(0).

solve([S,E,N,D,M,O,R,Y]):- money(S,E,N,D,M,O,R,Y).

money(S,E,N,D,M,O,R,Y):-
    carry(C1),
    carry(C2),
    carry(C3),
    carry(C4),
    C4 = M, M =\= 0,
    domain([S,E,N,D,M,O,R,Y],[0,1,2,3,4,5,6,7,8,9]),
    S =\= 0,
    calc(C3,S,M,C4,O),
    calc(C2,E,O,C3,N),
    calc(C1,N,R,C2,E),
    calc( 0,D,E,C1,Y).

calc(C0,D,E,C1,Y):-
    sum(C0,D,CD),
    sum(CD,E,S),
    carry10(C1,C10),
    sum(C10,Y,S).

sum(X,Y,Z):- Z is X+Y.

domain([],_).
domain([X1|R],L) :-
    del(X1,L,NL),
    domain(R,NL).

del(X,[X|T],T).
del(X,[Y|T],[Y|NT]) :- del(X,T,NT).

carry(1).
carry(0).

carry10(0,0).
carry10(1,10).
/*
%------------------------------------------------------------------------------

no_trace_main:- 
	time(_),
        solve(X),
	time(T),
	write('Executed in '), write(T), write(' mS.'), nl,
	write('Result '), write(X), nl.

trace_main(Eventfile):-
	start_event_trace, 
        solve(X),
	stop_event_trace,
	save_trace(Eventfile),
	write('Result '), write(X),nl.

save_trace(X) :-
	write('Saving trace in file '), write(X), write('... '), 
	open(X,write,Y),
	save_event_trace(Y),
	close(X),
	write('done.'), nl.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



*/


