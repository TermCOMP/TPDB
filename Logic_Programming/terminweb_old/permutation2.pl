%query: perm(i,o).
perm([],[]).
perm([X|Y],[U|V]) :- delete(U,[X|Y],W),perm(W,V).

delete(X,[X|Y],Y).
delete(U,[X|Y],[X|Z]) :- delete(U,Y,Z).



/*TWDESC

Permutation of a list. uses delete/3.

*/

/*TWDEMO

selected_norms([listlength]).
*/
/*.

*/
