{-# htermination (head :: (List a)  ->  a) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
head :: (List a)  ->  a;
head (Cons x vv) = x;

