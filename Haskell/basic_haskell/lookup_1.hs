{-# htermination (lookup :: Tup0  ->  (List (Tup2 Tup0 a))  ->  Maybe a) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
data Tup0 = Tup0 ;

data Tup2 a b = Tup2 a b ;

data Maybe a = Nothing  | Just a ;

esEsTup0 :: Tup0  ->  Tup0  ->  MyBool
esEsTup0 Tup0 Tup0 = MyTrue;

lookup0 k x y xys MyTrue = lookup k xys;

otherwise :: MyBool;
otherwise = MyTrue;

lookup1 k x y xys MyTrue = Just y;
lookup1 k x y xys MyFalse = lookup0 k x y xys otherwise;

lookup2 k (Cons (Tup2 x y) xys) = lookup1 k x y xys (esEsTup0 k x);

lookup3 k Nil = Nothing;
lookup3 vy vz = lookup2 vy vz;

lookup k Nil = lookup3 k Nil;
lookup k (Cons (Tup2 x y) xys) = lookup2 k (Cons (Tup2 x y) xys);

