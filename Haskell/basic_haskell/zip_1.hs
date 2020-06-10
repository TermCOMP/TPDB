{-# htermination (zip :: (List b)  ->  (List a)  ->  (List (Tup2 b a))) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
data Tup2 a b = Tup2 a b ;

zip0 a b = Tup2 a b;

zipWith :: (b  ->  c  ->  a)  ->  (List b)  ->  (List c)  ->  (List a);
zipWith z (Cons a as) (Cons b bs) = Cons (z a b) (zipWith z as bs);
zipWith vv vw vx = Nil;

zip :: (List b)  ->  (List a)  ->  (List (Tup2 b a));
zip = zipWith zip0;

