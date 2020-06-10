{-# htermination (words :: (List Char)  ->  (List (List Char))) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
data Tup2 a b = Tup2 a b ;

data Char = Char MyInt ;

data MyInt = Pos Nat  | Neg Nat ;

data Nat = Succ Nat  | Zero ;

dropWhile0 p vz wu MyTrue = Cons vz wu;

otherwise :: MyBool;
otherwise = MyTrue;

dropWhile1 p vz wu MyTrue = dropWhile p wu;
dropWhile1 p vz wu MyFalse = dropWhile0 p vz wu otherwise;

dropWhile2 p (Cons vz wu) = dropWhile1 p vz wu (p vz);

dropWhile3 p Nil = Nil;
dropWhile3 xv xw = dropWhile2 xv xw;

dropWhile :: (a  ->  MyBool)  ->  (List a)  ->  (List a);
dropWhile p Nil = dropWhile3 p Nil;
dropWhile p (Cons vz wu) = dropWhile2 p (Cons vz wu);

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
primEqInt vx vy = MyFalse;

primEqChar :: Char  ->  Char  ->  MyBool;
primEqChar (Char x) (Char y) = primEqInt x y;

esEsChar :: Char  ->  Char  ->  MyBool
esEsChar = primEqChar;

pePe :: MyBool  ->  MyBool  ->  MyBool;
pePe MyFalse x = x;
pePe MyTrue x = MyTrue;

isSpace :: Char  ->  MyBool;
isSpace c = pePe (esEsChar c (Char (Pos (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ Zero))))))))))))))))))))))))))))))))))) (pePe (esEsChar c (Char (Pos (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ Zero)))))))))))) (pePe (esEsChar c (Char (Pos (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ Zero))))))))))))) (pePe (esEsChar c (Char (Pos (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ Zero)))))))))))))))) (pePe (esEsChar c (Char (Pos (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ Zero))))))))))))))) (pePe (esEsChar c (Char (Pos (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ Zero)))))))))))))) (esEsChar c (Char (Pos (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ Zero))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))));

words0S''0 yx (Tup2 vv s'') = s'';

not :: MyBool  ->  MyBool;
not MyTrue = MyFalse;
not MyFalse = MyTrue;

pt :: (a  ->  c)  ->  (b  ->  a)  ->  b  ->  c;
pt f g x = f (g x);

span2Span0 yv yw p wv ww MyTrue = Tup2 Nil (Cons wv ww);

span2Vu43 yv yw = span yv yw;

span2Ys0 yv yw (Tup2 ys wx) = ys;

span2Ys yv yw = span2Ys0 yv yw (span2Vu43 yv yw);

span2Zs0 yv yw (Tup2 wy zs) = zs;

span2Zs yv yw = span2Zs0 yv yw (span2Vu43 yv yw);

span2Span1 yv yw p wv ww MyTrue = Tup2 (Cons wv (span2Ys yv yw)) (span2Zs yv yw);
span2Span1 yv yw p wv ww MyFalse = span2Span0 yv yw p wv ww otherwise;

span2 p (Cons wv ww) = span2Span1 p ww p wv ww (p wv);

span3 p Nil = Tup2 Nil Nil;
span3 xz yu = span2 xz yu;

span :: (a  ->  MyBool)  ->  (List a)  ->  Tup2 (List a) (List a);
span p Nil = span3 p Nil;
span p (Cons wv ww) = span2 p (Cons wv ww);

break :: (a  ->  MyBool)  ->  (List a)  ->  Tup2 (List a) (List a);
break p = span (pt not p);

words0Vu45 yx = break isSpace yx;

words0S'' yx = words0S''0 yx (words0Vu45 yx);

words0W0 yx (Tup2 w vw) = w;

words0W yx = words0W0 yx (words0Vu45 yx);

words0 Nil = Nil;
words0 s' = Cons (words0W s') (words (words0S'' s'));

words :: (List Char)  ->  (List (List Char));
words s = words0 (dropWhile isSpace s);

