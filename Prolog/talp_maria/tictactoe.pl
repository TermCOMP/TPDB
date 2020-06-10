%query: play(i,i,o).

%% From: "(Arvind Kumar Bansal)" <arvind@mcs.kent.edu>
%% 
%% Here is a program of tic tac toe which one one my student did for
%% a course assignment in Logic Programming. It uses Alpha Beta 
%% pruning for 3 X 3 board.
%% 
%% -Arvind
%% Mathematics and Computer Science
%% Kent State University
%% Kent, OH 44242

:- entry(play(Game),[ground(Game)]).
:- trust(player(Player),[],[ground(Player)]).
:- trust(abolish0(Player),[],[ground(Player)]).

play(Game) :-
	initialize(Game, Position, Player),
	display_game(Position),
	play(Position, Player, Result).

play(Position, Player, Result) :-
	game_over(Position, Player, Result), !,
	write(Result),
	abolish0(player).
play(Position, Player, Result) :-
	choose(Position, Player, Move),
	move(Move, Player, Position, Position1),
	display_game(Position1),
	next_player(Player, Player1), !,
	play(Position1, Player1, Result).

choose(Position, computer, Move) :-
	write('Computer is thinking...'), nl,
	alpha_beta(computer, Position, -1, 1, Move, Value).
choose(Position, Player, Move) :-
	write(Player),
	write(', enter move (followed by a period and return) --> '),
	read(Move1),
	legal(Position, Player, Move1, Move).

alpha_beta(Player, Position, Alpha, Beta, Move, Value) :-
	Player == computer,
	game_win_o(Position),
	Value is 1.
alpha_beta(Player, Position, Alpha, Beta, Move, Value) :-
	player(Player),
	game_win_x(Position),
	Value is 1.
alpha_beta(Player, Position, Alpha, Beta, Move, Value) :-
	game_tie(Position),
	Value is 0.
alpha_beta(Player, Position, Alpha, Beta, Move, Value) :-
	Player == computer,
	game_win_x(Position),
	Value is -1.
alpha_beta(Player, Position, Alpha, Beta, Move, Value) :-
	player(Player),
	game_win_o(Position),
	Value is -1.
alpha_beta(Player, Position, Alpha, Beta, Move, Value) :-
	setof(Move1, move(Position, Move1), Moves),
	Alpha1 is -Beta,
	Beta1 is -Alpha,
        evaluate(Player, Moves, Position, Alpha1, Beta1, nil, (Move, Value)).

evaluate(Player, [Move | Moves], Position, Alpha, Beta, Move1, Best):-
	move(Move, Player, Position, Position1),
	next_player(Player, Player1),
	alpha_beta(Player1, Position1, Alpha, Beta, MoveX, Value),
	Value1 is -Value,
	cutoff(Player, Move, Value1, Alpha, Beta, Moves, Position, Move1, Best),
	!.
evaluate(Player, [], Position, Alpha, Beta, Move, (Move, Alpha)).

cutoff(Player, Move, Value, Alpha, Beta, Moves, Position, Move1, (Move,Value)):-
	Value >= Beta, !.
cutoff(Player, Move, Value, Alpha, Beta, Moves, Position, Move1, Best) :-
	Alpha < Value,
	Value < Beta, !,
	evaluate(Player, Moves, Position, Value, Beta, Move, Best).
cutoff(Player, Move, Value, Alpha, Beta, Moves, Position, Move1, Best) :-
	Value =< Alpha, !,
	evaluate(Player, Moves, Position, Alpha, Beta, Move1, Best).

initialize(tictactoe, ((' ',' ',' '), (' ',' ',' '), (' ',' ',' ')), Player) :-
	write('Enter player`s name (followed by a period and return) --> '),
	read(Player),
	write(Player),
	write(', you will go first and use the symbol "x".'), nl,
	assert(player(Player)).

display_game(((R1C1, R1C2, R1C3), (R2C1, R2C2, R2C3), (R3C1, R3C2, R3C3))) :-
	nl,
	write(' '), write(R1C1), write(' '), write('|'),
	write(' '), write(R1C2), write(' '), write('|'),
	write(' '), write(R1C3), write(' '), tab(3),
	write('u-l = upper left,  u-c = upper center,  u-r = upper right'), nl,
	write(' --+---+-- '), nl,
	write(' '), write(R2C1), write(' '), write('|'),
	write(' '), write(R2C2), write(' '), write('|'),
	write(' '), write(R2C3), write(' '), tab(3),
	write('c-l = center left, c-c = center center, c-r = center right'), nl,
	write(' --+---+-- '), nl,
	write(' '), write(R3C1), write(' '), write('|'),
	write(' '), write(R3C2), write(' '), write('|'),
	write(' '), write(R3C3), write(' '), tab(3),
	write('l-l = lower left,  l-c = lower center,  l-r = lower right'), nl,
	nl.

next_player(Player, computer) :-
	player(Player).
next_player(computer, Player1) :-
	player(Player1).

legal(Position, Player, Move, Move) :-
	move(Position, Move).
legal(Position, Player, Move1, Move) :-
	write('Illegal move!  '), !,
	choose(Position, Player, Move).

game_over(Position, Player, (Player1, ' you win!')) :-
	game_win_x(Position),
	player(Player1).
game_over(Position, Player, 'Computer wins!') :-
	game_win_o(Position).
game_over(Position, Player, 'It is a tie!') :-
	game_tie(Position).

game_tie(((R1C1, R1C2, R1C3), (R2C1, R2C2, R2C3), (R3C1, R3C2, R3C3))) :-
	\+ game_win_x(((R1C1,R1C2,R1C3),(R2C1,R2C2,R2C3),(R3C1,R3C2,R3C3))),
	\+ game_win_o(((R1C1,R1C2,R1C3),(R2C1,R2C2,R2C3),(R3C1,R3C2,R3C3))),
	R1C1 \== ' ', R1C2 \== ' ', R1C3 \== ' ',
	R2C1 \== ' ', R2C2 \== ' ', R2C3 \== ' ',
	R3C1 \== ' ', R3C2 \== ' ', R3C3 \== ' '.

game_win_x(((x, x, x), (_, _, _), (_, _, _))).
game_win_x(((_, _, _), (x, x, x), (_, _, _))).
game_win_x(((_, _, _), (_, _, _), (x, x, x))).
game_win_x(((x, _, _), (x, _, _), (x, _, _))).
game_win_x(((_, x, _), (_, x, _), (_, x, _))).
game_win_x(((_, _, x), (_, _, x), (_, _, x))).
game_win_x(((x, _, _), (_, x, _), (_, _, x))).
game_win_x(((_, _, x), (_, x, _), (x, _, _))).

game_win_o(((o, o, o), (_, _, _), (_, _, _))).
game_win_o(((_, _, _), (o, o, o), (_, _, _))).
game_win_o(((_, _, _), (_, _, _), (o, o, o))).
game_win_o(((o, _, _), (o, _, _), (o, _, _))).
game_win_o(((_, o, _), (_, o, _), (_, o, _))).
game_win_o(((_, _, o), (_, _, o), (_, _, o))).
game_win_o(((o, _, _), (_, o, _), (_, _, o))).
game_win_o(((_, _, o), (_, o, _), (o, _, _))).

move(((' ', _, _), (_, _, _), (_, _, _)), u-l).
move(((_, ' ', _), (_, _, _), (_, _, _)), u-c).
move(((_, _, ' '), (_, _, _), (_, _, _)), u-r).
move(((_, _, _), (' ', _, _), (_, _, _)), c-l).
move(((_, _, _), (_, ' ', _), (_, _, _)), c-c).
move(((_, _, _), (_, _, ' '), (_,_, _)), c-r).
move(((_, _, _), (_, _, _), (' ', _, _)), l-l).
move(((_, _, _), (_, _, _), (_, ' ', _)), l-c).
move(((_, _, _), (_, _, _), (_, _, ' ')), l-r).

move(u-l, computer, Position, Position1) :-
	((_, R1C2, R1C3), (R2C1, R2C2, R2C3), (R3C1, R3C2, R3C3)) = Position,
	Position1 = ((o, R1C2, R1C3), (R2C1, R2C2, R2C3), (R3C1, R3C2, R3C3)).
move(u-c, computer, Position, Position1) :-
	((R1C1, _, R1C3), (R2C1, R2C2, R2C3), (R3C1, R3C2, R3C3)) = Position,
	Position1 = ((R1C1, o, R1C3), (R2C1, R2C2, R2C3), (R3C1, R3C2, R3C3)).
move(u-r, computer, Position, Position1) :-
	((R1C1, R1C2, _), (R2C1, R2C2, R2C3), (R3C1, R3C2, R3C3)) = Position,
	Position1 = ((R1C1, R1C2, o), (R2C1, R2C2, R2C3), (R3C1, R3C2, R3C3)).
move(c-l, computer, Position, Position1) :-
	((R1C1, R1C2, R1C3), (_, R2C2, R2C3), (R3C1, R3C2, R3C3)) = Position,
	Position1 = ((R1C1, R1C2, R1C3), (o, R2C2, R2C3), (R3C1, R3C2, R3C3)).
move(c-c, computer, Position, Position1) :-
	((R1C1, R1C2, R1C3), (R2C1, _, R2C3), (R3C1, R3C2, R3C3)) = Position,
	Position1 = ((R1C1, R1C2, R1C3), (R2C1, o, R2C3), (R3C1, R3C2, R3C3)).
move(c-r, computer, Position, Position1) :-
	((R1C1, R1C2, R1C3), (R2C1, R2C2, _), (R3C1, R3C2, R3C3)) = Position,
	Position1 = ((R1C1, R1C2, R1C3), (R2C1, R2C2, o), (R3C1, R3C2, R3C3)).
move(l-l, computer, Position, Position1) :-
	((R1C1, R1C2, R1C3), (R2C1, R2C2, R2C3), (_, R3C2, R3C3)) = Position,
	Position1 = ((R1C1, R1C2, R1C3), (R2C1, R2C2, R2C3), (o, R3C2, R3C3)).
move(l-c, computer, Position, Position1) :-
	((R1C1, R1C2, R1C3), (R2C1, R2C2, R2C3), (R3C1, _, R3C3)) = Position,
	Position1 = ((R1C1, R1C2, R1C3), (R2C1, R2C2, R2C3), (R3C1, o, R3C3)).
move(l-r, computer, Position, Position1) :-
	((R1C1, R1C2, R1C3), (R2C1, R2C2, R2C3), (R3C1, R3C2, _)) = Position,
	Position1 = ((R1C1, R1C2, R1C3), (R2C1, R2C2, R2C3), (R3C1, R3C2, o)).
move(u-l, Player, Position, Position1) :-
	((_, R1C2, R1C3), (R2C1, R2C2, R2C3), (R3C1, R3C2, R3C3)) = Position,
	Position1 = ((x, R1C2, R1C3), (R2C1, R2C2, R2C3), (R3C1, R3C2, R3C3)).
move(u-c, Player, Position, Position1) :-
	((R1C1, _, R1C3), (R2C1, R2C2, R2C3), (R3C1, R3C2, R3C3)) = Position,
	Position1 = ((R1C1, x, R1C3), (R2C1, R2C2, R2C3), (R3C1, R3C2, R3C3)).
move(u-r, Player, Position, Position1) :-
	((R1C1, R1C2, _), (R2C1, R2C2, R2C3), (R3C1, R3C2, R3C3)) = Position,
	Position1 = ((R1C1, R1C2, x), (R2C1, R2C2, R2C3), (R3C1, R3C2, R3C3)).
move(c-l, Player, Position, Position1) :-
	((R1C1, R1C2, R1C3), (_, R2C2, R2C3), (R3C1, R3C2, R3C3)) = Position,
	Position1 = ((R1C1, R1C2, R1C3), (x, R2C2, R2C3), (R3C1, R3C2, R3C3)).
move(c-c, Player, Position, Position1) :-
	((R1C1, R1C2, R1C3), (R2C1, _, R2C3), (R3C1, R3C2, R3C3)) = Position,
	Position1 = ((R1C1, R1C2, R1C3), (R2C1, x, R2C3), (R3C1, R3C2, R3C3)).
move(c-r, Player, Position, Position1) :-
	((R1C1, R1C2, R1C3), (R2C1, R2C2, _), (R3C1, R3C2, R3C3)) = Position,
	Position1 = ((R1C1, R1C2, R1C3), (R2C1, R2C2, x), (R3C1, R3C2, R3C3)).
move(l-l, Player, Position, Position1) :-
	((R1C1, R1C2, R1C3), (R2C1, R2C2, R2C3), (_, R3C2, R3C3)) = Position,
	Position1 = ((R1C1, R1C2, R1C3), (R2C1, R2C2, R2C3), (x, R3C2, R3C3)).
move(l-c, Player, Position, Position1) :-
	((R1C1, R1C2, R1C3), (R2C1, R2C2, R2C3), (R3C1, _, R3C3)) = Position,
	Position1 = ((R1C1, R1C2, R1C3), (R2C1, R2C2, R2C3), (R3C1, x, R3C3)).
move(l-r, Player, Position, Position1) :-
	((R1C1, R1C2, R1C3), (R2C1, R2C2, R2C3), (R3C1, R3C2, _)) = Position,
	Position1 = ((R1C1, R1C2, R1C3), (R2C1, R2C2, R2C3), (R3C1, R3C2, x)).







































