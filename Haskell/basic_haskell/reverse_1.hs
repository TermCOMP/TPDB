{-# htermination (reverse :: (List a)  ->  (List a)) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
flip :: (c  ->  b  ->  a)  ->  b  ->  c  ->  a;
flip f x y = f y x;

foldl :: (a  ->  b  ->  a)  ->  a  ->  (List b)  ->  a;
foldl f z Nil = z;
foldl f z (Cons x xs) = foldl f (f z x) xs;

reverse :: (List a)  ->  (List a);
reverse = foldl (flip Cons) Nil;

