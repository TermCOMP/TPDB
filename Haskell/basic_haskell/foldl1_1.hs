{-# htermination (foldl1 :: (a  ->  a  ->  a)  ->  (List a)  ->  a) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
foldl :: (a  ->  b  ->  a)  ->  a  ->  (List b)  ->  a;
foldl f z Nil = z;
foldl f z (Cons x xs) = foldl f (f z x) xs;

foldl1 :: (a  ->  a  ->  a)  ->  (List a)  ->  a;
foldl1 f (Cons x xs) = foldl f x xs;

