{-# htermination (showChar :: Char  ->  (List Char)  ->  (List Char)) #-} 
import qualified Prelude 
data MyInt = Pos Nat  | Neg Nat ;
data Nat = Succ Nat  | Zero ;
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
data Char = Char MyInt ;

showChar :: Char  ->  (List Char)  ->  (List Char);
showChar = Cons;

