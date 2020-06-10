{-# htermination (userError :: (List Char)  ->  IOError) #-} 
import qualified Prelude 
data MyInt = Pos Nat  | Neg Nat ;
data Nat = Succ Nat  | Zero ;
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
data Char = Char MyInt ;

data IOError = IOError IOErrorKind (List Char) (List Char) (Maybe (List Char)) ;

data IOErrorKind = IOError_UserError  | IOError_IllegalError  | IOError_PermDenied  | IOError_AlreadyExists  | IOError_AlreadyInUse  | IOError_DoesNotExist  | IOError_FullError  | IOError_EOF  | IOError_WriteError ;

data Maybe a = Nothing  | Just a ;

userError :: (List Char)  ->  IOError;
userError str = IOError IOError_UserError Nil str Nothing;

