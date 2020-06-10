%query: q(i,i).
%From sagiv Tue Jan  7 10:56:23 1992
%Received: by humus.huji.ac.il (5.65b+IDA/HU-4.7)
%	id AA16201; Tue, 7 Jan 92 10:56:22 +0200
%From: yehoshua Sagiv <sagiv>
%Date: Tue, 7 Jan 92 10:56:22 +0200
%Message-Id: <9201070856.AA16201@humus.huji.ac.il>
%To: naomil
%Subject: example
%Status: R

%Following is an example that is referred to in footnote 4.
%It is due to Allen Van Gelder (originally, I gave another example, but
%Allen pointed out that his algorithm could handle it by first applying
%unfolding; later Allen emblished my original example to the following one
%and showed that unfolding does not help his method in this case).
%Note that in the following example there is a cycle involving q, p, r, t,
%and q again,such that nothing gets smaller along that cycle.
 

e(a,b).
q(X,Y)       :- e(X,Y).
q(X,f(f(X))) :- p(X,f(f(X))), q(X,f(X)).
q(X,f(f(Y))) :- p(X,f(Y)).
 
p(X,Y)       :- e(X,Y).
p(X,f(Y))    :- r(X,f(Y)), p(X,Y).
 
r(X,Y)       :- e(X,Y).
r(X,f(Y))    :- q(X,Y), r(X,Y).
r(f(X),f(X)) :- t(f(X),f(X)).
 
t(X,Y)       :- e(X,Y).
t(f(X),f(Y)) :- q(f(X),f(Y)), t(X,Y).
 
%---Shuky Sagiv

