{-# htermination (dropWhile :: (a  ->  MyBool)  ->  (List a)  ->  (List a)) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
dropWhile0 p vv vw MyTrue = Cons vv vw;

otherwise :: MyBool;
otherwise = MyTrue;

dropWhile1 p vv vw MyTrue = dropWhile p vw;
dropWhile1 p vv vw MyFalse = dropWhile0 p vv vw otherwise;

dropWhile2 p (Cons vv vw) = dropWhile1 p vv vw (p vv);

dropWhile3 p Nil = Nil;
dropWhile3 vz wu = dropWhile2 vz wu;

dropWhile :: (a  ->  MyBool)  ->  (List a)  ->  (List a);
dropWhile p Nil = dropWhile3 p Nil;
dropWhile p (Cons vv vw) = dropWhile2 p (Cons vv vw);

