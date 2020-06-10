{-# htermination (fst :: Tup2 b a  ->  b) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
data Tup2 a b = Tup2 a b ;

fst :: Tup2 a b  ->  a;
fst (Tup2 x vv) = x;

