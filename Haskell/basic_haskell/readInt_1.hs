{-# htermination (readInt :: MyInt  ->  (Char  ->  MyBool)  ->  (Char  ->  MyInt)  ->  (List Char)  ->  (List (Tup2 MyInt (List Char)))) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
data Tup2 a b = Tup2 a b ;

data Char = Char MyInt ;

data Integer = Integer MyInt ;

data MyInt = Pos Nat  | Neg Nat ;

data Nat = Succ Nat  | Zero ;

foldr :: (a  ->  b  ->  b)  ->  b  ->  (List a)  ->  b;
foldr f z Nil = z;
foldr f z (Cons x xs) = f x (foldr f z xs);

psPs :: (List a)  ->  (List a)  ->  (List a);
psPs Nil ys = ys;
psPs (Cons x xs) ys = Cons x (psPs xs ys);

concat :: (List (List a))  ->  (List a);
concat = foldr psPs Nil;

map :: (b  ->  a)  ->  (List b)  ->  (List a);
map f Nil = Nil;
map f (Cons x xs) = Cons (f x) (map f xs);

pt :: (c  ->  b)  ->  (a  ->  c)  ->  a  ->  b;
pt f g x = f (g x);

concatMap :: (b  ->  (List a))  ->  (List b)  ->  (List a);
concatMap f = pt concat (map f);

nonnull00 (Tup2 (Cons vy vz) t) = Cons (Tup2 (Cons vy vz) t) Nil;
nonnull00 wu = Nil;

nonnull0 vu68 = nonnull00 vu68;

otherwise :: MyBool;
otherwise = MyTrue;

span2Span0 xx xy p wv ww MyTrue = Tup2 Nil (Cons wv ww);

span2Vu43 xx xy = span xx xy;

span2Ys0 xx xy (Tup2 ys wx) = ys;

span2Ys xx xy = span2Ys0 xx xy (span2Vu43 xx xy);

span2Zs0 xx xy (Tup2 wy zs) = zs;

span2Zs xx xy = span2Zs0 xx xy (span2Vu43 xx xy);

span2Span1 xx xy p wv ww MyTrue = Tup2 (Cons wv (span2Ys xx xy)) (span2Zs xx xy);
span2Span1 xx xy p wv ww MyFalse = span2Span0 xx xy p wv ww otherwise;

span2 p (Cons wv ww) = span2Span1 p ww p wv ww (p wv);

span3 p Nil = Tup2 Nil Nil;
span3 xv xw = span2 xv xw;

span :: (a  ->  MyBool)  ->  (List a)  ->  Tup2 (List a) (List a);
span p Nil = span3 p Nil;
span p (Cons wv ww) = span2 p (Cons wv ww);

nonnull :: (Char  ->  MyBool)  ->  (List Char)  ->  (List (Tup2 (List Char) (List Char)));
nonnull p s = concatMap nonnull0 (Cons (span p s) Nil);

foldl :: (a  ->  b  ->  a)  ->  a  ->  (List b)  ->  a;
foldl f z Nil = z;
foldl f z (Cons x xs) = foldl f (f z x) xs;

foldl1 :: (a  ->  a  ->  a)  ->  (List a)  ->  a;
foldl1 f (Cons x xs) = foldl f x xs;

fromIntegerMyInt :: Integer  ->  MyInt
fromIntegerMyInt (Integer x) = x;

toIntegerMyInt :: MyInt  ->  Integer
toIntegerMyInt x = Integer x;

fromIntegral = pt fromIntegerMyInt toIntegerMyInt;

primMinusNat :: Nat  ->  Nat  ->  MyInt;
primMinusNat Zero Zero = Pos Zero;
primMinusNat Zero (Succ y) = Neg (Succ y);
primMinusNat (Succ x) Zero = Pos (Succ x);
primMinusNat (Succ x) (Succ y) = primMinusNat x y;

primPlusNat :: Nat  ->  Nat  ->  Nat;
primPlusNat Zero Zero = Zero;
primPlusNat Zero (Succ y) = Succ y;
primPlusNat (Succ x) Zero = Succ x;
primPlusNat (Succ x) (Succ y) = Succ (Succ (primPlusNat x y));

primPlusInt :: MyInt  ->  MyInt  ->  MyInt;
primPlusInt (Pos x) (Neg y) = primMinusNat x y;
primPlusInt (Neg x) (Pos y) = primMinusNat y x;
primPlusInt (Neg x) (Neg y) = Neg (primPlusNat x y);
primPlusInt (Pos x) (Pos y) = Pos (primPlusNat x y);

psMyInt :: MyInt  ->  MyInt  ->  MyInt
psMyInt = primPlusInt;

primMulNat :: Nat  ->  Nat  ->  Nat;
primMulNat Zero Zero = Zero;
primMulNat Zero (Succ y) = Zero;
primMulNat (Succ x) Zero = Zero;
primMulNat (Succ x) (Succ y) = primPlusNat (primMulNat x (Succ y)) (Succ y);

primMulInt :: MyInt  ->  MyInt  ->  MyInt;
primMulInt (Pos x) (Pos y) = Pos (primMulNat x y);
primMulInt (Pos x) (Neg y) = Neg (primMulNat x y);
primMulInt (Neg x) (Pos y) = Neg (primMulNat x y);
primMulInt (Neg x) (Neg y) = Pos (primMulNat x y);

srMyInt :: MyInt  ->  MyInt  ->  MyInt
srMyInt = primMulInt;

readInt0 radix n d = psMyInt (srMyInt n radix) d;

readInt10 radix digToInt (Tup2 ds r) = Cons (Tup2 (foldl1 (readInt0 radix) (map (pt fromIntegral digToInt) ds)) r) Nil;
readInt10 radix digToInt vv = Nil;

readInt1 radix digToInt vu77 = readInt10 radix digToInt vu77;

readInt radix isDig digToInt s = concatMap (readInt1 radix digToInt) (nonnull isDig s);

