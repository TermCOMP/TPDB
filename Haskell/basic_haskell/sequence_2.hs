{-# htermination (sequence :: (List (List a))  ->  (List (List a))) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
psPs :: (List a)  ->  (List a)  ->  (List a);
psPs Nil ys = ys;
psPs (Cons x xs) ys = Cons x (psPs xs ys);

gtGtEsNil :: List b  ->  (b  ->  List c)  ->  List c
gtGtEsNil (Cons x xs) f = psPs (f x) (gtGtEsNil xs f);
gtGtEsNil Nil f = Nil;

returnNil :: b  ->  List b
returnNil x = Cons x Nil;

sequence0 x xs = returnNil (Cons x xs);

sequence1 cs x = gtGtEsNil (sequence cs) (sequence0 x);

sequence Nil = returnNil Nil;
sequence (Cons c cs) = gtGtEsNil c (sequence1 cs);

