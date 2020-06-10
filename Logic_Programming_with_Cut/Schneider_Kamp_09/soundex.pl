% Problem Solving with Prolog by John Stobo
% Adapted to use natural numbers in Peano arithmetics
% terminating

%query: goal(i,o).
goal(Name,Code) :- eq(Name,[First|Others]), reduce(Others,s(0),First,Reduced), eq(Code, Reduced).

%Original call with atom to constant list transformation
%soundex(Name,Code) :-
%   name(Name,[First|Others]),
%   reduce(Others,s(0),First,Reduced),
%   name(Code,[First|Reduced]).

% reduce (Input_list, Count_of_output, Previous_letter, Output_list)
reduce(_,s(s(s(s(0)))),_,[]) :- !. % Output is empty list...
reduce([],_,_,[]) :- !. % in both base cases.
reduce([Current|Others],Count,Current,Code) :-
   vowel_h_w_y(Current),
   !,
   reduce(Others,Count,Current,Code).
reduce([Letter|Others],Count,Letter,Code) :- !, reduce(Others,Count,Letter,Code).
reduce([Current|Others],Count,_,[Current|Code]) :- reduce(Others,s(Count),Current,Code).

vowel_h_w_y(97).      % "a"
vowel_h_w_y(101).     % "e"
vowel_h_w_y(105).     % "i"
vowel_h_w_y(111).     % "o"
vowel_h_w_y(117).     % "u"
vowel_h_w_y(104).     % "h"
vowel_h_w_y(119).     % "w"
vowel_h_w_y(121).     % "y"

eq(X,X).
