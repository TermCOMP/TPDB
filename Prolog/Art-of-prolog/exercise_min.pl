%Source: http://colin.barker.pagesperso-orange.fr/sands.htm
%query:min(g,f).
/* min(Is,M) is true if M is the smallest element in the list Is.          */
min([I|Is],M):-min(Is,I,M).

min([],Min,Min).
min([I|Is],Temp,Min):-min_1(I,Temp,Temp1), min(Is,Temp1,Min).

min_1(I,J,I):-J >= I, !.
min_1(I,J,J):-J < I.
