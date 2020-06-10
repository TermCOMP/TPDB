%query: inorder(i,o).

inorder(nil,[]).
inorder(tree(L,V,R),I) :-
	inorder(L,LI),
	inorder(R,RI),
	append(LI,[V|RI],I).

append([],X,X).
append([X|Xs],Ys,[X|Zs]) :-
	append(Xs,Ys,Zs).



/*TWDESC

inorder traversal for binary trees

*/

/*TWNORMS

  norm(treesize_nodes,
	  "Tree sizes (nodes)",
  	   [
	     "Counts the term's nodes:",
	     "|f(t<sub>1</sub>,...,t<sub>n</sub>)|",
	     "=",
	     "1+|t<sub>1</sub>|+...+|t<sub>n</sub>|"
           ],
	   [
	     defsize(nil,1),defsize(tree(L,_,R),1+size(L)+size(R))
	   ]).

*/


/*TWDEMO

selected_norms([treesize_nodes]).
*/
