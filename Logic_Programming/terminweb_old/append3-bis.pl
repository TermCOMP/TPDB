%query: app3_b(i,i,i,o).

app3_a(Xs, Ys, Zs, Us) :- app(Xs, Ys, Vs), app(Vs, Zs, Us).
app3_b(Xs, Ys, Zs, Us) :- app(Ys, Zs, Vs), app(Xs, Vs, Us).

app([], Ys, Ys).
app([X | Xs], Ys, [X | Zs]) :- app(Xs, Ys, Zs).


/*TWDESC

Two version for append/4 which appends three lists

*/

/*TWDEMO

selected_norms([listlength]).
*/
