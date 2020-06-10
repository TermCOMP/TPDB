{-# htermination (foldr1 :: (a  ->  a  ->  a)  ->  (List a)  ->  a) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
foldr1 :: (a  ->  a  ->  a)  ->  (List a)  ->  a;
foldr1 f (Cons x Nil) = x;
foldr1 f (Cons x xs) = f x (foldr1 f xs);

