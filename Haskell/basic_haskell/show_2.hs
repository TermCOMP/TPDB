{-# htermination (showRatio :: Ratio MyInt  ->  (List Char)) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
data Char = Char MyInt ;

data MyInt = Pos Nat  | Neg Nat ;

data Nat = Succ Nat  | Zero ;

data Ordering = LT  | EQ  | GT ;

data Ratio a = CnPc a a;

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

gtMyInt :: MyInt  ->  MyInt  ->  MyBool
gtMyInt x y = esEsOrdering (compareMyInt x y) GT;

pt :: (b  ->  a)  ->  (c  ->  b)  ->  c  ->  a;
pt f g x = f (g x);

showChar :: Char  ->  (List Char)  ->  (List Char);
showChar = Cons;

showParen0 p MyTrue = pt (showChar (Char (Pos (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ Zero))))))))))))))))))))))))))))))))))))))))))) (pt p (showChar (Char (Pos (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ Zero)))))))))))))))))))))))))))))))))))))))))))));
showParen0 p MyFalse = p;

showParen :: MyBool  ->  ((List Char)  ->  (List Char))  ->  (List Char)  ->  (List Char);
showParen b p = showParen0 p b;

psPs :: (List a)  ->  (List a)  ->  (List a);
psPs Nil ys = ys;
psPs (Cons x xs) ys = Cons x (psPs xs ys);

showString :: (List Char)  ->  (List Char)  ->  (List Char);
showString = psPs;

stop :: MyBool  ->  a;
stop MyFalse = stop MyFalse;

error :: a;
error = stop MyTrue;

primMinusNatS :: Nat  ->  Nat  ->  Nat;
primMinusNatS (Succ x) (Succ y) = primMinusNatS x y;
primMinusNatS Zero (Succ y) = Zero;
primMinusNatS x Zero = x;

primDivNatP :: Nat  ->  Nat  ->  Nat;
primDivNatP Zero Zero = error;
primDivNatP (Succ x) Zero = error;
primDivNatP (Succ x) (Succ y) = Succ (primDivNatP (primMinusNatS x y) (Succ y));
primDivNatP Zero (Succ x) = Zero;

primDivNatS0 x y MyTrue = Succ (primDivNatS (primMinusNatS x y) (Succ y));
primDivNatS0 x y MyFalse = Zero;

primGEqNatS :: Nat  ->  Nat  ->  MyBool;
primGEqNatS (Succ x) Zero = MyTrue;
primGEqNatS (Succ x) (Succ y) = primGEqNatS x y;
primGEqNatS Zero (Succ x) = MyFalse;
primGEqNatS Zero Zero = MyTrue;

primDivNatS :: Nat  ->  Nat  ->  Nat;
primDivNatS Zero Zero = error;
primDivNatS (Succ x) Zero = error;
primDivNatS (Succ x) (Succ y) = primDivNatS0 x y (primGEqNatS x y);
primDivNatS Zero (Succ x) = Zero;

primDivInt :: MyInt  ->  MyInt  ->  MyInt;
primDivInt (Pos x) (Pos (Succ y)) = Pos (primDivNatS x (Succ y));
primDivInt (Pos x) (Neg (Succ y)) = Neg (primDivNatP x (Succ y));
primDivInt (Neg x) (Pos (Succ y)) = Neg (primDivNatP x (Succ y));
primDivInt (Neg x) (Neg (Succ y)) = Pos (primDivNatS x (Succ y));
primDivInt vy vz = error;

divMyInt :: MyInt  ->  MyInt  ->  MyInt
divMyInt = primDivInt;

primModNatP0 x y MyTrue = primModNatP (primMinusNatS x (Succ y)) (Succ (Succ y));
primModNatP0 x y MyFalse = primMinusNatS (Succ y) x;

primModNatP :: Nat  ->  Nat  ->  Nat;
primModNatP Zero Zero = error;
primModNatP Zero (Succ x) = Zero;
primModNatP (Succ x) Zero = error;
primModNatP (Succ x) (Succ Zero) = Zero;
primModNatP (Succ x) (Succ (Succ y)) = primModNatP0 x y (primGEqNatS x y);

primModNatS0 x y MyTrue = primModNatS (primMinusNatS x (Succ y)) (Succ (Succ y));
primModNatS0 x y MyFalse = Succ x;

primModNatS :: Nat  ->  Nat  ->  Nat;
primModNatS Zero Zero = error;
primModNatS Zero (Succ x) = Zero;
primModNatS (Succ x) Zero = error;
primModNatS (Succ x) (Succ Zero) = Zero;
primModNatS (Succ x) (Succ (Succ y)) = primModNatS0 x y (primGEqNatS x (Succ y));

primModInt :: MyInt  ->  MyInt  ->  MyInt;
primModInt (Pos x) (Pos (Succ y)) = Pos (primModNatS x (Succ y));
primModInt (Pos x) (Neg (Succ y)) = Neg (primModNatP x (Succ y));
primModInt (Neg x) (Pos (Succ y)) = Pos (primModNatP x (Succ y));
primModInt (Neg x) (Neg (Succ y)) = Neg (primModNatS x (Succ y));
primModInt vw vx = error;

modMyInt :: MyInt  ->  MyInt  ->  MyInt
modMyInt = primModInt;

primIntToChar :: MyInt  ->  Char;
primIntToChar x = Char x;

toEnumChar :: MyInt  ->  Char
toEnumChar = primIntToChar;

primShowInt :: MyInt  ->  (List Char);
primShowInt (Pos Zero) = Cons (Char (Pos (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ Zero)))))))))))))))))))))))))))))))))))))))))))))))))) Nil;
primShowInt (Pos (Succ x)) = psPs (primShowInt (divMyInt (Pos (Succ x)) (Pos (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ Zero))))))))))))) (Cons (toEnumChar (modMyInt (Pos (Succ x)) (Pos (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ Zero))))))))))))) Nil);
primShowInt (Neg x) = Cons (Char (Pos (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ Zero))))))))))))))))))))))))))))))))))))))))))))))) (primShowInt (Pos x));

showMyInt :: MyInt  ->  (List Char)
showMyInt = primShowInt;

showsPrecMyInt :: MyInt  ->  MyInt  ->  (List Char)  ->  (List Char)
showsPrecMyInt vv x s = psPs (showMyInt x) s;

showsMyInt :: MyInt  ->  (List Char)  ->  (List Char)
showsMyInt = showsPrecMyInt (Pos Zero);

showsPrecRatio :: MyInt  ->  Ratio MyInt  ->  (List Char)  ->  (List Char)
showsPrecRatio p (CnPc x y) = showParen (gtMyInt p (Pos (Succ (Succ (Succ (Succ (Succ (Succ (Succ Zero))))))))) (pt (showsMyInt x) (pt (showString (Cons (Char (Pos (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ Zero)))))))))))))))))))))))))))))))))) (Cons (Char (Pos (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ Zero))))))))))))))))))))))))))))))))))))))) (Cons (Char (Pos (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ Zero)))))))))))))))))))))))))))))))))) Nil)))) (showsMyInt y)));

showRatio :: Ratio MyInt  ->  (List Char)
showRatio x = showsPrecRatio (Pos Zero) x Nil;

