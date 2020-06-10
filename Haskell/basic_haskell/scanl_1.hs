{-# htermination (scanl :: (a  ->  b  ->  a)  ->  a  ->  (List b)  ->  (List a)) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
scanl0 f q Nil = Nil;
scanl0 f q (Cons x xs) = scanl f (f q x) xs;

scanl :: (b  ->  a  ->  b)  ->  b  ->  (List a)  ->  (List b);
scanl f q xs = Cons q (scanl0 f q xs);

