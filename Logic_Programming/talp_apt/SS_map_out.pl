%query: color_map(o,i).

% color_map(Map,Colors)
%
%    Map is colored with Colors, so that no two neighbors have the same
%    color. The map is represented as an adjacency-list of regions
%    region(Color,Neighbors), where Color is the color of the region,
%    and Neighbors are the colors of the neighbors. 
%
% mode: color_map[o,i]
color_map([Region|Regions],Colors) :-
        color_region(Region,Colors),
        color_map(Regions,Colors).
color_map([],Colors).

%%
% color_region(Region,Colors)
%
%    Region and its neighbors are colored using Colors so that the
%    region's color is different from the color of any of its neighbors.
%
% mode: color_region[o,i]
	color_region(region(Color,Neighbors),Colors) :-
		select(Color,Colors,Colors1),
		members(Neighbors,Colors1).

% mode: select[o,i,o]
select(X,[X|Xs],Xs).
select(X,[Y|Ys],[Y|Zs]) :- select(X,Ys,Zs).

% mode: members[o,i]
members([X|Xs],Ys) :- member(X,Ys), members(Xs,Ys).
members([],Ys).

% mode: member[o,i]
member(X,[X|_]).
member(X,[_|T]) :- member(X,T).

% mode: test_color[i,o]
test_color(Name,Pairs) :-
        colors(Name,Colors),
        color_map(Map,Colors),
        map(Name,Symbols,Map),
        symbols(Symbols,Map,Pairs).

% mode: symbols[i,i,o]
symbols([], [], []).
symbols([S|Ss], [region(C,N)|Rs], [pair(S,C)|Ps]) :- symbols(Ss,Rs,Ps).

% mode: map[i,o,i]
map(test,[a,b,c,d,e,f],
         [region(A,[B,C,D]),     region(B,[A,C,E]), 
          region(C,[A,B,D,E,F]), region(D,[A,C,F]),
          region(E,[B,C,F]),     region(F,[C,D,E])]).

map(west_europe, [portugal,spain,france,belgium,holland,west_germany,
                  luxembourg,italy,switzerland,austria],
    [region(P,[E]),  region(E,[F,P]),
     region(F,[E,I,S,B,WG,L]),  region(B,[F,H,L,WG]),
     region(H,[B,WG]), region(WG,[F,A,S,H,B,L]),
     region(L,[F,B,WG]), region(I,[F,A,S]),
     region(S,[F,I,A,WG]), region(A,[I,S,WG])]).

% mode: colors[i,o]
colors(X,[red,yellow,blue,white]).






