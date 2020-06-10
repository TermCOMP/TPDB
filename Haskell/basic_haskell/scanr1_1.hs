{-# htermination (scanr1 :: (a  ->  a  ->  a)  ->  (List a)  ->  (List a)) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
scanr1Q1 vw vx (Cons q vv) = q;

scanr1Vu41 vw vx = scanr1 vw vx;

scanr1Q vw vx = scanr1Q1 vw vx (scanr1Vu41 vw vx);

scanr1Qs0 vw vx qs = qs;

scanr1Qs vw vx = scanr1Qs0 vw vx (scanr1Vu41 vw vx);

scanr1 :: (a  ->  a  ->  a)  ->  (List a)  ->  (List a);
scanr1 f Nil = Nil;
scanr1 f (Cons x Nil) = Cons x Nil;
scanr1 f (Cons x xs) = Cons (f x (scanr1Q f xs)) (scanr1Qs f xs);

