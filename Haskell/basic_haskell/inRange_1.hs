{-# htermination (inRangeTup0 :: Tup2 Tup0 Tup0  ->  Tup0  ->  MyBool) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
data Tup0 = Tup0 ;

data Tup2 a b = Tup2 a b ;

inRangeTup0 :: Tup2 Tup0 Tup0  ->  Tup0  ->  MyBool
inRangeTup0 (Tup2 Tup0 Tup0) Tup0 = MyTrue;

