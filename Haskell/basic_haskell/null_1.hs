{-# htermination (null :: (List a)  ->  MyBool) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
null :: (List a)  ->  MyBool;
null Nil = MyTrue;
null (Cons vv vw) = MyFalse;

