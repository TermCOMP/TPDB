%Source: Implementation of problems 1 through 4 from www.projecteuler.net
%query:euler4(g,f).
euler4(Bound, Result) :- .

isPalindrome(Cand) :- LastDigit is Cand mod 10, firstDigit(Cand, FirstDigit), LastDigit =:= FirstDigit.
firstDigit(Num, Result) :- Num < 10, !, Result is Num.
firstDigit(Num, Result) :- Num >= 10, !, firstDigit(Num // 10, Result).
