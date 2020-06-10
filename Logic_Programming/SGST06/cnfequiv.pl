%query: cnfequiv(i,o).

/* from Marcin Jurdzinski, 2004 */

% givecnfequiv prints out a CNF equivalent formula of its argument

%givecnfequiv(X) :- cnfequiv(X,Y), write(Y). % write is a built-in predicate
                                            % which prints its argument

 % cnfequiv is designed for queries in which the first argument is a
 % boolean formula and the second is a variable - the variable will be
 % instantiated to an equivalent formula of the first argument, in
 % conjunctive normal form (meaning it would satisfy the "cnf" predicate
 % in the program "cnfs.prolog"). Given a query of this form, the first
 % clause in the definition is repeatedly invoked until the subgoal
 % "transform(X,Z)" can no longer be satisfied. (See below for notes
 % on transform)

cnfequiv(X,Y) :- transform(X,Z), cnfequiv(Z,Y).
cnfequiv(X,X).

 % transform is satisfied if its second argument is derived from its
 % first by applying one of the standard transformations. Given a query
 % in whic the first argument is a boolean formula and the second is a
 % variable, it will instantiate the variable to a logically equivalent
 % formula to the first argument, which is nearer to being in conjunctive
 % normal form. If the first argument is already in conjunctive normal form
 % then the goal cannot be satisfied.

transform(n(n(X)),X).  % eliminate double negation

transform(n(a(X,Y)),o(n(X),n(Y))).  % De Morgan
transform(n(o(X,Y)),a(n(X),n(Y))).  %

transform(o(X,a(Y,Z)),a(o(X,Y),o(X,Z))).   % distribution
transform(o(a(X,Y),Z),a(o(X,Z),o(Y,Z))).   %

transform(o(X1,Y),o(X2,Y)) :- transform(X1,X2).  %
transform(o(X,Y1),o(X,Y2)) :- transform(Y1,Y2).  %
                                                 % transform subterms
transform(a(X1,Y),a(X2,Y)) :- transform(X1,X2).  %
transform(a(X,Y1),a(X,Y2)) :- transform(Y1,Y2).  %
                                                 %
transform(n(X1),n(X2)) :- transform(X1,X2).      %