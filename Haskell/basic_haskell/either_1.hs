{-# htermination (either :: (b  ->  c)  ->  (a  ->  c)  ->  Either b a  ->  c) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
data Either a b = Left a  | Right b ;

either :: (a  ->  b)  ->  (c  ->  b)  ->  Either a c  ->  b;
either l r (Left x) = l x;
either l r (Right y) = r y;

