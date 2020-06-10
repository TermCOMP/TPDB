{-# htermination (showSigned :: (Ratio MyInt  ->  (List Char)  ->  (List Char))  ->  MyInt  ->  Ratio MyInt  ->  (List Char)  ->  (List Char)) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
data Char = Char MyInt ;

data MyInt = Pos Nat  | Neg Nat ;

data Nat = Succ Nat  | Zero ;

data Ordering = LT  | EQ  | GT ;

data Ratio a = CnPc a a;

fromIntMyInt :: MyInt  ->  MyInt
fromIntMyInt x = x;

intToRatio x = CnPc (fromIntMyInt x) (fromIntMyInt (Pos (Succ Zero)));

fromIntRatio :: MyInt  ->  Ratio MyInt
fromIntRatio = intToRatio;

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

primPlusNat :: Nat  ->  Nat  ->  Nat;
primPlusNat Zero Zero = Zero;
primPlusNat Zero (Succ y) = Succ y;
primPlusNat (Succ x) Zero = Succ x;
primPlusNat (Succ x) (Succ y) = Succ (Succ (primPlusNat x y));

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

compareRatio :: Ratio MyInt  ->  Ratio MyInt  ->  Ordering
compareRatio (CnPc x y) (CnPc x' y') = compareMyInt (srMyInt x y') (srMyInt x' y);

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

ltRatio :: Ratio MyInt  ->  Ratio MyInt  ->  MyBool
ltRatio x y = esEsOrdering (compareRatio x y) LT;

gtMyInt :: MyInt  ->  MyInt  ->  MyBool
gtMyInt x y = esEsOrdering (compareMyInt x y) GT;

primNegInt :: MyInt  ->  MyInt;
primNegInt (Pos x) = Neg x;
primNegInt (Neg x) = Pos x;

negateMyInt :: MyInt  ->  MyInt
negateMyInt = primNegInt;

negateRatio :: Ratio MyInt  ->  Ratio MyInt
negateRatio (CnPc x y) = CnPc (negateMyInt x) y;

pt :: (a  ->  c)  ->  (b  ->  a)  ->  b  ->  c;
pt f g x = f (g x);

showChar :: Char  ->  (List Char)  ->  (List Char);
showChar = Cons;

showParen0 p MyTrue = pt (showChar (Char (Pos (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ Zero))))))))))))))))))))))))))))))))))))))))))) (pt p (showChar (Char (Pos (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ Zero)))))))))))))))))))))))))))))))))))))))))))));
showParen0 p MyFalse = p;

showParen :: MyBool  ->  ((List Char)  ->  (List Char))  ->  (List Char)  ->  (List Char);
showParen b p = showParen0 p b;

showSigned0 p showPos x MyTrue = showParen (gtMyInt p (Pos (Succ (Succ (Succ (Succ (Succ (Succ Zero)))))))) (pt (showChar (Char (Pos (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ Zero)))))))))))))))))))))))))))))))))))))))))))))))) (showPos (negateRatio x)));
showSigned0 p showPos x MyFalse = showPos x;

showSigned showPos p x = showSigned0 p showPos x (ltRatio x (fromIntRatio (Pos Zero)));

