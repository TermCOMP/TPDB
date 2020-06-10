{-# htermination (notElemTup0 :: Tup0  ->  (List Tup0)  ->  MyBool) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
data Tup0 = Tup0 ;

asAs :: MyBool  ->  MyBool  ->  MyBool;
asAs MyFalse x = MyFalse;
asAs MyTrue x = x;

foldr :: (a  ->  b  ->  b)  ->  b  ->  (List a)  ->  b;
foldr f z Nil = z;
foldr f z (Cons x xs) = f x (foldr f z xs);

and :: (List MyBool)  ->  MyBool;
and = foldr asAs MyTrue;

map :: (b  ->  a)  ->  (List b)  ->  (List a);
map f Nil = Nil;
map f (Cons x xs) = Cons (f x) (map f xs);

pt :: (c  ->  a)  ->  (b  ->  c)  ->  b  ->  a;
pt f g x = f (g x);

all :: (a  ->  MyBool)  ->  (List a)  ->  MyBool;
all p = pt and (map p);

esEsTup0 :: Tup0  ->  Tup0  ->  MyBool
esEsTup0 Tup0 Tup0 = MyTrue;

not :: MyBool  ->  MyBool;
not MyTrue = MyFalse;
not MyFalse = MyTrue;

fsEsTup0 :: Tup0  ->  Tup0  ->  MyBool
fsEsTup0 x y = not (esEsTup0 x y);

notElemTup0 :: Tup0  ->  (List Tup0)  ->  MyBool
notElemTup0 = pt all fsEsTup0;

