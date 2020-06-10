{-# htermination (maxBoundMyBool :: MyBool) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
maxBoundMyBool :: MyBool
maxBoundMyBool = MyTrue;

