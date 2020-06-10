%Source: Sterling, Shapiro - The Art of Prolog. Program 8.1 - Program 8.12.
%query:area(g,f).
area([_], 0).
area([(X1,Y1),(X2,Y2)|XYs], Area) :- area([(X2,Y2)|XYs],Area1), Area is (X1*Y2-Y1*X2)/2 + Area1.
