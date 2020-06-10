%query: test_snake(i,i,i)

/* from Prolog programming contest in Leuven, 1997 */

test_snake(Pattern,C,R):-
    s2l(C,Cols), s2l(R,Rows), snake(Pattern,Cols,Rows).

s2l(0,[]).
s2l(s(X), [_|Y]):- s2l(X,Y).

snake(Pattern,Cols,Rows):-
        infinite_snake(Pattern,InfSnake,InfSnake),
        produce_snake(Rows,Cols,InfSnake,Snake),
        coil_it(Snake,odd).

infinite_snake([],S,S).
infinite_snake([A|R],[A|T],S):-
        infinite_snake(R,T,S).

produce_snake([],_,_,[]).
produce_snake([_|Rows],Cols,InfSnake,[Part|Tail]):-
        part_of_snake(Cols,InfSnake,NewInfSnake,Part),
        produce_snake(Rows,Cols,NewInfSnake,Tail).

part_of_snake([],RestSnake,RestSnake,[]).
part_of_snake([_|R],[Ring|Rings],RestSnake,[Ring|RestRings]) :-
        part_of_snake(R,Rings,RestSnake,RestRings).

coil_it([],_).
coil_it([Line|Lines],odd) :-
%        write_elements(Line), nl, 
        coil_it(Lines,even).
coil_it([Line|Lines],even) :-
        reverse2(Line,Line1),
%        write_elements(Line1), nl, 
        coil_it(Lines,odd).
                
%write_elements([]).
%write_elements([X|Xs]) :- write(X), write_elements(Xs).

reverse2(List, Reversed) :-
        reverse(List, [], Reversed).
reverse([], Reversed, Reversed).
reverse([Head|Tail], SoFar, Reversed) :-
        reverse(Tail, [Head|SoFar], Reversed).