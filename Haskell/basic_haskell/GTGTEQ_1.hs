{-# htermination (gtGtEsMaybe :: Maybe a  ->  (a  ->  Maybe b)  ->  Maybe b) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
data Maybe a = Nothing  | Just a ;

gtGtEsMaybe :: Maybe c  ->  (c  ->  Maybe b)  ->  Maybe b
gtGtEsMaybe (Just x) k = k x;
gtGtEsMaybe Nothing k = Nothing;

