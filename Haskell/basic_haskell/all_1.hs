{-# htermination (all :: (a  ->  MyBool)  ->  (List a)  ->  MyBool) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
asAs :: MyBool  ->  MyBool  ->  MyBool;
asAs MyFalse x = MyFalse;
asAs MyTrue x = x;

foldr :: (b  ->  a  ->  a)  ->  a  ->  (List b)  ->  a;
foldr f z Nil = z;
foldr f z (Cons x xs) = f x (foldr f z xs);

and :: (List MyBool)  ->  MyBool;
and = foldr asAs MyTrue;

map :: (b  ->  a)  ->  (List b)  ->  (List a);
map f Nil = Nil;
map f (Cons x xs) = Cons (f x) (map f xs);

pt :: (a  ->  b)  ->  (c  ->  a)  ->  c  ->  b;
pt f g x = f (g x);

all :: (a  ->  MyBool)  ->  (List a)  ->  MyBool;
all p = pt and (map p);

