{-# htermination (fmapMaybe :: (a  ->  b)  ->  Maybe a  ->  Maybe b) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
data Maybe a = Nothing  | Just a ;

fmapMaybe :: (c  ->  b)  ->  Maybe c  ->  Maybe b
fmapMaybe f Nothing = Nothing;
fmapMaybe f (Just x) = Just (f x);

