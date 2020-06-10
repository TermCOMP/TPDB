{-# htermination (unlines :: (List (List Char))  ->  (List Char)) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
data Char = Char MyInt ;

data MyInt = Pos Nat  | Neg Nat ;

data Nat = Succ Nat  | Zero ;

psPs :: (List a)  ->  (List a)  ->  (List a);
psPs Nil ys = ys;
psPs (Cons x xs) ys = Cons x (psPs xs ys);

unlines :: (List (List Char))  ->  (List Char);
unlines Nil = Nil;
unlines (Cons l ls) = psPs l (Cons (Char (Pos (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ Zero)))))))))))) (unlines ls));

