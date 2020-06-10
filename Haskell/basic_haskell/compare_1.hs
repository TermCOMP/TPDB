{-# htermination (compareTup0 :: Tup0  ->  Tup0  ->  Ordering) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
data Tup0 = Tup0 ;

data Ordering = LT  | EQ  | GT ;

compareTup0 :: Tup0  ->  Tup0  ->  Ordering
compareTup0 Tup0 Tup0 = EQ;

