{-# htermination (last :: (List a)  ->  a) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
last :: (List a)  ->  a;
last (Cons x Nil) = x;
last (Cons vv xs) = last xs;

