{-# htermination (primThrowException :: HugsException  ->  a) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
data HugsException = HugsException ;

primThrowException :: HugsException  ->  a;
primThrowException = primThrowException;

