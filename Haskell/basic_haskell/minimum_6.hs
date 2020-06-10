{-# htermination (minimumOrdering :: (List Ordering)  ->  Ordering) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
data Ordering = LT  | EQ  | GT ;

foldl :: (a  ->  b  ->  a)  ->  a  ->  (List b)  ->  a;
foldl f z Nil = z;
foldl f z (Cons x xs) = foldl f (f z x) xs;

foldl1 :: (a  ->  a  ->  a)  ->  (List a)  ->  a;
foldl1 f (Cons x xs) = foldl f x xs;

ltEsOrdering :: Ordering  ->  Ordering  ->  MyBool
ltEsOrdering LT LT = MyTrue;
ltEsOrdering LT EQ = MyTrue;
ltEsOrdering LT GT = MyTrue;
ltEsOrdering EQ LT = MyFalse;
ltEsOrdering EQ EQ = MyTrue;
ltEsOrdering EQ GT = MyTrue;
ltEsOrdering GT LT = MyFalse;
ltEsOrdering GT EQ = MyFalse;
ltEsOrdering GT GT = MyTrue;

min0 x y MyTrue = y;

otherwise :: MyBool;
otherwise = MyTrue;

min1 x y MyTrue = x;
min1 x y MyFalse = min0 x y otherwise;

min2 x y = min1 x y (ltEsOrdering x y);

minOrdering :: Ordering  ->  Ordering  ->  Ordering
minOrdering x y = min2 x y;

minimumOrdering :: (List Ordering)  ->  Ordering
minimumOrdering = foldl1 minOrdering;

