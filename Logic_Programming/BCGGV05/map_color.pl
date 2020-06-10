%query: map(o).
%TWTYPES :- type color_map(listr,listc).

color_map([], _).
color_map([Region | Regions], Colors) :-
	color_region(Region, Colors),
	color_map(Regions, Colors).


%TWTYPES :- type color_region(region,listc).

color_region(region(_, Color, Neighbors), Colors) :-
	select(Color, Colors, Colors1),
	subset(Neighbors, Colors1).

%TWTYPES :- type select(color,listc,listc).

select(X, [X | Xs], Xs).
select(X, [Y | Xs], [Y | Zs]) :- select(X, Xs, Zs).

%TWTYPES :- type subset(listc,listc).

subset([], _).
subset([X | Xs], Ys) :- member(X, Ys), subset(Xs, Ys).

%TWTYPES :- type member(color,listc).

member(X, [X | _]).
member(X, [_ | Xs]) :- member(X, Xs).

%TWTYPES :- type map(listr).

map([region(belize, Belize, [Guatemala]),
     region(guatemala, Guatemala, [Belize, El_Salvador, Honduras]),
     region(el_salvador, El_Salvador, [Guatemala, Honduras]),
     region(honduras, Honduras, [Guatemala, El_Salvador, Nicaragua]),
     region(nicaragua, Nicaragua, [Honduras, Costa_rica]),
     region(costa_rica, Costa_rica, [Nicaragua, Panama]),
     region(panama, Panama, [Costa_rica])]).


query :-
        map(X),
        color_map(X,[red,blue,green]).

/*TWDESC

color_map(Map, Colors) :- Map is correctly colored using Colors.

*/


/*TWTYPES

listc([]).
listc([X|Xs]) :-
	color(X),
	listc(Xs).

color(red).
color(blue).
color(green).

listr([]).
listr([X|Xs]) :-
	region(X),
	listr(Xs).

region(region(N,C,Cs)) :-
        color(C),
        listc(Cs).
*/


/*TWDEMO

selected_norms([color,listc,listr,region]).

query(map(f,f,f,f)).
query(query).
query(select(f,f,f,f,b,f,f,f,f,f,f,f)).
query(select(f,f,f,f,f,b,f,f,f,f,f,f)).
query(select(f,f,f,f,f,f,f,f,b,f,f,f)).
query(select(f,f,f,f,f,f,f,f,f,b,f,f)).
query(member(f,f,f,f,b,f,f,f)).
query(member(f,f,f,f,f,b,f,f)).
query(subset(b,f,f,f,b,f,f,f)).
query(subset(b,f,f,f,f,b,f,f)).
query(subset(f,b,f,f,b,f,f,f)).
query(subset(f,b,f,f,f,b,f,f)).
query(color_region(b,f,f,f,b,f,f,f)).
query(color_region(b,f,f,f,f,b,f,f)).
query(color_region(f,b,f,f,b,f,f,f)).
query(color_region(f,b,f,f,f,b,f,f)).
query(color_map(b,f,f,f,b,f,f,f)).
query(color_map(b,f,f,f,f,b,f,f)).
query(color_map(f,b,f,f,b,f,f,f)).
query(color_map(f,b,f,f,f,b,f,f)).

*/
