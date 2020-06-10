{-# htermination (esEsMyBool :: MyBool  ->  MyBool  ->  MyBool) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
esEsMyBool :: MyBool  ->  MyBool  ->  MyBool
esEsMyBool MyFalse MyFalse = MyTrue;
esEsMyBool MyFalse MyTrue = MyFalse;
esEsMyBool MyTrue MyFalse = MyFalse;
esEsMyBool MyTrue MyTrue = MyTrue;

