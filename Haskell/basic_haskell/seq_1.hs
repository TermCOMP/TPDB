{-# htermination (seq :: b  ->  a  ->  a) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
data WHNF a = WHNF a ;

enforceWHNF :: WHNF b  ->  a  ->  a;
enforceWHNF (WHNF x) y = y;

seq :: a  ->  b  ->  b;
seq x y = enforceWHNF (WHNF x) y;

