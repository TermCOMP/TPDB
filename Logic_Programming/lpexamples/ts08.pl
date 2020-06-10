% Example for growing terms
% Author: Thomas Stroeder

%query: q(i).
q(X) :- p(X,0).
p(0,_).
p(s(X),Y) :- p(X,s(Y)).
