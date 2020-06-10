{-# htermination (filter :: (a  ->  MyBool)  ->  (List a)  ->  (List a)) #-} 
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

map :: (a  ->  b)  ->  (List a)  ->  (List b);
map f Nil = Nil;
map f (Cons x xs) = Cons (f x) (map f xs);

pt :: (a  ->  c)  ->  (b  ->  a)  ->  b  ->  c;
pt f g x = f (g x);

concatMap :: (a  ->  (List b))  ->  (List a)  ->  (List b);
concatMap f = pt concat (map f);

filter000 x MyTrue = Cons x Nil;
filter000 x MyFalse = Nil;

filter00 p x = filter000 x (p x);
filter00 p vv = Nil;

filter0 p vu39 = filter00 p vu39;

filter :: (a  ->  MyBool)  ->  (List a)  ->  (List a);
filter p xs = concatMap (filter0 p) xs;

