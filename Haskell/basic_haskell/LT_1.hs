{-# htermination (ltTup0 :: Tup0  ->  Tup0  ->  MyBool) #-} 
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

ltTup0 :: Tup0  ->  Tup0  ->  MyBool
ltTup0 x y = esEsOrdering (compareTup0 x y) LT;

