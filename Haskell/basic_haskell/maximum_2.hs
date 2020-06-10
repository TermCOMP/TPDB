{-# htermination (maximumMyBool :: (List MyBool)  ->  MyBool) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
foldl :: (a  ->  b  ->  a)  ->  a  ->  (List b)  ->  a;
foldl f z Nil = z;
foldl f z (Cons x xs) = foldl f (f z x) xs;

foldl1 :: (a  ->  a  ->  a)  ->  (List a)  ->  a;
foldl1 f (Cons x xs) = foldl f x xs;

ltEsMyBool :: MyBool  ->  MyBool  ->  MyBool
ltEsMyBool MyFalse MyFalse = MyTrue;
ltEsMyBool MyFalse MyTrue = MyTrue;
ltEsMyBool MyTrue MyFalse = MyFalse;
ltEsMyBool MyTrue MyTrue = MyTrue;

max0 x y MyTrue = x;

otherwise :: MyBool;
otherwise = MyTrue;

max1 x y MyTrue = y;
max1 x y MyFalse = max0 x y otherwise;

max2 x y = max1 x y (ltEsMyBool x y);

maxMyBool :: MyBool  ->  MyBool  ->  MyBool
maxMyBool x y = max2 x y;

maximumMyBool :: (List MyBool)  ->  MyBool
maximumMyBool = foldl1 maxMyBool;

