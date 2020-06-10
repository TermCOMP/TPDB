{-# htermination (ltMyBool :: MyBool  ->  MyBool  ->  MyBool) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
data Ordering = LT  | EQ  | GT ;

compare0 x y MyTrue = GT;

otherwise :: MyBool;
otherwise = MyTrue;

compare1 x y MyTrue = LT;
compare1 x y MyFalse = compare0 x y otherwise;

ltEsMyBool :: MyBool  ->  MyBool  ->  MyBool
ltEsMyBool MyFalse MyFalse = MyTrue;
ltEsMyBool MyFalse MyTrue = MyTrue;
ltEsMyBool MyTrue MyFalse = MyFalse;
ltEsMyBool MyTrue MyTrue = MyTrue;

compare2 x y MyTrue = EQ;
compare2 x y MyFalse = compare1 x y (ltEsMyBool x y);

esEsMyBool :: MyBool  ->  MyBool  ->  MyBool
esEsMyBool MyFalse MyFalse = MyTrue;
esEsMyBool MyFalse MyTrue = MyFalse;
esEsMyBool MyTrue MyFalse = MyFalse;
esEsMyBool MyTrue MyTrue = MyTrue;

compare3 x y = compare2 x y (esEsMyBool x y);

compareMyBool :: MyBool  ->  MyBool  ->  Ordering
compareMyBool x y = compare3 x y;

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

ltMyBool :: MyBool  ->  MyBool  ->  MyBool
ltMyBool x y = esEsOrdering (compareMyBool x y) LT;

