{-# htermination (init :: (List a)  ->  (List a)) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
init :: (List a)  ->  (List a);
init (Cons x Nil) = Nil;
init (Cons x xs) = Cons x (init xs);

