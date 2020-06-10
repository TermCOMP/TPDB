{-# htermination (notElemMyBool :: MyBool  ->  (List MyBool)  ->  MyBool) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
asAs :: MyBool  ->  MyBool  ->  MyBool;
asAs MyFalse x = MyFalse;
asAs MyTrue x = x;

foldr :: (a  ->  b  ->  b)  ->  b  ->  (List a)  ->  b;
foldr f z Nil = z;
foldr f z (Cons x xs) = f x (foldr f z xs);

and :: (List MyBool)  ->  MyBool;
and = foldr asAs MyTrue;

map :: (a  ->  b)  ->  (List a)  ->  (List b);
map f Nil = Nil;
map f (Cons x xs) = Cons (f x) (map f xs);

pt :: (c  ->  b)  ->  (a  ->  c)  ->  a  ->  b;
pt f g x = f (g x);

all :: (a  ->  MyBool)  ->  (List a)  ->  MyBool;
all p = pt and (map p);

esEsMyBool :: MyBool  ->  MyBool  ->  MyBool
esEsMyBool MyFalse MyFalse = MyTrue;
esEsMyBool MyFalse MyTrue = MyFalse;
esEsMyBool MyTrue MyFalse = MyFalse;
esEsMyBool MyTrue MyTrue = MyTrue;

not :: MyBool  ->  MyBool;
not MyTrue = MyFalse;
not MyFalse = MyTrue;

fsEsMyBool :: MyBool  ->  MyBool  ->  MyBool
fsEsMyBool x y = not (esEsMyBool x y);

notElemMyBool :: MyBool  ->  (List MyBool)  ->  MyBool
notElemMyBool = pt all fsEsMyBool;

