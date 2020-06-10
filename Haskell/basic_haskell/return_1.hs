{-# htermination (returnMaybe :: a  ->  Maybe a) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
data Maybe a = Nothing  | Just a ;

returnMaybe :: b  ->  Maybe b
returnMaybe = Just;

