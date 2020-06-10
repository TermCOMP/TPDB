{-# htermination (elemTup0 :: Tup0  ->  (List Tup0)  ->  MyBool) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
data Tup0 = Tup0 ;

map :: (b  ->  a)  ->  (List b)  ->  (List a);
map f Nil = Nil;
map f (Cons x xs) = Cons (f x) (map f xs);

foldr :: (a  ->  b  ->  b)  ->  b  ->  (List a)  ->  b;
foldr f z Nil = z;
foldr f z (Cons x xs) = f x (foldr f z xs);

pePe :: MyBool  ->  MyBool  ->  MyBool;
pePe MyFalse x = x;
pePe MyTrue x = MyTrue;

or :: (List MyBool)  ->  MyBool;
or = foldr pePe MyFalse;

pt :: (a  ->  b)  ->  (c  ->  a)  ->  c  ->  b;
pt f g x = f (g x);

any :: (a  ->  MyBool)  ->  (List a)  ->  MyBool;
any p = pt or (map p);

esEsTup0 :: Tup0  ->  Tup0  ->  MyBool
esEsTup0 Tup0 Tup0 = MyTrue;

elemTup0 :: Tup0  ->  (List Tup0)  ->  MyBool
elemTup0 = pt any esEsTup0;

