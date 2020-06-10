%query: balance(i,o).
balance(T,TB) :-
    balance55(T,XX0,XX1,[],[(nil,XX0-XX0)|XX1],[],[(TB,I-[])|X],X,I,[]).

balance55(nil,C,T,T,A,B,A,B,X,X).

balance55(tree(L,V,R),XX0,XX1,NT,HR,TR,[(tree(LB,VB,RB),A-D)|H],[(LB,A-[VB|X]),(RB,X-D)|T],IH,IT) :-
    balance55(L,XX0,XX1,[(nil,XX2-XX2)|XX3],HR1,TR1,H,T,IH,[V|IT1]),
    balance55(R,XX2,XX3,NT,HR,TR,HR1,TR1,IT1,IT).

balance5(nil,C,T,T,A,B,A,B,X,X) :-
    balance55(nil,C,T,T,A,B,A,B,X,X).

balance5(tree(L,V,R),XX0,XX1,NT,HR,TR,[(tree(LB,VB,RB),A-D)|H],[(LB,A-[VB|X]),(RB,X-D)|T],IH,IT) :-
    balance55(tree(L,V,R),XX0,XX1,NT,HR,TR,[(tree(LB,VB,RB),A-D)|H],[(LB,A-[VB|X]),(RB,X-D)|T],IH,IT).



balance(nil,X-X,A-B,A-B,[(nil,C-C)|T]-T) :-
    balance5(nil,C,T,T,A,B,A,B,X,X).

balance(tree(L,V,R),IH-IT,[(tree(LB,VB,RB),A-D)|H]-[(LB,A-[VB|X]),(RB,X-D)|T],HR-TR,[(nil,XX0-XX0)|XX1]-NT) :-
    balance5(tree(L,V,R),XX0,XX1,NT,HR,TR,[(tree(LB,VB,RB),A-D)|H],[(LB,A-[VB|X]),(RB,X-D)|T],IH,IT).



/*TWDESC

Untupled balance of binary tree. Try it if you have time.

*/

