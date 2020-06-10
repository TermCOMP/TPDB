{-# htermination (sequence_ :: (List (Maybe a))  ->  Maybe Tup0) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
data Tup0 = Tup0 ;

data Maybe a = Nothing  | Just a ;

foldr :: (b  ->  a  ->  a)  ->  a  ->  (List b)  ->  a;
foldr f z Nil = z;
foldr f z (Cons x xs) = f x (foldr f z xs);

gtGt0 q vv = q;

gtGtEsMaybe :: Maybe c  ->  (c  ->  Maybe b)  ->  Maybe b
gtGtEsMaybe (Just x) k = k x;
gtGtEsMaybe Nothing k = Nothing;

gtGtMaybe :: Maybe b  ->  Maybe c  ->  Maybe c
gtGtMaybe p q = gtGtEsMaybe p (gtGt0 q);

returnMaybe :: b  ->  Maybe b
returnMaybe = Just;

sequence_ = foldr gtGtMaybe (returnMaybe Tup0);

