{-# htermination (gtGtMaybe :: Maybe b  ->  Maybe a  ->  Maybe a) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
data Maybe a = Nothing  | Just a ;

gtGt0 q vv = q;

gtGtEsMaybe :: Maybe c  ->  (c  ->  Maybe b)  ->  Maybe b
gtGtEsMaybe (Just x) k = k x;
gtGtEsMaybe Nothing k = Nothing;

gtGtMaybe :: Maybe c  ->  Maybe b  ->  Maybe b
gtGtMaybe p q = gtGtEsMaybe p (gtGt0 q);

