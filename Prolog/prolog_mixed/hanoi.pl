%query: move(i,i,i,i).
% From the Prolog tutorial by J.R.Fisher 1999 
% http://www.csupomona.edu/~jrfisher/www/prolog_tutorial/contents.html


move(1,X,Y,_) :-  
         write('Move top disk from '), 
         write(X), 
         write(' to '), 
         write(Y), 
         nl. 

move(N,X,Y,Z) :- 
         N>1, 
         M is N-1, 
         move(M,X,Z,Y), 
         move(1,X,Y,_), 
         move(M,Z,Y,X).
