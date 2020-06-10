{-# htermination (esLtLt :: (a  ->  Maybe b)  ->  Maybe a  ->  Maybe b) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
data Maybe a = Nothing  | Just a ;

gtGtEsMaybe :: Maybe c  ->  (c  ->  Maybe b)  ->  Maybe b
gtGtEsMaybe (Just x) k = k x;
gtGtEsMaybe Nothing k = Nothing;

esLtLt :: (c  ->  Maybe a)  ->  Maybe c  ->  Maybe a;
esLtLt f x = gtGtEsMaybe x f;

