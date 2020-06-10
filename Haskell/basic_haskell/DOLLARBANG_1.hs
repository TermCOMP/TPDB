{-# htermination (dsEm :: (b  ->  a)  ->  b  ->  a) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
data WHNF a = WHNF a ;

enforceWHNF :: WHNF a  ->  b  ->  b;
enforceWHNF (WHNF x) y = y;

seq :: a  ->  b  ->  b;
seq x y = enforceWHNF (WHNF x) y;

dsEm :: (b  ->  a)  ->  b  ->  a;
dsEm f x = seq x (f x);

