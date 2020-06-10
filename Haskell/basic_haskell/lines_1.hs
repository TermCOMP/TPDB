{-# htermination (lines :: (List Char)  ->  (List (List Char))) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
data Tup2 a b = Tup2 a b ;

data Char = Char MyInt ;

data MyInt = Pos Nat  | Neg Nat ;

data Nat = Succ Nat  | Zero ;

linesL0 xw (Tup2 l vv) = l;

not :: MyBool  ->  MyBool;
not MyTrue = MyFalse;
not MyFalse = MyTrue;

pt :: (b  ->  c)  ->  (a  ->  b)  ->  a  ->  c;
pt f g x = f (g x);

otherwise :: MyBool;
otherwise = MyTrue;

span2Span0 xx xy p wu wv MyTrue = Tup2 Nil (Cons wu wv);

span2Vu43 xx xy = span xx xy;

span2Ys0 xx xy (Tup2 ys ww) = ys;

span2Ys xx xy = span2Ys0 xx xy (span2Vu43 xx xy);

span2Zs0 xx xy (Tup2 wx zs) = zs;

span2Zs xx xy = span2Zs0 xx xy (span2Vu43 xx xy);

span2Span1 xx xy p wu wv MyTrue = Tup2 (Cons wu (span2Ys xx xy)) (span2Zs xx xy);
span2Span1 xx xy p wu wv MyFalse = span2Span0 xx xy p wu wv otherwise;

span2 p (Cons wu wv) = span2Span1 p wv p wu wv (p wu);

span3 p Nil = Tup2 Nil Nil;
span3 xu xv = span2 xu xv;

span :: (a  ->  MyBool)  ->  (List a)  ->  Tup2 (List a) (List a);
span p Nil = span3 p Nil;
span p (Cons wu wv) = span2 p (Cons wu wv);

break :: (a  ->  MyBool)  ->  (List a)  ->  Tup2 (List a) (List a);
break p = span (pt not p);

primEqNat :: Nat  ->  Nat  ->  MyBool;
primEqNat Zero Zero = MyTrue;
primEqNat Zero (Succ y) = MyFalse;
primEqNat (Succ x) Zero = MyFalse;
primEqNat (Succ x) (Succ y) = primEqNat x y;

primEqInt :: MyInt  ->  MyInt  ->  MyBool;
primEqInt (Pos (Succ x)) (Pos (Succ y)) = primEqNat x y;
primEqInt (Neg (Succ x)) (Neg (Succ y)) = primEqNat x y;
primEqInt (Pos Zero) (Neg Zero) = MyTrue;
primEqInt (Neg Zero) (Pos Zero) = MyTrue;
primEqInt (Neg Zero) (Neg Zero) = MyTrue;
primEqInt (Pos Zero) (Pos Zero) = MyTrue;
primEqInt vy vz = MyFalse;

primEqChar :: Char  ->  Char  ->  MyBool;
primEqChar (Char x) (Char y) = primEqInt x y;

esEsChar :: Char  ->  Char  ->  MyBool
esEsChar = primEqChar;

linesVu44 xw = break (esEsChar (Char (Pos (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ Zero))))))))))))) xw;

linesL xw = linesL0 xw (linesVu44 xw);

linesLines0 xw Nil = Nil;
linesLines0 xw (Cons vw s'') = lines s'';

linesS'0 xw (Tup2 vx s') = s';

linesS' xw = linesS'0 xw (linesVu44 xw);

lines :: (List Char)  ->  (List (List Char));
lines Nil = Nil;
lines s = Cons (linesL s) (linesLines0 s (linesS' s));

