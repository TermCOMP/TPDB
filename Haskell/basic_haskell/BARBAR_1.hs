{-# htermination (pePe :: MyBool  ->  MyBool  ->  MyBool) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
pePe :: MyBool  ->  MyBool  ->  MyBool;
pePe MyFalse x = x;
pePe MyTrue x = MyTrue;

