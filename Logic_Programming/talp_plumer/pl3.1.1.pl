%query: a.

% mode: a[]
a :- b.
a :- e.
% mode: b[]
b :- c.
% mode: c[]
c :- d.
% mode: d[]
d :- b.
% mode: e[]
e :- f.
% mode: f[]
f :- g.
% mode: g[]
g :- e.
