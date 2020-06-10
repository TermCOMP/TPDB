{-# htermination (repeat :: a  ->  (List a)) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
repeatXs vv = Cons vv (repeatXs vv);

repeat :: a  ->  (List a);
repeat x = repeatXs x;

