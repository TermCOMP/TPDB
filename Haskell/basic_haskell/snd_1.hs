{-# htermination (snd :: Tup2 b a  ->  a) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
data Tup2 a b = Tup2 a b ;

snd :: Tup2 a b  ->  b;
snd (Tup2 vv y) = y;

