{-# htermination (blockIO :: ((a  ->  IOResult)  ->  IO Tup0)  ->  IO a) #-} 
import qualified Prelude 
data MyInt = Pos Nat  | Neg Nat ;
data Nat = Succ Nat  | Zero ;
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
data Tup0 = Tup0 ;

data Maybe a = Nothing | Just a ;
data IOErrorKind = Junk ;

data Char = Char MyInt ;

data IO a = IO ((IOError  ->  IOResult)  ->  (a  ->  IOResult)  ->  IOResult) ;

data IOError = IOError IOErrorKind (List Char) (List Char) (Maybe (List Char)) ;

data HugsException = HugsException ;

data IOResult = Hugs_ExitWith MyInt  | Hugs_Error IOError  | Hugs_Catch IOResult (HugsException  ->  IOResult) (IOError  ->  IOResult) (Obj  ->  IOResult)  | Hugs_ForkThread IOResult IOResult  | Hugs_DeadThread  | Hugs_YieldThread IOResult  | Hugs_Return Obj  | Hugs_BlockThread (Obj  ->  IOResult) ((Obj  ->  IOResult)  ->  IOResult) ;

data Obj = Obj ;

pt :: (a  ->  c)  ->  (b  ->  a)  ->  b  ->  c;
pt f g x = f (g x);

const :: a  ->  b  ->  a;
const k vv = k;

threadToIOResult :: IO a  ->  IOResult;
threadToIOResult (IO m) = m Hugs_Error (const Hugs_DeadThread);

toObj :: a  ->  Obj;
toObj = toObj;

blockIOM' vw k = threadToIOResult (vw (pt k toObj));

fromObj :: Obj  ->  a;
fromObj = fromObj;

blockIOBlockIO0 vw f s = Hugs_BlockThread (pt s fromObj) (blockIOM' vw);

blockIO :: ((a  ->  IOResult)  ->  IO Tup0)  ->  IO a;
blockIO m = IO (blockIOBlockIO0 m);

