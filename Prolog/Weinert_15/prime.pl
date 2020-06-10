%Source: Random examples used for debugging termination analysis for arithmetic Prolog programs
% terminating
%query:isPrime(b)
% true if Cand is a prime
isPrime(Cand) :- Cand > 0, isNotMultipleOfRange(2, Cand - 1, Cand).

% true if there is no Low <= x <= High such that Cand mod x = 0
isNotMultipleOfRange(Low, High, Cand) :- Low > High, !.
isNotMultipleOfRange(Low, High, Cand) :- Low =< High, !, isNotMultipleOf(Low, Cand), isNotMultipleOfRange(Low + 1, High, Cand).

% true if there is no x such that Factor * x = Multiple
isNotMultipleOf(Factor, Multiple) :- checkNotMultipleRange(0, Multiple, Factor, Multiple).

% is true if there is no value Low <= x <= High such that Factor * x = Multiple
checkNotMultipleRange(Low, High, Factor, Multiple) :- Low > High, !.
checkNotMultipleRange(Low, High, Factor, Multiple) :- Low =< High, !, checkNotMultiple(Low, Factor, Multiple), checkNotMultipleRange(Low + 1, High, Factor, Multiple).

% true if Factor1 * Factor2 =\= Multiple
checkNotMultiple(Factor1, Factor2, Multiple) :- Multiple =\= Factor1 * Factor2.
