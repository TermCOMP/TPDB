{-# htermination (until :: (a  ->  MyBool)  ->  (a  ->  a)  ->  a  ->  a) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
until0 x p f MyTrue = x;
until0 x p f MyFalse = until p f (f x);

until :: (a  ->  MyBool)  ->  (a  ->  a)  ->  a  ->  a;
until p f x = until0 x p f (p x);

