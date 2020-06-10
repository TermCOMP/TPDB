{-# htermination (map :: (a  ->  b)  ->  (List a)  ->  (List b)) #-} 
import qualified Prelude 
data List a = Cons a (List a) | Nil 

map :: (b  ->  a)  ->  (List b)  ->  (List a);
map f Nil = Nil;
map f (Cons x xs) = Cons (f x) (map f xs);

