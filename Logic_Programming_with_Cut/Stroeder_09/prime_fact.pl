% Naive prime factorization
% Author: Thomas Stroeder
% terminating

%query: prime_fact(i,o).
prime_fact(0,L) :- !, eq(L,[]).
prime_fact(s(0),L) :- !, eq(L,[]).
prime_fact(X,[F|Fs]) :- prime_number(P), div(X,P,Q,0), !, eq(F,P), prime_fact(Q,Fs).

prime_number(X) :- prime_number(s(s(0)),[],X).
prime_number(C,Ps,C) :- no_divisor_in_list(C,Ps).
prime_number(C,Ps,P) :- no_divisor_in_list(C,Ps), !, prime_number(s(C),[C|Ps],P).
prime_number(C,Ps,P) :- prime_number(s(C),Ps,P).

no_divisor_in_list(_,[]).
no_divisor_in_list(V,[D|Ds]) :- not_div(V,D), no_divisor_in_list(V,Ds).

not_div(V,D) :- div(V,D,_,0), !, failure(a).
not_div(_,_).

failure(b).

div(_,0,_,_) :- !, failure(a).
div(0,_,Z,R) :- !, eq(Z,0), eq(R,0).
div(X,Y,s(Z),R) :- minus(X,Y,U), !, div(U,Y,Z,R).
div(X,_,_,X).

minus(X,0,X).
minus(s(X),s(Y),Z) :- minus(X,Y,Z).

eq(X,X).