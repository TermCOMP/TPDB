{-# htermination (iterate :: (a  ->  a)  ->  a  ->  (List a)) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
iterate :: (a  ->  a)  ->  a  ->  (List a);
iterate f x = Cons x (iterate f (f x));

