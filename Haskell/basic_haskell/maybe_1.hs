{-# htermination (maybe :: a  ->  (b  ->  a)  ->  Maybe b  ->  a) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
data Maybe a = Nothing  | Just a ;

maybe :: b  ->  (a  ->  b)  ->  Maybe a  ->  b;
maybe n f Nothing = n;
maybe n f (Just x) = f x;

