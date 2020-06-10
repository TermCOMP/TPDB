{-# htermination (maxTup0 :: Tup0  ->  Tup0  ->  Tup0) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
data Tup0 = Tup0 ;

data Ordering = LT  | EQ  | GT ;

compareTup0 :: Tup0  ->  Tup0  ->  Ordering
compareTup0 Tup0 Tup0 = EQ;

esEsOrdering :: Ordering  ->  Ordering  ->  MyBool
esEsOrdering LT LT = MyTrue;
esEsOrdering LT EQ = MyFalse;
esEsOrdering LT GT = MyFalse;
esEsOrdering EQ LT = MyFalse;
esEsOrdering EQ EQ = MyTrue;
esEsOrdering EQ GT = MyFalse;
esEsOrdering GT LT = MyFalse;
esEsOrdering GT EQ = MyFalse;
esEsOrdering GT GT = MyTrue;

not :: MyBool  ->  MyBool;
not MyTrue = MyFalse;
not MyFalse = MyTrue;

fsEsOrdering :: Ordering  ->  Ordering  ->  MyBool
fsEsOrdering x y = not (esEsOrdering x y);

ltEsTup0 :: Tup0  ->  Tup0  ->  MyBool
ltEsTup0 x y = fsEsOrdering (compareTup0 x y) GT;

max0 x y MyTrue = x;

otherwise :: MyBool;
otherwise = MyTrue;

max1 x y MyTrue = y;
max1 x y MyFalse = max0 x y otherwise;

max2 x y = max1 x y (ltEsTup0 x y);

maxTup0 :: Tup0  ->  Tup0  ->  Tup0
maxTup0 x y = max2 x y;

