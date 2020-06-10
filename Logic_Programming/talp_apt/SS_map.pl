%query: color_map(o,i).

/*
color_map(Map,Colors) :-
	Map is colored with Colors, so that no two neighbors have the same
	color. The map is represented as an adjacency-list of regions
	region(Name,Color,Neighbors), where Name is the name of the
	region, Color is its color, and Neighbors are the colors of the 
	neighbors. 
*/
        % moding: color_map[i,i]
        color_map([Region|Regions],Colors) :-
		color_region(Region,Colors),
		color_map(Regions,Colors).
	color_map([],Colors).
/*
   color_region(Region,Colors) :-
	Region and its neighbors are colored using Colors so that the
	region's color is different from the color of any of its neighbors.
*/
	% moding: color_region[i,i]
	color_region(region(Name,Color,Neighbors),Colors) :-
		select(Color,Colors,Colors1),
		members(Neighbors,Colors1).

	% moding: select[i,i,o]
	select(X,[X|Xs],Xs).
	select(X,[Y|Ys],[Y|Zs]) :- select(X,Ys,Zs).

     % moding: members[i,i]
     members([X|Xs],Ys) :- member(X,Ys), members(Xs,Ys).
     members([],Ys).

%	Program 14.4: Map coloring

% mode: member[i,i]
member(X,[X|_]).
member(X,[_|T]) :- member(X,T).

	/* Test data */

        % moding: test_color[i,o]
        test_color(Name,Map) :-
		map(Name,Map),
		colors(Name,Colors),
		color_map(Map,Colors).


        % moding: map[i,o]
        map(test,[region(a,A,[B,C,D]),     region(b,B,[A,C,E]), 
		      region(c,C,[A,B,D,E,F]), region(d,D,[A,C,F]),
			  region(e,E,[B,C,F]),     region(f,F,[C,D,E])]).

        map(west_europe,
	    [region(portugal,P,[E]),  region(spain,E,[F,P]),
	     region(france,F,[E,I,S,B,WG,L]),  region(belgium,B,[F,H,L,WG]),
	     region(holland,H,[B,WG]), region(west_germany,WG,[F,A,S,H,B,L]),
	     region(luxembourg,L,[F,B,WG]), region(italy,I,[F,A,S]),
	     region(switzerland,S,[F,I,A,WG]), region(austria,A,[I,S,WG])]).

        % moding: colors[i,o]
        colors(X,[red,yellow,blue,white]).

%	Program 14.5: Test data for map coloring










