% Example for shape analysis
% Authors: Peter Schneider-Kamp and Thomas Stroeder
% terminating

%query: p(i,i).
p(X,Y) :- q(X,Y), r(X).
q(a,0).
q(X,s(Y)) :- q(X,Y).
r(b) :- r(b).