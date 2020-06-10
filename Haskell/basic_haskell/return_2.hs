{-# htermination (returnNil :: a  ->  (List a)) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
returnNil :: b  ->  List b
returnNil x = Cons x Nil;

