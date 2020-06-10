%query: perm(i,o).

% mode: ap1[o,o,i]
ap1(nil, X, X).
ap1(cons(H, X), Y, cons(H, Z)) :- ap1(X, Y, Z).

% mode: ap2[i,i,o]
ap2(nil, X, X).
ap2(cons(H, X), Y, cons(H, Z)) :- ap2(X, Y, Z).

% mode: perm[i,o]
perm(nil, nil).
perm(Xs, cons(X, Ys)) :- ap1(X1s, cons(X, X2s), Xs),
                         ap2(X1s, X2s, Zs),
		         perm(Zs, Ys).


% example 3 in
% Transformational methodology for proving termination of logic programs
% Rao, M.R.K.K.; Kapur, D.; Shyamasundar, R.K. 
% The Journal Of Logic Programming, Vol: 34, Issue: 1, January 1998 

