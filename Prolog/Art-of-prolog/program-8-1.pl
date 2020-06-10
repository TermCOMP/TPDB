%Source: Sterling, Shapiro - The Art of Prolog. Program 8.1
%query: greatest_common_divisor(g,g,f).
greatest_common_divisor(I,0,I).
greatest_common_divisor(I,J,Gcd) :- J > 0, R is I mod J, greatest_common_divisor(J, R, Gcd).
