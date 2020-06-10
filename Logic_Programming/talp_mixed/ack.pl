%query: ack(i,i,o).

% mode: int[i]
%int(0).
%int(s(X)) :- int(X).

% mode: ack[i,i,o]
ack(0,N,s(N)).                  % :- int(N).
ack(s(M),0,A) :- ack(M,s(0),A).
ack(s(M),s(N),A) :- ack(s(M),N,A1),ack(M,A1,A).

