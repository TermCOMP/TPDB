%Source: https://sites.google.com/site/prologsite/prolog-problems
%query:my_length(g,f).
% 1.04 (*): Find the number of elements of a list.

% my_length(L,N) :- the list L contains N elements
%    (list,integer) (+,?) 

% Note: length(?List, ?Int) is predefined

my_length([],0).
my_length([_|L],N) :- my_length(L,N1), N is N1 + 1.
