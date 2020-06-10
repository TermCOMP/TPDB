{-# htermination (enumFromThenTup0 :: Tup0  ->  Tup0  ->  (List Tup0)) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
data Tup0 = Tup0 ;

enumFromThenTup0 :: Tup0  ->  Tup0  ->  (List Tup0)
enumFromThenTup0 Tup0 Tup0 = Cons Tup0 Nil;

