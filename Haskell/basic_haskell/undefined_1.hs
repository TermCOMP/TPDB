{-# htermination (undefined :: a) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
undefined0 MyTrue = undefined;

undefined1 = undefined0 MyFalse;

undefined :: a;
undefined = undefined1;

