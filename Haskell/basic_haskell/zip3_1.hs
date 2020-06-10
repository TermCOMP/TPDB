{-# htermination (zip3 :: (List c)  ->  (List b)  ->  (List a)  ->  (List (Tup3 c b a))) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
data Tup3 a b c = Tup3 a b c ;

zip30 a b c = Tup3 a b c;

zipWith3 :: (a  ->  d  ->  b  ->  c)  ->  (List a)  ->  (List d)  ->  (List b)  ->  (List c);
zipWith3 z (Cons a as) (Cons b bs) (Cons c cs) = Cons (z a b c) (zipWith3 z as bs cs);
zipWith3 vv vw vx vy = Nil;

zip3 :: (List c)  ->  (List a)  ->  (List b)  ->  (List (Tup3 c a b));
zip3 = zipWith3 zip30;

