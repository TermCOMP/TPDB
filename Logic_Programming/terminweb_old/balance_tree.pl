%query: balance(i,o).
%% file   : balance.pl
%% author : samir genaim
%% date   : 28 Aug, 1998
%%
%% Desc   : balance a binary tree. Works in both directions,
%%          and do it using just once pass on the input.
%%
%%          T = tree(T,Any,T) | nil 
%%

balance(T,TB) :-
	balance(T,I-[],[(TB,I-[])|X]-X,Rest-[],Rest-[]).


balance(nil,X-X,A-B,A-B,[(nil,C-C)|T]-T).
balance(tree(L,V,R),IH-IT,[(tree(LB,VB,RB),A-D)|H]-[(LB,A-[VB|X]),(RB,X-D)|T],HR-TR,NH-NT) :-
        balance(L,IH-[V|IT1],H-T,HR1-TR1,NH-NT1),
        balance(R,IT1-IT,HR1-TR1,HR-TR,NT1-NT).



/*TWDESC

balane a binary tree. work in both directions.

*/

/*TWDEMO

*/
/*.

*/
