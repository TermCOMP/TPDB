{-# htermination (zipWith :: (b  ->  c  ->  a)  ->  (List b)  ->  (List c)  ->  (List a)) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
zipWith :: (a  ->  b  ->  c)  ->  (List a)  ->  (List b)  ->  (List c);
zipWith z (Cons a as) (Cons b bs) = Cons (z a b) (zipWith z as bs);
zipWith vv vw vx = Nil;

