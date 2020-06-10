{-# htermination (span :: (a  ->  MyBool)  ->  (List a)  ->  Tup2 (List a) (List a)) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
data Tup2 a b = Tup2 a b ;

otherwise :: MyBool;
otherwise = MyTrue;

span2Span0 wx wy p vv vw MyTrue = Tup2 Nil (Cons vv vw);

span2Vu43 wx wy = span wx wy;

span2Ys0 wx wy (Tup2 ys vx) = ys;

span2Ys wx wy = span2Ys0 wx wy (span2Vu43 wx wy);

span2Zs0 wx wy (Tup2 vy zs) = zs;

span2Zs wx wy = span2Zs0 wx wy (span2Vu43 wx wy);

span2Span1 wx wy p vv vw MyTrue = Tup2 (Cons vv (span2Ys wx wy)) (span2Zs wx wy);
span2Span1 wx wy p vv vw MyFalse = span2Span0 wx wy p vv vw otherwise;

span2 p (Cons vv vw) = span2Span1 p vw p vv vw (p vv);

span3 p Nil = Tup2 Nil Nil;
span3 wv ww = span2 wv ww;

span :: (a  ->  MyBool)  ->  (List a)  ->  Tup2 (List a) (List a);
span p Nil = span3 p Nil;
span p (Cons vv vw) = span2 p (Cons vv vw);

