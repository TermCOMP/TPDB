{-# htermination (asTypeOf :: a  ->  a  ->  a) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
const :: a  ->  b  ->  a;
const k vv = k;

asTypeOf :: a  ->  a  ->  a;
asTypeOf = const;

