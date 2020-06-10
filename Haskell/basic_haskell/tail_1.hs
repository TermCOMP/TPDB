{-# htermination (tail :: (List a)  ->  (List a)) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
tail :: (List a)  ->  (List a);
tail (Cons vv xs) = xs;

