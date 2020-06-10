{-# htermination (enumFromThenOrdering :: Ordering  ->  Ordering  ->  (List Ordering)) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
data MyInt = Pos Nat  | Neg Nat ;

data Nat = Succ Nat  | Zero ;

data Ordering = LT  | EQ  | GT ;

iterate :: (a  ->  a)  ->  a  ->  (List a);
iterate f x = Cons x (iterate f (f x));

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

primPlusInt :: MyInt  ->  MyInt  ->  MyInt;
primPlusInt (Pos x) (Neg y) = primMinusNat x y;
primPlusInt (Neg x) (Pos y) = primMinusNat y x;
primPlusInt (Neg x) (Neg y) = Neg (primPlusNat x y);
primPlusInt (Pos x) (Pos y) = Pos (primPlusNat x y);

psMyInt :: MyInt  ->  MyInt  ->  MyInt
psMyInt = primPlusInt;

numericEnumFromThen n m = iterate (psMyInt (msMyInt m n)) n;

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

gtEsMyInt :: MyInt  ->  MyInt  ->  MyBool
gtEsMyInt x y = fsEsOrdering (compareMyInt x y) LT;

flip :: (c  ->  b  ->  a)  ->  b  ->  c  ->  a;
flip f x y = f y x;

ltEsMyInt :: MyInt  ->  MyInt  ->  MyBool
ltEsMyInt x y = fsEsOrdering (compareMyInt x y) GT;

numericEnumFromThenToP0 xy xz yu MyTrue = flip gtEsMyInt xy;

otherwise :: MyBool;
otherwise = MyTrue;

numericEnumFromThenToP1 xy xz yu MyTrue = flip ltEsMyInt xy;
numericEnumFromThenToP1 xy xz yu MyFalse = numericEnumFromThenToP0 xy xz yu otherwise;

numericEnumFromThenToP2 xy xz yu = numericEnumFromThenToP1 xy xz yu (gtEsMyInt xz yu);

numericEnumFromThenToP xy xz yu = numericEnumFromThenToP2 xy xz yu;

takeWhile0 p x xs MyTrue = Nil;

takeWhile1 p x xs MyTrue = Cons x (takeWhile p xs);
takeWhile1 p x xs MyFalse = takeWhile0 p x xs otherwise;

takeWhile2 p (Cons x xs) = takeWhile1 p x xs (p x);

takeWhile3 p Nil = Nil;
takeWhile3 xw xx = takeWhile2 xw xx;

takeWhile :: (a  ->  MyBool)  ->  (List a)  ->  (List a);
takeWhile p Nil = takeWhile3 p Nil;
takeWhile p (Cons x xs) = takeWhile2 p (Cons x xs);

numericEnumFromThenTo n n' m = takeWhile (numericEnumFromThenToP m n' n) (numericEnumFromThen n n');

enumFromThenToMyInt :: MyInt  ->  MyInt  ->  MyInt  ->  (List MyInt)
enumFromThenToMyInt = numericEnumFromThenTo;

fromEnumOrdering :: Ordering  ->  MyInt
fromEnumOrdering LT = Pos Zero;
fromEnumOrdering EQ = Pos (Succ Zero);
fromEnumOrdering GT = Pos (Succ (Succ Zero));

map :: (b  ->  a)  ->  (List b)  ->  (List a);
map f Nil = Nil;
map f (Cons x xs) = Cons (f x) (map f xs);

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
primEqInt vv vw = MyFalse;

esEsMyInt :: MyInt  ->  MyInt  ->  MyBool
esEsMyInt = primEqInt;

toEnum0 MyTrue vx = GT;

toEnum1 vx = toEnum0 (esEsMyInt vx (Pos (Succ (Succ Zero)))) vx;

toEnum2 MyTrue vy = EQ;
toEnum2 vz wu = toEnum1 wu;

toEnum3 vy = toEnum2 (esEsMyInt vy (Pos (Succ Zero))) vy;
toEnum3 wv = toEnum1 wv;

toEnum4 MyTrue ww = LT;
toEnum4 wx wy = toEnum3 wy;

toEnum5 ww = toEnum4 (esEsMyInt ww (Pos Zero)) ww;
toEnum5 wz = toEnum3 wz;

toEnumOrdering :: MyInt  ->  Ordering
toEnumOrdering ww = toEnum5 ww;
toEnumOrdering vy = toEnum3 vy;
toEnumOrdering vx = toEnum1 vx;

enumFromThenToOrdering :: Ordering  ->  Ordering  ->  Ordering  ->  (List Ordering)
enumFromThenToOrdering x y z = map toEnumOrdering (enumFromThenToMyInt (fromEnumOrdering x) (fromEnumOrdering y) (fromEnumOrdering z));

enumFromThenOrdering :: Ordering  ->  Ordering  ->  (List Ordering)
enumFromThenOrdering x y = enumFromThenToOrdering x y GT;

