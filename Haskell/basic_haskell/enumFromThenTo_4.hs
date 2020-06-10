{-# htermination (enumFromThenToFloat :: Float  ->  Float  ->  Float  ->  (List Float)) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
data Float = Float MyInt MyInt ;

data MyInt = Pos Nat  | Neg Nat ;

data Nat = Succ Nat  | Zero ;

data Ordering = LT  | EQ  | GT ;

primIntToFloat :: MyInt  ->  Float;
primIntToFloat x = Float x (Pos (Succ Zero));

fromIntFloat :: MyInt  ->  Float
fromIntFloat = primIntToFloat;

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

primDivFloat :: Float  ->  Float  ->  Float;
primDivFloat (Float x1 x2) (Float y1 y2) = Float (srMyInt x1 y2) (srMyInt x2 y1);

fsFloat :: Float  ->  Float  ->  Float
fsFloat = primDivFloat;

primMinusNat :: Nat  ->  Nat  ->  MyInt;
primMinusNat Zero Zero = Pos Zero;
primMinusNat Zero (Succ y) = Neg (Succ y);
primMinusNat (Succ x) Zero = Pos (Succ x);
primMinusNat (Succ x) (Succ y) = primMinusNat x y;

primMinusInt :: MyInt  ->  MyInt  ->  MyInt;
primMinusInt (Pos x) (Neg y) = Pos (primPlusNat x y);
primMinusInt (Neg x) (Pos y) = Neg (primPlusNat x y);
primMinusInt (Neg x) (Neg y) = primMinusNat y x;
primMinusInt (Pos x) (Pos y) = primMinusNat x y;

msMyInt :: MyInt  ->  MyInt  ->  MyInt
msMyInt = primMinusInt;

primMinusFloat :: Float  ->  Float  ->  Float;
primMinusFloat (Float x1 x2) (Float y1 y2) = Float (msMyInt x1 y1) (srMyInt x2 y2);

msFloat :: Float  ->  Float  ->  Float
msFloat = primMinusFloat;

iterate :: (a  ->  a)  ->  a  ->  (List a);
iterate f x = Cons x (iterate f (f x));

primPlusInt :: MyInt  ->  MyInt  ->  MyInt;
primPlusInt (Pos x) (Neg y) = primMinusNat x y;
primPlusInt (Neg x) (Pos y) = primMinusNat y x;
primPlusInt (Neg x) (Neg y) = Neg (primPlusNat x y);
primPlusInt (Pos x) (Pos y) = Pos (primPlusNat x y);

psMyInt :: MyInt  ->  MyInt  ->  MyInt
psMyInt = primPlusInt;

primPlusFloat :: Float  ->  Float  ->  Float;
primPlusFloat (Float x1 x2) (Float y1 y2) = Float (psMyInt x1 y1) (srMyInt x2 y2);

psFloat :: Float  ->  Float  ->  Float
psFloat = primPlusFloat;

numericEnumFromThen n m = iterate (psFloat (msFloat m n)) n;

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

primCmpFloat :: Float  ->  Float  ->  Ordering;
primCmpFloat (Float x1 x2) (Float y1 y2) = compareMyInt (srMyInt x1 y1) (srMyInt x2 y2);

compareFloat :: Float  ->  Float  ->  Ordering
compareFloat = primCmpFloat;

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

gtEsFloat :: Float  ->  Float  ->  MyBool
gtEsFloat x y = fsEsOrdering (compareFloat x y) LT;

flip :: (b  ->  a  ->  c)  ->  a  ->  b  ->  c;
flip f x y = f y x;

ltEsFloat :: Float  ->  Float  ->  MyBool
ltEsFloat x y = fsEsOrdering (compareFloat x y) GT;

numericEnumFromThenToP0 vz wu wv MyTrue = flip gtEsFloat wv;

otherwise :: MyBool;
otherwise = MyTrue;

numericEnumFromThenToP1 vz wu wv MyTrue = flip ltEsFloat wv;
numericEnumFromThenToP1 vz wu wv MyFalse = numericEnumFromThenToP0 vz wu wv otherwise;

numericEnumFromThenToP2 vz wu wv = numericEnumFromThenToP1 vz wu wv (gtEsFloat vz wu);

numericEnumFromThenToP vz wu wv = numericEnumFromThenToP2 vz wu wv;

takeWhile0 p x xs MyTrue = Nil;

takeWhile1 p x xs MyTrue = Cons x (takeWhile p xs);
takeWhile1 p x xs MyFalse = takeWhile0 p x xs otherwise;

takeWhile2 p (Cons x xs) = takeWhile1 p x xs (p x);

takeWhile3 p Nil = Nil;
takeWhile3 vx vy = takeWhile2 vx vy;

takeWhile :: (a  ->  MyBool)  ->  (List a)  ->  (List a);
takeWhile p Nil = takeWhile3 p Nil;
takeWhile p (Cons x xs) = takeWhile2 p (Cons x xs);

numericEnumFromThenTo n n' m = takeWhile (numericEnumFromThenToP n' n m) (numericEnumFromThen n n');

enumFromThenToFloat :: Float  ->  Float  ->  Float  ->  (List Float)
enumFromThenToFloat n n' m = numericEnumFromThenTo n n' (psFloat m (fsFloat (msFloat n' n) (fromIntFloat (Pos (Succ (Succ Zero))))));

