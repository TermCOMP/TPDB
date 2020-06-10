%query: peephole_opt(i,o).

%------------------------------------------------------------------------------
%	Benchmark Program - SB-Prolog "peephole" optimizer
%
%	Author: 
%	Date: 
%
%	To run: peephole_opt(In,Out).
%------------------------------------------------------------------------------
% exported: peephole_opt/2, with mode < ++, - >

%:- entry(peephole_opt(g,f)).

peephole_opt(Pil, OptPil) :-
		popt1(Pil, Pil1),
		popt2(Pil1, Pil2),
		popt3(Pil2,Pil3),
		popt4(Pil3,_N,OptPil).

popt1([], []).
popt1([Inst|Rest], Pil1) :- popt11(Inst, Rest, Pil1).
popt1([Inst|Rest], Pil1) :- not(popt11(Inst,Rest,Pil)), 
			    Pil1 = [Inst|Pil], popt1(Rest,Pil).

popt11(puttvar(T,R), [getstr(S,R)|PilRest], [putstr(S,T)|OptPilRest]) :-
		popt1a(PilRest, OptPilRest).
popt11(movreg(T,R), [getstr(S,R)|PilRest], OptInstList) :-
		((peep_chk(PilRest,R),
		  OptInstList = [getstr(S,T)|OptPilRest]
		 ) ;
		 (not(peep_chk(PilRest,R)),
		  OptInstList = [movreg(T,R),getstr(S,R)|OptPilRest]
		 )
		),
		popt1(PilRest, OptPilRest).
popt11(movreg(T,R), [puttbreg(R)|PilRest], OptInstList) :-
		((peep_chk(PilRest,R),
		  OptInstList = [puttbreg(T)|OptPilRest]
		 ) ;
		 (not(peep_chk(PilRest,R)),
		  OptInstList = [movreg(T,R),puttbreg(R)|OptPilRest]
		 )
		),
		popt1(PilRest, OptPilRest).
popt11(movreg(T,R), [addreg(R,S)|PilRest], OptInstList) :-
		((peep_chk(PilRest,R),
		  OptInstList = [addreg(T,S)|OptPilRest]
		 ) ;
		 (not(peep_chk(PilRest,R)),
		  OptInstList = [movreg(T,R),addreg(R,S)|OptPilRest]
		 )
		),
		popt1(PilRest, OptPilRest).
popt11(movreg(T,R), [subreg(R,S)|PilRest], OptInstList) :-
		((peep_chk(PilRest,R),
		  OptInstList = [subreg(T,S)|OptPilRest]
		 ) ;
		 (not(peep_chk(PilRest,R)),
		  OptInstList = [movreg(T,R),subreg(R,S)|OptPilRest]
		 )
		),
		popt1(PilRest, OptPilRest).
popt11(movreg(T,R), [mulreg(R,S)|PilRest], OptInstList) :-
		((peep_chk(PilRest,R),
		  OptInstList = [mulreg(T,S)|OptPilRest]
		 ) ;
		 (not(peep_chk(PilRest,R)),
		  OptInstList = [movreg(T,R),mulreg(R,S)|OptPilRest]
		 )
		),
		popt1(PilRest, OptPilRest).
popt11(movreg(T,R), [divreg(R,S)|PilRest], OptInstList) :-
		((peep_chk(PilRest,R),
		  OptInstList = [divreg(T,S)|OptPilRest]
		 ) ;
		 (not(peep_chk(PilRest,R)),
		  OptInstList = [movreg(T,R),divreg(R,S)|OptPilRest]
		 )
		),
		popt1(PilRest, OptPilRest).
popt11(putpvar(V,R), [getpval(V,R)|PilRest], [putpvar(V,R)|OptPilRest]) :-
		popt1(PilRest, OptPilRest).
popt11(putpval(V,R), [getstr(Str,R)|PilRest], [getstrv(Str,V)|OptPilRest]) :-
		not(Str = ('.',2)),		/* to enable list opt */
		popt1(PilRest, OptPilRest).
popt11(putpvar(V,R), [getstr(Str,R)|PilRest], [putstrv(Str,V)|OptPilRest]) :-
		not(Str = ('.',2)),		/* to enable list opt */
		popt1a(PilRest, OptPilRest).
popt11(gettval(R,R), PRest,OptPRest) :- popt1(PRest, OptPRest).
popt11(movreg(R,R), PRest,OptPRest) :- popt1(PRest, OptPRest).
popt11(jump(L), [label(L)|PRest],  [label(L)|OptPRest]) :-
		popt1(PRest,OptPRest).
popt11(jump(Addr), [jump(_N)|PRest],  [jump(Addr)|OptPRest]) :-
		popt1(PRest,OptPRest).
popt11(jumpz(_N,L), [label(L)|PRest],  [label(L)|OptPRest]) :-
		popt1(PRest,OptPRest).
popt11(jumpnz(_N,L), [label(L)|PRest],  [label(L)|OptPRest]) :-
		popt1(PRest,OptPRest).
popt11(jumplt(_N,L), [label(L)|PRest],  [label(L)|OptPRest]) :-
		popt1(PRest, OptPRest).
popt11(jumple(_N,L), [label(L)|PRest],  [label(L)|OptPRest]) :-
		popt1(PRest, OptPRest).
popt11(jumpgt(_N,L), [label(L)|PRest],  [label(L)|OptPRest]) :-
		popt1(PRest,OptPRest).
popt11(jumpge(_N,L), [label(L)|PRest],  [label(L)|OptPRest]) :-
		popt1(PRest,OptPRest).


popt1a([], []).
popt1a([Inst|PilRest], Pil1) :- popt1a1(Inst, PilRest, Pil1).
popt1a([Inst|PilRest], Pil1) :- not(popt1a1(Inst, PilRest, Pil1)),
				Pil1 = [Inst|Pil1Rest],
				popt1a(PilRest,Pil1Rest).

popt1a1(unipvar(X), PilRest, [bldpvar(X)|OptPilRest]) :-
		popt1a(PilRest, OptPilRest).
popt1a1(unipval(X), PilRest, [bldpval(X)|OptPilRest]) :-
		popt1a(PilRest, OptPilRest).
popt1a1(unitvar(X), PilRest, [bldtvar(X)|OptPilRest]) :-
		popt1a(PilRest, OptPilRest).
popt1a1(unitval(X), PilRest, [bldtval(X)|OptPilRest]) :-
		popt1a(PilRest, OptPilRest).
popt1a1(unicon(X), PilRest, [bldcon(X)|OptPilRest]) :-
		popt1a(PilRest, OptPilRest).
popt1a1(uninumcon(X), PilRest, [bldnumcon(X)|OptPilRest]) :-
		popt1a(PilRest, OptPilRest).
popt1a1(unifloatcon(X), PilRest, [bldfloatcon(X)|OptPilRest]) :-
		popt1a(PilRest, OptPilRest).
popt1a1(gettval(R,R), PRest,OptPRest) :- popt1a(PRest, OptPRest).
popt1a1(movreg(R,R), PRest,OptPRest) :- popt1a(PRest, OptPRest).
popt1a1(jump(L),[label(L)|PRest], [jump(Addr)|OptPRest]) :-
		popt1a(PRest,OptPRest).
popt1a1(jump(Addr),[jump(_N)|PRest],  [jump(Addr)|OptPRest]) :-
		popt1a(PRest,OptPRest).
popt1a1(jumpz(_N,L),[label(L)|PRest],  [label(L)|OptPRest]) :-
		popt1a(PRest,OptPRest).
popt1a1(jumpnz(_N,L),[label(L)|PRest],  [label(L)|OptPRest]) :-
		popt1a(PRest,OptPRest).
popt1a1(jumplt(_N,L),[label(L)|PRest],  [label(L)|OptPRest]) :-
		popt1a(PRest, OptPRest).
popt1a1(jumple(_N,L),[label(L)|PRest],  [label(L)|OptPRest]) :-
		popt1a(PRest, OptPRest).
popt1a1(jumpgt(_N,L),[label(L)|PRest],  [label(L)|OptPRest]) :-
		popt1a(PRest,OptPRest).
popt1a1(jumpge(_N,L),[label(L)|PRest],  [label(L)|OptPRest]) :-
		popt1a(PRest,OptPRest).



/*  "popt2" optimizes list instructions: (put|get)str '.' are replaced by
     (put|get)list, and (get|put|uni|bld)con '[]' are replaced by
     (get|put|uni|bld)nil, respectively.				*/

popt2([], []).
popt2([Inst|PilRest], Pil1) :- popt21(Inst, PilRest, Pil1).
popt2([Inst|PilRest], Pil1) :- not(popt21(Inst, PilRest, Pil1)),
				Pil1 = [Inst|Pil1Rest],
				popt2(PilRest,Pil1Rest).

popt21(getstr(('.',2), R), PilRest, [getlist(R)|OptPilRest]) :-
		popt2(PilRest, OptPilRest).
popt21(putstr(('.',2), R), PilRest, [putlist(R)|OptPilRest]) :-
		popt2(PilRest, OptPilRest).

popt21(getcon('[]',R), PilRest, [getnil(R)|OptPilRest]) :-
		popt2(PilRest, OptPilRest).
popt21(putcon('[]',R), PilRest, [putnil(R)|OptPilRest]) :-
		popt2(PilRest, OptPilRest).

popt21(unicon('[]'), PilRest, [uninil|OptPilRest]) :-
		popt2(PilRest, OptPilRest).
popt21(bldcon('[]'), PilRest, [bldnil|OptPilRest]) :-
		popt2(PilRest, OptPilRest).


popt3([],[]).
popt3([Inst|Rest], Pil) :- popt31(Inst, Rest, Pil).
popt3([Inst|Rest],Pil) :- not(popt31(Inst, Rest, Pil)), Pil = [Inst|Pil1],
			popt3(Pil,Pil1).

popt31(getlist(R0),[unitvar(R1),unitvar(R2)|Rest],
      [getlist_tvar_tvar(R0,R1,R2)|OptRest]) :-
		popt3(Rest,OptRest).
popt31(getcomma(R0),[unitvar(R1),unitvar(R2)|Rest],
      [getcomma_tvar_tvar(R0,R1,R2)|OptRest]) :-
		popt3(Rest,OptRest).

/*  "popt4" eliminates some redundant "execute"s, mainly those arising from
    the generation of new predicates for handling cuts and indexing.   */

popt4([],_,[]).
popt4([label((P,N,K))|Rest],Seen,[label((P,N,K))|ORest]) :-
	!,
	((N >= 0, member1((P,N),Seen)) ;
	 (N < 0)
	),
	popt4(Rest,Seen,ORest).
popt4([execute((P,N)),label((P,N,K))|Rest],Seen,OList) :-
	!,
	((N >= 0,
	 popt_chkmember((P,N),Seen,SFlag),
	 ((SFlag =:= 1,		/* already seen, "execute" can't be dropped */
	   OList = [execute((P,N)),label((P,N,K))|ORest]
	  ) ;
	  (SFlag =\= 1,		/* not seen, "execute" can be dropped */
	   OList = [label((P,N,K))|ORest]
	  ))
	 ) ;
	 (N < 0, OList = [execute((P,N)),label((P,N,K))|ORest])
	),
	popt4(Rest,Seen,ORest).
popt4([Inst|Rest],Seen,[Inst|ORest]) :-
	popt4(Rest,Seen,ORest).

popt_chkmember(P,L,Flag) :-
	(var(L), L = [P|_N], Flag = 0) ;
	(nonvar(L), L = [P1|L1],
	 (P = P1 -> Flag = 1 ; popt_chkmember(P,L1,Flag))
	).

/*  these instrs use the contents of a reg */

peep_use(getcon(_,R),R).
peep_use(getnumcon(_,R),R).
peep_use(getfloatcon(_,R),R).
peep_use(getpval(_,R),R).
peep_use(gettval(_,R),R).
peep_use(gettval(R,_),R).
peep_use(gettbreg(R),R).
peep_use(getpbreg(R),R).
peep_use(getstr(_,R),R).
peep_use(getstrv(_,R),R).
peep_use(getlist(R),R).
peep_use(getlist_tvar_tvar(R,_,_),R).
peep_use(getcomma(R),R).
peep_use(getcomma_tvar_tvar(R,_,_),R).
peep_use(unitval(R),R).
peep_use(unipval(R),R).
peep_use(bldtval(R),R).
peep_use(bldpval(R),R).
peep_use(and(R,_),R).
peep_use(and(_,R),R).
peep_use(negate(R),R).
peep_use(or(R,_),R).
peep_use(or(_,R),R).
peep_use(logshiftl(R,_),R).
peep_use(logshiftl(_,R),R).
peep_use(logshiftr(R,_),R).
peep_use(logshiftr(_,R),R).
peep_use(addreg(R,_),R).
peep_use(addreg(_,R),R).
peep_use(subreg(R,_),R).
peep_use(subreg(_,R),R).
peep_use(mulreg(R,_),R).
peep_use(mulreg(_,R),R).
peep_use(divreg(R,_),R).
peep_use(divreg(_,R),R).
peep_use(movreg(R,_),R).
peep_use(switchonterm(R,_,_),R).
peep_use(switchoncon(R,_,_),R).
peep_use(switchonstr(R,_,_),R).
peep_use(switchonbound(R,_,_),R).
peep_use(jump(_),_).		/* too lazy to chase jumps! */
peep_use(jumpeq(_,_),_).
peep_use(jumpne(_,_),_).
peep_use(jumplt(_,_),_).
peep_use(jumple(_,_),_).
peep_use(jumpgt(_,_),_).
peep_use(jumpge(_,_),_).

peep_chk([],_).
peep_chk([Inst|Rest],R) :-
	not(peep_use(Inst,R)), 
	term_or_chk([Inst|Rest],R).

term_or_chk([Inst|_N],R):-
	peep_term(Inst,R), !.
term_or_chk([_N|Rest],R):-
	peep_chk(Rest,R).



peep_term(call(_,_),_).
peep_term(calld(_,_),_).
peep_term(execute(_),_).
peep_term(putcon(R),R).	/* these instrs change contents of reg */
peep_term(putnumcon(R),R).
peep_term(putfloatcon(R),R).
peep_term(puttvar(R,_),R).
peep_term(putpvar(_,R),R).
peep_term(putdval(_,R),R).
peep_term(putuval(_,R),R).
peep_term(puttbreg(R),R).
peep_term(putpval(_,R),R).
peep_term(putstr(_,R),R).
peep_term(putstrv(_,R),R).
peep_term(putlist(R),R).
peep_term(putnil(R),R).
peep_term(movreg(_,R),R).
peep_term(bldtvar(R),R).

member1( X, [X|Xs]).
member1( X, [_N|Xs]):- member1(X,Xs).
/*
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%         This piece has been included for the simulation process    %

no_trace_main:- 
	get_query(Pil),
	time(_),
	peephole_opt(Pil,OptPil),
	time(T),
	write('Executed in '), write(T), write(' mS.'), nl,
	write('Result '), write(OptPil), nl.

trace_main:-
	get_query(Pil),
	start_event_trace, 
	peephole_opt(Pil,OptPil),
	stop_event_trace,
	save_trace('peephole_mel'),
	write('Result '), write(OptPil),nl.

save_trace(X) :-
	write('Saving trace in file '), write(X), write('... '), 
	open(X,write,Y),
	save_event_trace(Y),
	close(X),
	write('done.'), nl.

time(T) :- statistics(runtime,[_,T]).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
*/
not(P) :- \+P.
