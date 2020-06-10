%Source: http://colin.barker.pagesperso-orange.fr/sands.htm
%query:range(g,g,f).
/* range(I,J,Ks) is true if Ks is the list of integers between I and J     */
/*   inclusive.                                                            */
range(I,J,Ks):-range(I,J,[],Ks).

range(I,I,Ks,[I|Ks]):-!.
range(I,J,As,Ks):-I < J, J1 is J - 1, range(I,J1,[J|As],Ks).
