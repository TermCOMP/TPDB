{-# htermination (cycle :: (List a)  ->  (List a)) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
psPs :: (List a)  ->  (List a)  ->  (List a);
psPs Nil ys = ys;
psPs (Cons x xs) ys = Cons x (psPs xs ys);

cycleXs' vv = psPs vv (cycleXs' vv);

stop :: MyBool  ->  a;
stop MyFalse = stop MyFalse;

error :: a;
error = stop MyTrue;

cycle :: (List a)  ->  (List a);
cycle Nil = error;
cycle xs = cycleXs' xs;

