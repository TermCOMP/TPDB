%query: numvars(o,i,o).

/* mimicks the prolog builtin numbervars

   numbvars(?Term,+N,?M) :- Unifies each of the variables in Term with
                            a term var(I) where I ranges from N to M-1. 
                            N must be instantiated to an integer. 
*/

numvars(Term,N,N1) :-
    var(Term), !, 
    Term=var/N,N1 is N+1.

numvars(Term,N,M) :-
    Term =..[_Functor|Args],
    numberargs(Args,N,M).

numberargs([],N,N) :-!.
numberargs([Arg|Args], N, M) :-
    numvars(Arg,N,N1),
    numberargs(Args,N1,M).



/*
    | ?- numvars(f(X,Y,g(X)),0,N).

    N = 2,
    X = var/0,
    Y = var/1 ? ;
*/



/*  
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    A version more ameanable to termination analysis

    (assumes that the symbol var/1 does not occur in the input
    term)

    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
*/

numvars2(var(N),N,N1) :- N1 is N+1.

numvars2(Term,N,M) :-
    nonvar(Term),
    Term =.. [_Functor|Args],
    numberargs2(Args,N,M).

numberargs2([],N,N).
numberargs2([Arg|Args], N, M) :-
    numvars2(Arg,N,N1),
    numberargs2(Args,N1,M).


/*
    | ?- numvars2(f(X,Y,g(X)),0,N).

    N = 2,
    X = var(0),
    Y = var(1) ? 

*/
