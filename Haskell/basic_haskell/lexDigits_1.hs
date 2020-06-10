{-# htermination (lexDigits :: (List Char)  ->  (List (Tup2 (List Char) (List Char)))) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
data Tup2 a b = Tup2 a b ;

data Char = Char MyInt ;

data MyInt = Pos Nat  | Neg Nat ;

data Nat = Succ Nat  | Zero ;

data Ordering = LT  | EQ  | GT ;

asAs :: MyBool  ->  MyBool  ->  MyBool;
asAs MyFalse x = MyFalse;
asAs MyTrue x = x;

primCmpNat :: Nat  ->  Nat  ->  Ordering;
primCmpNat Zero Zero = EQ;
primCmpNat Zero (Succ y) = LT;
primCmpNat (Succ x) Zero = GT;
primCmpNat (Succ x) (Succ y) = primCmpNat x y;

primCmpInt :: MyInt  ->  MyInt  ->  Ordering;
primCmpInt (Pos Zero) (Pos Zero) = EQ;
primCmpInt (Pos Zero) (Neg Zero) = EQ;
primCmpInt (Neg Zero) (Pos Zero) = EQ;
primCmpInt (Neg Zero) (Neg Zero) = EQ;
primCmpInt (Pos x) (Pos y) = primCmpNat x y;
primCmpInt (Pos x) (Neg y) = GT;
primCmpInt (Neg x) (Pos y) = LT;
primCmpInt (Neg x) (Neg y) = primCmpNat y x;

primCmpChar :: Char  ->  Char  ->  Ordering;
primCmpChar (Char x) (Char y) = primCmpInt x y;

compareChar :: Char  ->  Char  ->  Ordering
compareChar = primCmpChar;

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

gtEsChar :: Char  ->  Char  ->  MyBool
gtEsChar x y = fsEsOrdering (compareChar x y) LT;

ltEsChar :: Char  ->  Char  ->  MyBool
ltEsChar x y = fsEsOrdering (compareChar x y) GT;

isDigit :: Char  ->  MyBool;
isDigit c = asAs (gtEsChar c (Char (Pos (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ Zero))))))))))))))))))))))))))))))))))))))))))))))))))) (ltEsChar c (Char (Pos (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ Zero))))))))))))))))))))))))))))))))))))))))))))))))))))))))))));

foldr :: (a  ->  b  ->  b)  ->  b  ->  (List a)  ->  b;
foldr f z Nil = z;
foldr f z (Cons x xs) = f x (foldr f z xs);

psPs :: (List a)  ->  (List a)  ->  (List a);
psPs Nil ys = ys;
psPs (Cons x xs) ys = Cons x (psPs xs ys);

concat :: (List (List a))  ->  (List a);
concat = foldr psPs Nil;

map :: (a  ->  b)  ->  (List a)  ->  (List b);
map f Nil = Nil;
map f (Cons x xs) = Cons (f x) (map f xs);

pt :: (c  ->  a)  ->  (b  ->  c)  ->  b  ->  a;
pt f g x = f (g x);

concatMap :: (b  ->  (List a))  ->  (List b)  ->  (List a);
concatMap f = pt concat (map f);

nonnull00 (Tup2 (Cons vx vy) t) = Cons (Tup2 (Cons vx vy) t) Nil;
nonnull00 vz = Nil;

nonnull0 vu68 = nonnull00 vu68;

otherwise :: MyBool;
otherwise = MyTrue;

span2Span0 xw xx p wu wv MyTrue = Tup2 Nil (Cons wu wv);

span2Vu43 xw xx = span xw xx;

span2Ys0 xw xx (Tup2 ys ww) = ys;

span2Ys xw xx = span2Ys0 xw xx (span2Vu43 xw xx);

span2Zs0 xw xx (Tup2 wx zs) = zs;

span2Zs xw xx = span2Zs0 xw xx (span2Vu43 xw xx);

span2Span1 xw xx p wu wv MyTrue = Tup2 (Cons wu (span2Ys xw xx)) (span2Zs xw xx);
span2Span1 xw xx p wu wv MyFalse = span2Span0 xw xx p wu wv otherwise;

span2 p (Cons wu wv) = span2Span1 p wv p wu wv (p wu);

span3 p Nil = Tup2 Nil Nil;
span3 xu xv = span2 xu xv;

span :: (a  ->  MyBool)  ->  (List a)  ->  Tup2 (List a) (List a);
span p Nil = span3 p Nil;
span p (Cons wu wv) = span2 p (Cons wu wv);

nonnull :: (Char  ->  MyBool)  ->  (List Char)  ->  (List (Tup2 (List Char) (List Char)));
nonnull p s = concatMap nonnull0 (Cons (span p s) Nil);

lexDigits :: (List Char)  ->  (List (Tup2 (List Char) (List Char)));
lexDigits = nonnull isDigit;

