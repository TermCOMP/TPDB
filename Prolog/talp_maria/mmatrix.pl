%query: mmultiply(i,i,o).
%------------------------------------------------------------------------------
%	Benchmark Program - matrix*matrix multiplication
%
%	Copyright by Manuel Hermenegildo
%	Date: January 17 1986
%
%------------------------------------------------------------------------------


% :- module(matrix, [main/0]).
%:- entry(mmultiply(g,g,f)).

mmultiply([],_,[]).
mmultiply([V0|Rest], V1, [Result|Others]):-  
            mmultiply(Rest, V1, Others),
    	    multiply(V1,V0,Result).

multiply([],_,[]).
multiply([V0|Rest], V1, [Result|Others]):-  
            multiply(Rest, V1, Others),
    	    vmul(V0,V1,Result).

vmul([],[],0).
vmul([H1|T1], [H2|T2], Result):- 
	vmul(T1,T2, Newresult), 
	Product is H1*H2,
	Result is Product+Newresult.
/*
:- noparallelize.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%         This piece has been included for the simulation process    %

no_trace_main:- 
        makematrix(13,M),
	trans_m(M,V),
	time(_),
        mmultiply(M,V,R),
	time(T),
	write('Executed in '), write(T), write(' mS.'), nl,
	write('Result '), write(R), nl.

trace_main(Eventfile):-
        makematrix(13,M),
	trans_m(M,V),
	start_event_trace, 
        mmultiply(M,V,R),
	stop_event_trace,
	save_trace(Eventfile),
	write('Result '), write(R),nl.

save_trace(X) :-
	write('Saving trace in file '), write(X), write('... '), 
	open(X,write,Y),
	save_event_trace(Y),
	close(X),
	write('done.'), nl.

time(T) :- statistics(runtime,[_,T]).
*/
trans_m([[]|_],[]).
trans_m(M,[C1|Cn]):- trans_v(M,C1,R), trans_m(R,Cn).

trans_v([],[],[]).
trans_v([[C11|C1n]|C],[C11|X],[C1n|Y]):- trans_v(C,X,Y).

makematrix(N,Matrix):- makevector(N,Vec), makematrix(N,Vec,Matrix).

makematrix(0,_,[]).
makematrix(Rows,Vector,[Vector|T]):- Rows>0,
	Nextrow is Rows-1, 
	makematrix(Nextrow,Vector,T).

makevector(0,[]).
makevector(Cols,[Cols|T]):- Cols>0,
	Nextcol is Cols-1, makevector(Nextcol,T).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

































