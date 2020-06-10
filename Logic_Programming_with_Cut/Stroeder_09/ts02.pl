% Author: Thomas Stroeder
% terminating

%query: a.
a :- b.
b :- c.
c :- d.
d :- e, !.
e.
e :- a.