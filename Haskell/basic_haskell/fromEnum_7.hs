{-# htermination (fromEnumOrdering :: Ordering  ->  MyInt) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
data MyInt = Pos Nat  | Neg Nat ;

data Nat = Succ Nat  | Zero ;

data Ordering = LT  | EQ  | GT ;

fromEnumOrdering :: Ordering  ->  MyInt
fromEnumOrdering LT = Pos Zero;
fromEnumOrdering EQ = Pos (Succ Zero);
fromEnumOrdering GT = Pos (Succ (Succ Zero));

