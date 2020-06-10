{-# htermination (zipWith3 :: (a  ->  b  ->  c  ->  d)  ->  (List a)  ->  (List b)  ->  (List c)  ->  (List d)) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
zipWith3 :: (d  ->  c  ->  a  ->  b)  ->  (List d)  ->  (List c)  ->  (List a)  ->  (List b);
zipWith3 z (Cons a as) (Cons b bs) (Cons c cs) = Cons (z a b c) (zipWith3 z as bs cs);
zipWith3 vv vw vx vy = Nil;

