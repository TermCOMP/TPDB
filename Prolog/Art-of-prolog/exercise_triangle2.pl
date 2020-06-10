%Source: http://colin.barker.pagesperso-orange.fr/sands.htm
%query:triangle(g,f).
/* triangle(N,T) is true if T is the Nth triangular number.                */
triangle(N,T):-triangle(N,0,T).

triangle(0,A,A).
triangle(N,A,T):-N>0, N1 is N - 1, B is A+N, triangle(N1,B,T).
