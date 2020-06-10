{-# htermination (concat :: (List (List a))  ->  (List a)) #-} 
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

