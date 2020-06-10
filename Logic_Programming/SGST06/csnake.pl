%query: test_snake(i,i,i).

/* variant of example from
 * Prolog programming contest in Leuven, 1997
 * using cons and nil instead of [_|_] and []
 */

test_snake(Pattern,C,R):-
    s2l(C,Cols), s2l(R,Rows), snake(Pattern,Cols,Rows).

s2l(0,nil).
s2l(s(X), cons(_,Y)):- s2l(X,Y).

snake(Pattern,Cols,Rows):-
        infinite_snake(Pattern,InfSnake,InfSnake),
        produce_snake(Rows,Cols,InfSnake,Snake),
        coil_it(Snake,odd).

infinite_snake(nil,S,S).
infinite_snake(cons(A,R),cons(A,T),S):-
        infinite_snake(R,T,S).

produce_snake(nil,_,_,nil).
produce_snake(cons(_,Rows),Cols,InfSnake,cons(Part,Tail)):-
        part_of_snake(Cols,InfSnake,NewInfSnake,Part),
        produce_snake(Rows,Cols,NewInfSnake,Tail).

part_of_snake(nil,RestSnake,RestSnake,nil).
part_of_snake(cons(_,R),cons(Ring,Rings),RestSnake,cons(Ring,RestRings)) :-
        part_of_snake(R,Rings,RestSnake,RestRings).

coil_it(nil,_).
coil_it(cons(Line,Lines),odd) :-
%        write_elements(Line), nl, 
        coil_it(Lines,even).
coil_it(cons(Line,Lines),even) :-
        reverse2(Line,Line1),
%        write_elements(Line1), nl, 
        coil_it(Lines,odd).
                
%write_elements(nil).
%write_elements(cons(X,Xs)) :- write(X), write_elements(Xs).

reverse2(List, Reversed) :-
        reverse(List, nil, Reversed).
reverse(nil, Reversed, Reversed).
reverse(cons(Head,Tail), SoFar, Reversed) :-
        reverse(Tail, cons(Head,SoFar), Reversed).
