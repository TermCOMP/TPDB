{-# htermination (unzip :: (List (Tup2 a b))  ->  Tup2 (List a) (List b)) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
data Tup2 a b = Tup2 a b ;

foldr :: (a  ->  b  ->  b)  ->  b  ->  (List a)  ->  b;
foldr f z Nil = z;
foldr f z (Cons x xs) = f x (foldr f z xs);

unzip00 (Tup2 as bs) = as;

unzip01 (Tup2 as bs) = bs;

unzip0 (Tup2 a b) vv = Tup2 (Cons a (unzip00 vv)) (Cons b (unzip01 vv));

unzip :: (List (Tup2 b a))  ->  Tup2 (List b) (List a);
unzip = foldr unzip0 (Tup2 Nil Nil);

