%query: normal(i,o).

% mode: normal[i,o]
normal(F,N) :- rewrite(F,F1), normal(F1,N).
normal(F,F).

% mode: rewrite[i,o]
rewrite(op(op(A,B),C),op(A,op(B,C))).
rewrite(op(A,op(B,C)),op(A,L)) :- rewrite(op(B,C),L).
