%query: hbal_tree(i,o).

/* motivated by P59 of Hett */

hbal_tree(zero,nil).
hbal_tree(s(zero),t(x,nil,nil)).
hbal_tree(s(s(X)),t(x,L,R)) :- 	distr(s(X),X,DL,DR),
	hbal_tree(DL,L), hbal_tree(DR,R).

distr(D1,_,D1,D1).
distr(D1,D2,D1,D2).
distr(D1,D2,D2,D1).