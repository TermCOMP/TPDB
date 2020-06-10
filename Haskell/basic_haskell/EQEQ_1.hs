{-# htermination (esEsTup0 :: Tup0  ->  Tup0  ->  MyBool) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
data Tup0 = Tup0 ;

esEsTup0 :: Tup0  ->  Tup0  ->  MyBool
esEsTup0 Tup0 Tup0 = MyTrue;

