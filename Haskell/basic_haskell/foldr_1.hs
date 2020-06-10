{-# htermination (foldr :: (a  ->  b  ->  b)  ->  b  ->  (List a)  ->  b) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
foldr :: (b  ->  a  ->  a)  ->  a  ->  (List b)  ->  a;
foldr f z Nil = z;
foldr f z (Cons x xs) = f x (foldr f z xs);

