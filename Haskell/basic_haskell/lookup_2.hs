{-# htermination (lookup :: MyBool  ->  (List (Tup2 MyBool a))  ->  Maybe a) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
data Tup2 a b = Tup2 a b ;

data Maybe a = Nothing  | Just a ;

esEsMyBool :: MyBool  ->  MyBool  ->  MyBool
esEsMyBool MyFalse MyFalse = MyTrue;
esEsMyBool MyFalse MyTrue = MyFalse;
esEsMyBool MyTrue MyFalse = MyFalse;
esEsMyBool MyTrue MyTrue = MyTrue;

lookup0 k x y xys MyTrue = lookup k xys;

otherwise :: MyBool;
otherwise = MyTrue;

lookup1 k x y xys MyTrue = Just y;
lookup1 k x y xys MyFalse = lookup0 k x y xys otherwise;

lookup2 k (Cons (Tup2 x y) xys) = lookup1 k x y xys (esEsMyBool k x);

lookup3 k Nil = Nothing;
lookup3 vy vz = lookup2 vy vz;

lookup k Nil = lookup3 k Nil;
lookup k (Cons (Tup2 x y) xys) = lookup2 k (Cons (Tup2 x y) xys);

