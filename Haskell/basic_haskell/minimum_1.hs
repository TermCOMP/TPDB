{-# htermination (minimumTup0 :: (List Tup0)  ->  Tup0) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
data Tup0 = Tup0 ;

data Ordering = LT  | EQ  | GT ;

foldl :: (a  ->  b  ->  a)  ->  a  ->  (List b)  ->  a;
foldl f z Nil = z;
foldl f z (Cons x xs) = foldl f (f z x) xs;

foldl1 :: (a  ->  a  ->  a)  ->  (List a)  ->  a;
foldl1 f (Cons x xs) = foldl f x xs;

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

min0 x y MyTrue = y;

otherwise :: MyBool;
otherwise = MyTrue;

min1 x y MyTrue = x;
min1 x y MyFalse = min0 x y otherwise;

min2 x y = min1 x y (ltEsTup0 x y);

minTup0 :: Tup0  ->  Tup0  ->  Tup0
minTup0 x y = min2 x y;

minimumTup0 :: (List Tup0)  ->  Tup0
minimumTup0 = foldl1 minTup0;

