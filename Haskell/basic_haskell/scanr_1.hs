{-# htermination (scanr :: (b  ->  a  ->  a)  ->  a  ->  (List b)  ->  (List a)) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
scanrQ1 vw vx vy (Cons q vv) = q;

scanrVu40 vw vx vy = scanr vw vx vy;

scanrQ vw vx vy = scanrQ1 vw vx vy (scanrVu40 vw vx vy);

scanrQs0 vw vx vy qs = qs;

scanrQs vw vx vy = scanrQs0 vw vx vy (scanrVu40 vw vx vy);

scanr :: (b  ->  a  ->  a)  ->  a  ->  (List b)  ->  (List a);
scanr f q0 Nil = Cons q0 Nil;
scanr f q0 (Cons x xs) = Cons (f x (scanrQ f q0 xs)) (scanrQs f q0 xs);

