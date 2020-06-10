{-# htermination (flip :: (c  ->  b  ->  a)  ->  b  ->  c  ->  a) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
flip :: (c  ->  a  ->  b)  ->  a  ->  c  ->  b;
flip f x y = f y x;

