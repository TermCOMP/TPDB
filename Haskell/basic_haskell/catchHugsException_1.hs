{-# htermination (catchHugsException :: IO a  ->  (HugsException  ->  IO a)  ->  IO a) #-} 
import qualified Prelude 
data MyInt = Pos Nat  | Neg Nat ;
data Nat = Succ Nat  | Zero ;
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
data HugsException = HugsException ;
data Maybe a = Nothing | Just a ;
data IOErrorKind = Junk ;
data Char = Char MyInt ;

data IO a = IO ((IOError  ->  IOResult)  ->  (a  ->  IOResult)  ->  IOResult) ;

data IOError = IOError IOErrorKind (List Char) (List Char) (Maybe (List Char)) ;

data IOResult = Hugs_ExitWith MyInt  | Hugs_Error IOError  | Hugs_Catch IOResult (HugsException  ->  IOResult) (IOError  ->  IOResult) (Obj  ->  IOResult)  | Hugs_ForkThread IOResult IOResult  | Hugs_DeadThread  | Hugs_YieldThread IOResult  | Hugs_Return Obj  | Hugs_BlockThread (Obj  ->  IOResult) ((Obj  ->  IOResult)  ->  IOResult) ;

data Obj = Obj ;

catchHugsException00 f s (IO k') = k' f s;

catchHugsException0 k f s e = catchHugsException00 f s (k e);

fromObj :: Obj  ->  a;
fromObj = fromObj;

pt :: (c  ->  b)  ->  (a  ->  c)  ->  a  ->  b;
pt f g x = f (g x);

toObj :: a  ->  Obj;
toObj = toObj;

catchHugsException1 m k f s = Hugs_Catch (m Hugs_Error (pt Hugs_Return toObj)) (catchHugsException0 k f s) f (pt s fromObj);

ds :: (b  ->  a)  ->  b  ->  a;
ds f x = f x;

catchHugsException :: IO a  ->  (HugsException  ->  IO a)  ->  IO a;
catchHugsException (IO m) k = ds IO (catchHugsException1 m k);

