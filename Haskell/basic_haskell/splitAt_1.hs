{-# htermination (splitAt :: MyInt  ->  (List a)  ->  Tup2 (List a) (List a)) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
data Tup2 a b = Tup2 a b ;

data MyInt = Pos Nat  | Neg Nat ;

data Nat = Succ Nat  | Zero ;

data Ordering = LT  | EQ  | GT ;

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

primMinusInt :: MyInt  ->  MyInt  ->  MyInt;
primMinusInt (Pos x) (Neg y) = Pos (primPlusNat x y);
primMinusInt (Neg x) (Pos y) = Neg (primPlusNat x y);
primMinusInt (Neg x) (Neg y) = primMinusNat y x;
primMinusInt (Pos x) (Pos y) = primMinusNat x y;

msMyInt :: MyInt  ->  MyInt  ->  MyInt
msMyInt = primMinusInt;

splitAt0Vu42 wy wz = splitAt (msMyInt wy (Pos (Succ Zero))) wz;

splitAt0Xs'0 wy wz (Tup2 xs' vx) = xs';

splitAt0Xs' wy wz = splitAt0Xs'0 wy wz (splitAt0Vu42 wy wz);

splitAt0Xs''0 wy wz (Tup2 vw xs'') = xs'';

splitAt0Xs'' wy wz = splitAt0Xs''0 wy wz (splitAt0Vu42 wy wz);

splitAt0 n (Cons x xs) = Tup2 (Cons x (splitAt0Xs' n xs)) (splitAt0Xs'' n xs);

splitAt1 vv Nil = Tup2 Nil Nil;
splitAt1 wu wv = splitAt0 wu wv;

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

compareMyInt :: MyInt  ->  MyInt  ->  Ordering
compareMyInt = primCmpInt;

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

ltEsMyInt :: MyInt  ->  MyInt  ->  MyBool
ltEsMyInt x y = fsEsOrdering (compareMyInt x y) GT;

splitAt2 n xs MyTrue = Tup2 Nil xs;
splitAt2 n xs MyFalse = splitAt1 n xs;

splitAt3 n xs = splitAt2 n xs (ltEsMyInt n (Pos Zero));
splitAt3 ww wx = splitAt1 ww wx;

splitAt :: MyInt  ->  (List a)  ->  Tup2 (List a) (List a);
splitAt n xs = splitAt3 n xs;
splitAt vv Nil = splitAt1 vv Nil;
splitAt n (Cons x xs) = splitAt0 n (Cons x xs);

