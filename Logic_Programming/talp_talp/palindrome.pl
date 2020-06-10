%query: palindrome(i).

% From: Apt, Krzysztof R. and Etalle, Sandro
%       On the Unifikation Free Prolog Programs

% mode: palindrome[i]
palindrome(Xs) :- reverse(Xs, Xs).

% mode: reverse[i,i]
reverse(X1s, X2s) :- reverse3(X1s, [], X2s).

% mode: reverse3[i,i,i]
reverse3([X|X1s], X2s, Ys) :- reverse3(X1s, [X|X2s], Ys).
reverse3([], Xs, Xs).

