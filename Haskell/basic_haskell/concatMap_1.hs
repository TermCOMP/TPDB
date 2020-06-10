{-# htermination (concatMap :: (a  ->  (List b))  ->  (List a)  ->  (List b)) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
foldr :: (a  ->  b  ->  b)  ->  b  ->  (List a)  ->  b;
foldr f z Nil = z;
foldr f z (Cons x xs) = f x (foldr f z xs);

psPs :: (List a)  ->  (List a)  ->  (List a);
psPs Nil ys = ys;
psPs (Cons x xs) ys = Cons x (psPs xs ys);

concat :: (List (List a))  ->  (List a);
concat = foldr psPs Nil;

map :: (b  ->  a)  ->  (List b)  ->  (List a);
map f Nil = Nil;
map f (Cons x xs) = Cons (f x) (map f xs);

pt :: (c  ->  a)  ->  (b  ->  c)  ->  b  ->  a;
pt f g x = f (g x);

concatMap :: (a  ->  (List b))  ->  (List a)  ->  (List b);
concatMap f = pt concat (map f);

