{-# htermination (sequence :: (List (Maybe a))  ->  Maybe (List a)) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
data Maybe a = Nothing  | Just a ;

gtGtEsMaybe :: Maybe c  ->  (c  ->  Maybe b)  ->  Maybe b
gtGtEsMaybe (Just x) k = k x;
gtGtEsMaybe Nothing k = Nothing;

returnMaybe :: b  ->  Maybe b
returnMaybe = Just;

sequence0 x xs = returnMaybe (Cons x xs);

sequence1 cs x = gtGtEsMaybe (sequence cs) (sequence0 x);

sequence Nil = returnMaybe Nil;
sequence (Cons c cs) = gtGtEsMaybe c (sequence1 cs);

