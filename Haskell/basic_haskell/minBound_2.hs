{-# htermination (minBoundMyBool :: MyBool) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
minBoundMyBool :: MyBool
minBoundMyBool = MyFalse;

