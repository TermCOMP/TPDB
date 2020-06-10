%Source: http://colin.barker.pagesperso-orange.fr/sands.htm
%query:triangle(g,f).
/* triangle(N,T) is true if T is the Nth triangular number.               */
triangle(0,0).
triangle(N,T):-N>0, N1 is N - 1, triangle(N1,T1), T is T1+N.

