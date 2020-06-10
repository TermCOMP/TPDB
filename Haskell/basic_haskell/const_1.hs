{-# htermination (const :: b  ->  a  ->  b) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
const :: b  ->  a  ->  b;
const k vv = k;

