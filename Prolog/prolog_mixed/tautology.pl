%query: tautology(i).
/*
 this program checks if a propositional formula expressed using
 conjunction (*), disjunction (+), and negation (-) is a tautology. It
 is based on an algorithm by Wang expressed in terms of sequents ( Fs
 |- Gs). This was given as a first exercise, before students were
 aware of things like the cut and negation. I took the exercise from a
 course taught by Harald Sondergaard. Here it is in a simplified form
 to demonstrate termination analysis.

 this version is inefficient to the degree that we are 
 not sure if it contains a termination bug. To experience that
 try the test "no4" down below.

 of course one can write a much more efficient implementation of this
 algorithm - but then it is less interesting to show that it
 terminates :-)
*/



/* checks if a propositional formula is a tautology using wang
    algorithm  manipulating sequents. 

*/

%% Following functions build data structures:
% */2, +/2, -/1, , if/2, iff/2, sequent/2
% (and lists in sequents)


%% ===================
%% tautology(+Formula)
%% ===================

tautology(F) :-
        reduce(sequent([], [F]), sequent([], [])).

%% =========================================================
%% reduce(+sequent(LeftSide,RightSide), -AccumulatorSequent)
%% =========================================================

% Reducing left sequent items


reduce(sequent([if(A,B)|Fs],Gs), NF) :-
    reduce(sequent([-B+A|Fs],Gs), NF).
reduce(sequent([iff(A,B)|Fs],Gs), NF) :-
    reduce(sequent([if(A,B)*if(B,A)|Fs],Gs), NF).

reduce(sequent([F1*F2|Fs], Gs), NF) :-
        reduce(sequent([F1,F2|Fs], Gs), NF).
reduce(sequent([F1+F2|Fs], Gs), NF) :-
        reduce(sequent([F1|Fs], Gs), NF),
        reduce(sequent([F2|Fs], Gs), NF).
reduce(sequent([-F1|Fs], Gs), NF) :-
        reduce(sequent(Fs, [F1|Gs]), NF).


% Reducing right sequent items

reduce(sequent(Fs,[if(A,B)|Gs]), NF) :-
    reduce(sequent(Fs,[-B+A|Gs]), NF).
reduce(sequent(Fs,[iff(A,B)|Gs]), NF) :-
    reduce(sequent(Fs,[if(A,B)*if(B,A)|Gs]), NF).
reduce(sequent([p(V)|Fs], Gs), sequent(Left,Right)) :-
        reduce(sequent(Fs, Gs), sequent([p(V)|Left], Right)).

reduce(sequent(Fs, [G1+G2|Gs]), NF) :-
        reduce(sequent(Fs, [G1,G2|Gs]), NF).
reduce(sequent(Fs, [G1*G2|Gs]), NF) :-
        reduce(sequent(Fs, [G1|Gs]), NF),
        reduce(sequent(Fs, [G2|Gs]), NF).
reduce(sequent(Fs, [-G1|Gs]), NF) :-
        reduce(sequent([G1|Fs], Gs), NF).
reduce(sequent([], [p(V)|Gs]), sequent(Left,Right)) :-
        reduce(sequent([], Gs), sequent(Left, [p(V)|Right])).


% Finally, check whether the fully reduced sequent has
% intersecting sides which indicates whether it is tautological.
reduce(sequent([], []), sequent(F1, F2)) :-
        intersect(F1, F2).


%% ========================================
%% intersect(+List1, +List2)
%% ========================================
% true if the List1 and List2 have a nonempty intersection
% could be more efficient with cuts.

intersect([X|_],[X|_]).
intersect(Xs,[_|Ys]) :- intersect(Xs,Ys).
intersect([_|Xs],Ys) :- intersect(Xs,Ys).


/*  tautology tests */
yes1 :- tautology( -(p(1))+p(1) ).  
yes2 :- tautology( (-(p(1))+p(1))*(p(1)+ -(p(1))) ).
yes3 :- tautology( (-(-(-(p(1))))+p(1))*(-(-(p(1)))+ -(p(1))) ).
yes4 :- tautology( -(p(1)* -(p(1))) ).

/*  non tautology tests */
no1 :- 
  tautology( p(1)* -(p(1)) ).  

no2 :- 
  tautology( -(p(1)+ -(p(1)))+p(2) ).
         
no3 :- 
  tautology( (-(-(p(1))+(-(p(2))+p(3)))+(-(p(1)+p(2))+p(3)))*
               (-(p(1))+(-(p(2))+p(3))+ -(-(p(1)+p(2))+p(3))) ).
                               
no4 :- 
  tautology( 
 -(p(1)*p(2)*p(3)+ -(p(1))* -(p(2))* -(p(3)))+
  (-(p(1))+(-(p(2))+p(3))*(p(2)+ -(p(3))))*(p(1)+ 
  -((-(p(2))+p(3))*(p(2)+ -(p(3)))))
  ).
