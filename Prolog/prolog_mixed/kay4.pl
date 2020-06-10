%query: kay4(i).
/* from the iclp2002 programming contest 

You are to draw on the screen the famous K4 graph. The input to the
predicate kay4/1 is a number.

    | ?- kay4(7).
    a-----b
    |\   /|
    | \ / |
    |  X  |
    | / \ |
    |/   \|
    c-----d

    | ?- kay4(6).
    a----b
    |\  /|
    | \/ |
    | /\ |
    |/  \|
    c----d

Got it ? The input can be anything from 3 up to 53. 

*/


kay4(I) :- length([_,_|L],I),
    top(L),
    mid([],L),
    bot(L).

top(L) :- write(a), mwrite('-',L), write(b), nl.
bot(L) :- write(c), mwrite('-',L), write(d), nl.

mid(X,[]). 

mid(X,[_]) :-
        write('|'), mwrite(' ', X), write('X'),
        mwrite(' ', X), write('|'), nl.

mid(X,[_,_|Y]) :-
        write('|'), mwrite(' ', X), write('\\'),
        mwrite(' ', Y),
        write('/'), mwrite(' ', X), write('|'),
        nl,
        mid([_|X],Y),
        write('|'), mwrite(' ', X), write('/'),
        mwrite(' ', Y),
        write('\\'), mwrite(' ', X), write('|'),
        nl.

mwrite(Char,L) :- findall(_,(member(_,L),write(Char)),_).

member(X,[X|_]).
member(X,[_|Xs]) :- member(X,Xs).
