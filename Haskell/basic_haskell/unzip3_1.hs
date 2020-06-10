{-# htermination (unzip3 :: (List (Tup3 b a c))  ->  Tup3 (List b) (List a) (List c)) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
data Tup3 a b c = Tup3 a b c ;

foldr :: (b  ->  a  ->  a)  ->  a  ->  (List b)  ->  a;
foldr f z Nil = z;
foldr f z (Cons x xs) = f x (foldr f z xs);

unzip300 (Tup3 as bs cs) = as;

unzip301 (Tup3 as bs cs) = bs;

unzip302 (Tup3 as bs cs) = cs;

unzip30 (Tup3 a b c) vv = Tup3 (Cons a (unzip300 vv)) (Cons b (unzip301 vv)) (Cons c (unzip302 vv));

unzip3 :: (List (Tup3 c a b))  ->  Tup3 (List c) (List a) (List b);
unzip3 = foldr unzip30 (Tup3 Nil Nil Nil);

