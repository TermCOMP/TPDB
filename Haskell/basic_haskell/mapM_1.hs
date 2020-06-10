{-# htermination (mapM :: (b  ->  Maybe a)  ->  (List b)  ->  Maybe (List a)) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
data Maybe a = Nothing  | Just a ;

map :: (b  ->  a)  ->  (List b)  ->  (List a);
map f Nil = Nil;
map f (Cons x xs) = Cons (f x) (map f xs);

pt :: (c  ->  b)  ->  (a  ->  c)  ->  a  ->  b;
pt f g x = f (g x);

gtGtEsMaybe :: Maybe b  ->  (b  ->  Maybe c)  ->  Maybe c
gtGtEsMaybe (Just x) k = k x;
gtGtEsMaybe Nothing k = Nothing;

returnMaybe :: b  ->  Maybe b
returnMaybe = Just;

sequence0 x xs = returnMaybe (Cons x xs);

sequence1 cs x = gtGtEsMaybe (sequence cs) (sequence0 x);

sequence Nil = returnMaybe Nil;
sequence (Cons c cs) = gtGtEsMaybe c (sequence1 cs);

mapM f = pt sequence (map f);

