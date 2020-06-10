%Source: http://colin.barker.pagesperso-orange.fr/sands.htm
%query:area(g,f).
/* area(Points,Area) is true if Area is the area of the polygon enclosed   */
/*   by the list of points Points, where the coordinates of each point are */
/*   represented by a pair p(X,Y) of integers.                             */
area(Ps,Area):- area(Ps,0,Area).

area([Pair],Area,Area).
area([p(X1,Y1),p(X2,Y2)|XYs],Temp,Area):-
  Temp1 is Temp + (X1*Y2 - Y1*X2)/2,
  area([p(X2,Y2)|XYs],Temp1,Area).

