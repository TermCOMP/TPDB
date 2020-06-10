{-# htermination (pt :: (c  ->  a)  ->  (b  ->  c)  ->  b  ->  a) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
pt :: (b  ->  a)  ->  (c  ->  b)  ->  c  ->  a;
pt f g x = f (g x);

