{-# htermination (mapM_ :: (a  ->  Maybe b)  ->  (List a)  ->  Maybe Tup0) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
data Tup0 = Tup0 ;

data Maybe a = Nothing  | Just a ;

map :: (a  ->  b)  ->  (List a)  ->  (List b);
map f Nil = Nil;
map f (Cons x xs) = Cons (f x) (map f xs);

pt :: (a  ->  b)  ->  (c  ->  a)  ->  c  ->  b;
pt f g x = f (g x);

foldr :: (a  ->  b  ->  b)  ->  b  ->  (List a)  ->  b;
foldr f z Nil = z;
foldr f z (Cons x xs) = f x (foldr f z xs);

gtGt0 q vv = q;

gtGtEsMaybe :: Maybe b  ->  (b  ->  Maybe c)  ->  Maybe c
gtGtEsMaybe (Just x) k = k x;
gtGtEsMaybe Nothing k = Nothing;

gtGtMaybe :: Maybe b  ->  Maybe c  ->  Maybe c
gtGtMaybe p q = gtGtEsMaybe p (gtGt0 q);

returnMaybe :: b  ->  Maybe b
returnMaybe = Just;

sequence_Maybe :: (List (Maybe b))  ->  Maybe Tup0
sequence_Maybe = foldr gtGtMaybe (returnMaybe Tup0);

mapM_ f = pt sequence_Maybe (map f);

