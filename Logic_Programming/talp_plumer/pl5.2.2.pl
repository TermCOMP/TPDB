%query: turing(i,i,i,o).

% mode: member[o,i]
member(H,[H|L]).
member(X,[H|L]) :- member(X,L).

% mode: turing[i,i,i,o]
turing(t(X,Y,Z),S,P,t(X,Y,Z)) :- member(p(S,Y,halt,W,D),P).

turing(t(X,Y,[R|L]),S,P,T)    :- member(p(S,Y,S1,W,r),P),
                                 turing(t([W|X],R,L),S1,P,T).

turing(t(X,Y,[]),S,P,T)       :- member(p(S,Y,S1,W,r),P),
                                 turing(t([W|X],space,[]),S1,P,T).

turing(t([X|L],Y,R),S,P,T)    :- member(p(S,Y,S1,W,l),P),
                                 turing(t(L,X,[W|R]),S1,P,T).

turing(t([],Y,R),S,P,T)       :- member(p(S,Y,S1,W,l),P),
                                 turing(t([],space,[W|R]),S1,P,T).
