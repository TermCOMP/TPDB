%query: qs(i,o).
qs([X|Xs],Ys) :- part(X,Xs,Littles,Bigs),
                 qs(Littles,Ls),
                 qs(Bigs,Bs),
                 app(Ls,[X|Bs],Ys).
qs([],[]).

part(X,[Y|Xs],[Y|Ls],Bs) :- X>Y, part(X,Xs,Ls,Bs).
part(X,[Y|Xs],Ls,[Y|Bs]) :- X=<Y, part(X,Xs,Ls,Bs).
part(X,[],[],[]).

app([X|Xs],Ys,[X|Zs]) :- app(Xs,Ys,Zs).
app([],Ys,Ys).

/*TWDESC

The quick sort algorithm

*/

/*TWDEMO

selected_norms([listlength]).
*/
/*.

*/

