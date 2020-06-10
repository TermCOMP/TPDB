{-# htermination (minMyBool :: MyBool  ->  MyBool  ->  MyBool) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
ltEsMyBool :: MyBool  ->  MyBool  ->  MyBool
ltEsMyBool MyFalse MyFalse = MyTrue;
ltEsMyBool MyFalse MyTrue = MyTrue;
ltEsMyBool MyTrue MyFalse = MyFalse;
ltEsMyBool MyTrue MyTrue = MyTrue;

min0 x y MyTrue = y;

otherwise :: MyBool;
otherwise = MyTrue;

min1 x y MyTrue = x;
min1 x y MyFalse = min0 x y otherwise;

min2 x y = min1 x y (ltEsMyBool x y);

minMyBool :: MyBool  ->  MyBool  ->  MyBool
minMyBool x y = min2 x y;

