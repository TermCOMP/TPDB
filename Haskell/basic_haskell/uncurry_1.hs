{-# htermination (uncurry :: (c  ->  b  ->  a)  ->  Tup2 c b  ->  a) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
data Tup2 a b = Tup2 a b ;

fst :: Tup2 b a  ->  b;
fst (Tup2 x vw) = x;

snd :: Tup2 a b  ->  b;
snd (Tup2 vv y) = y;

uncurry :: (c  ->  b  ->  a)  ->  Tup2 c b  ->  a;
uncurry f p = f (fst p) (snd p);

