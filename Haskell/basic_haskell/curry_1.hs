{-# htermination (curry :: (Tup2 b a  ->  c)  ->  b  ->  a  ->  c) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
data Tup2 a b = Tup2 a b ;

curry :: (Tup2 a b  ->  c)  ->  a  ->  b  ->  c;
curry f x y = f (Tup2 x y);

