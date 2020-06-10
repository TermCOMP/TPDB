{-# htermination (scanl1 :: (a  ->  a  ->  a)  ->  (List a)  ->  (List a)) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
scanl0 f q Nil = Nil;
scanl0 f q (Cons x xs) = scanl f (f q x) xs;

scanl :: (a  ->  b  ->  a)  ->  a  ->  (List b)  ->  (List a);
scanl f q xs = Cons q (scanl0 f q xs);

scanl1 :: (a  ->  a  ->  a)  ->  (List a)  ->  (List a);
scanl1 vv Nil = Nil;
scanl1 f (Cons x xs) = scanl f x xs;

