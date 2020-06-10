{-# htermination (basicIORun :: IO a  ->  IOFinished a) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
data Either b a = Left b  | Right a ;
data Maybe a = Nothing | Just a ;
data Char = Char MyInt ;
data IOErrorKind = Junk ;

data HugsException = HugsException ;

data IO a = IO ((IOError  ->  IOResult)  ->  (a  ->  IOResult)  ->  IOResult) ;

data IOError = IOError IOErrorKind (List Char) (List Char) (Maybe (List Char)) ;

data IOFinished a = Finished_ExitWith MyInt  | Finished_Error IOError  | Finished_Return a ;

data IOResult = Hugs_ExitWith MyInt  | Hugs_Error IOError  | Hugs_Catch IOResult (HugsException  ->  IOResult) (IOError  ->  IOResult) (Obj  ->  IOResult)  | Hugs_ForkThread IOResult IOResult  | Hugs_DeadThread  | Hugs_YieldThread IOResult  | Hugs_Return Obj  | Hugs_BlockThread (Obj  ->  IOResult) ((Obj  ->  IOResult)  ->  IOResult) ;

data MyInt = Pos Nat  | Neg Nat ;

data Nat = Succ Nat | Zero ;

data Obj = Obj ;

stop :: MyBool  ->  a;
stop MyFalse = stop MyFalse;

error :: a;
error = stop MyTrue;

fromObj :: Obj  ->  a;
fromObj = fromObj;

hugs_catchCatch' :: IOResult  ->  IOResult;
hugs_catchCatch' (Hugs_Catch m' f1' f2' s') = hugs_catchCatch' (hugs_catch m' f1' f2' s');
hugs_catchCatch' x = x;

hugs_catchHugs_catch0 a f1 f2 s x = Hugs_Catch (a x) f1 f2 s;

hugs_catchHugs_catch1 f1 s f2 (Left exn) = f1 exn;
hugs_catchHugs_catch1 f1 s f2 (Right (Hugs_Return a)) = s a;
hugs_catchHugs_catch1 f1 s f2 (Right (Hugs_Error e)) = f2 e;
hugs_catchHugs_catch1 f1 s f2 (Right (Hugs_ForkThread a b)) = Hugs_ForkThread (Hugs_Catch a f1 f2 s) b;
hugs_catchHugs_catch1 f1 s f2 (Right (Hugs_YieldThread a)) = Hugs_YieldThread (Hugs_Catch a f1 f2 s);
hugs_catchHugs_catch1 f1 s f2 (Right (Hugs_BlockThread a b)) = Hugs_BlockThread (hugs_catchHugs_catch0 a f1 f2 s) b;
hugs_catchHugs_catch1 f1 s f2 (Right r) = r;

primCatchException :: a  ->  Either HugsException a;
primCatchException = primCatchException;

hugs_catch :: IOResult  ->  (HugsException  ->  IOResult)  ->  (IOError  ->  IOResult)  ->  (Obj  ->  IOResult)  ->  IOResult;
hugs_catch m f1 f2 s = hugs_catchHugs_catch1 f1 s f2 (primCatchException (hugs_catchCatch' m));

psPs :: (List a)  ->  (List a)  ->  (List a);
psPs Nil ys = ys;
psPs (Cons x xs) ys = Cons x (psPs xs ys);

loop :: (List IOResult)  ->  IOFinished a;
loop Nil = error;
loop (Cons (Hugs_Return a) Nil) = Finished_Return (fromObj a);
loop (Cons (Hugs_Return a) r) = loop (psPs r (Cons (Hugs_Return a) Nil));
loop (Cons (Hugs_Catch m f1 f2 s) r) = loop (Cons (hugs_catch m f1 f2 s) r);
loop (Cons (Hugs_Error e) vv) = Finished_Error e;
loop (Cons (Hugs_ExitWith i) vw) = Finished_ExitWith i;
loop (Cons Hugs_DeadThread r) = loop r;
loop (Cons (Hugs_ForkThread a b) r) = loop (Cons a (Cons b r));
loop (Cons (Hugs_YieldThread a) r) = loop (psPs r (Cons a Nil));
loop (Cons (Hugs_BlockThread a b) r) = loop (Cons (b a) r);
loop vx = error;

pt :: (a  ->  b)  ->  (c  ->  a)  ->  c  ->  b;
pt f g x = f (g x);

toObj :: a  ->  Obj;
toObj = toObj;

basicIORun :: IO a  ->  IOFinished a;
basicIORun (IO m) = loop (Cons (m Hugs_Error (pt Hugs_Return toObj)) Nil);

