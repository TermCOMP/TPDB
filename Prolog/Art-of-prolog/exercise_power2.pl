%Source: http://colin.barker.pagesperso-orange.fr/sands.htm
%query:power(g,g,f).
/* power(X,N,V) is true if V is X to the Nth power.                        */
power(X,N,V):-power(X,N,1,V).

power(0,N,A,0):-N>0.
power(X,N,A,V):-X>0, N>0, N1 is N - 1, B is A*X, power(X,N1,B,V).
power(X,0,A,A):-X>0.
