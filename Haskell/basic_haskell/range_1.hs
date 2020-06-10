{-# htermination (rangeTup0 :: Tup2 Tup0 Tup0  ->  (List Tup0)) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
data Tup0 = Tup0 ;

data Tup2 a b = Tup2 a b ;

rangeTup0 :: Tup2 Tup0 Tup0  ->  (List Tup0)
rangeTup0 (Tup2 Tup0 Tup0) = Cons Tup0 Nil;

