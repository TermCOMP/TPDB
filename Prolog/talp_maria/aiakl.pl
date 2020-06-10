%query: init_vars(i,i,o,o).

/*-----------------------------------------------------------------------------
	Program: initialization for abstract unification in AKL analyzer
	Author:  Dan Sahlin and Thomas Sjoland
	Date:	 March, 1993

-----------------------------------------------------------------------------*/

%:- entry(init_vars(E1,E2,E1in,E2in),[share([[E1in],[E2in]]),free([E1in,E2in])]).

init_vars(E1,E2,E1init,E2init) :-
	find_all_vars(E1,Vars1),
	find_all_vars(E2,Vars2),
	intersect(Vars1,Vars2,_X,Notin1,Notin2),
	init_vars2(Notin1,E1,E1init),
	init_vars2(Notin2,E2,E2init).

find_all_vars(E,Vars) :-
	find_all_vars2(E,Vars0),
	sort(Vars0,Vars).

find_all_vars2([],[]).
find_all_vars2([Vars=_Values|Es],AllVars) :-
	append(Vars,AllVars1,AllVars),
	find_all_vars2(Es,AllVars1).

init_vars2(Notin,E,Einit) :-
	init_vars3(Notin,E,Einit0),
	sort(Einit0,Einit).

init_vars3([],E,E).
init_vars3([Var|Vars],E,[[Var]=[unbound]|Es]) :-
	init_vars3(Vars,E,Es).

append([],A,A).   % tid 5. 2.9%
append([A|B],C,[A|D]) :-
	append(B,C,D).

intersect(As,[],[],[],As) :- !.
intersect([],Bs,[],Bs,[]) :- !.
intersect([A|As],[B|Bs],Cs,Ds,Es) :-
	(A=B ->
		Cs = [A|Cs2],
		intersect(As,Bs,Cs2,Ds,Es)
	;A@<B ->
		Es = [A|Es2],
		intersect(As,[B|Bs],Cs,Ds,Es2)
	;       Ds = [B|Ds2],
		intersect([A|As],Bs,Cs,Ds2,Es)
	).
/*
:- noparallelize.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%         This piece has been included for the simulation process    %

no_trace_main:- 
	get_query(E1,E2),
	time(_),
	init_vars(E1,E2,E1init,E2init),
	time(T),
	write('Executed in '), write(T), write(' mS.'), nl,
	write('Result '), write(E1init), write(' '), write(E2init), nl.

trace_main(Eventfile):-
	get_query(E1,E2),
	start_event_trace, 
	init_vars(E1,E2,E1init,E2init),
	stop_event_trace,
	save_trace(Eventfile),
	write('Result '), write(E1init), write(' '), write(E2init), nl.

save_trace(X) :-
	write('Saving trace in file '), write(X), write('... '), 
	open(X,write,Y),
	save_event_trace(Y),
	close(X),
	write('done.'), nl.
*/
get_query(E1,E2):- 
	E1 = [X = [a], X = [a],X = [a], X = [a]],
	E2 = [Y = [a], Y = [a],Y = [a], Y = [a]],
	X = [5,7,8,3,2,4,1,6,9,15,17,18,13,12,14,11,16,19,25,27,28,23,22,24,
             21,26,29],
	Y = [15,17,18,13,12,14,11,16,19,35,37,38,33,32,34,5,7,8,3,2,4,1,6,9,
             31,36,39].
/*
time(T) :- statistics(runtime,[_,T]).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
*/