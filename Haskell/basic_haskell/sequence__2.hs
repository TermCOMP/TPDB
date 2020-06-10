{-# htermination (sequence_Nil :: (List (List a))  ->  (List Tup0)) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
data Tup0 = Tup0 ;

foldr :: (b  ->  a  ->  a)  ->  a  ->  (List b)  ->  a;
foldr f z Nil = z;
foldr f z (Cons x xs) = f x (foldr f z xs);

gtGt0 q vv = q;

psPs :: (List a)  ->  (List a)  ->  (List a);
psPs Nil ys = ys;
psPs (Cons x xs) ys = Cons x (psPs xs ys);

gtGtEsNil :: (List b)  ->  (b  ->  (List c))  ->  (List c)
gtGtEsNil (Cons x xs) f = psPs (f x) (gtGtEsNil xs f);
gtGtEsNil Nil f = Nil;

gtGtNil :: (List b)  ->  (List c)  ->  (List c)
gtGtNil p q = gtGtEsNil p (gtGt0 q);

returnNil :: b  ->  List b
returnNil x = Cons x Nil;

sequence_Nil :: (List (List b))  ->  (List Tup0)
sequence_Nil = foldr gtGtNil (returnNil Tup0);

