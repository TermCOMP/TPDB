{-# htermination (ds :: (b  ->  a)  ->  b  ->  a) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
ds :: (a  ->  b)  ->  a  ->  b;
ds f x = f x;

