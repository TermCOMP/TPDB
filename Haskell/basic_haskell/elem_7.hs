{-# htermination (elemOrdering :: Ordering  ->  (List Ordering)  ->  MyBool) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
data Ordering = LT  | EQ  | GT ;

map :: (b  ->  a)  ->  (List b)  ->  (List a);
map f Nil = Nil;
map f (Cons x xs) = Cons (f x) (map f xs);

foldr :: (b  ->  a  ->  a)  ->  a  ->  (List b)  ->  a;
foldr f z Nil = z;
foldr f z (Cons x xs) = f x (foldr f z xs);

pePe :: MyBool  ->  MyBool  ->  MyBool;
pePe MyFalse x = x;
pePe MyTrue x = MyTrue;

or :: (List MyBool)  ->  MyBool;
or = foldr pePe MyFalse;

pt :: (c  ->  a)  ->  (b  ->  c)  ->  b  ->  a;
pt f g x = f (g x);

any :: (a  ->  MyBool)  ->  (List a)  ->  MyBool;
any p = pt or (map p);

esEsOrdering :: Ordering  ->  Ordering  ->  MyBool
esEsOrdering LT LT = MyTrue;
esEsOrdering LT EQ = MyFalse;
esEsOrdering LT GT = MyFalse;
esEsOrdering EQ LT = MyFalse;
esEsOrdering EQ EQ = MyTrue;
esEsOrdering EQ GT = MyFalse;
esEsOrdering GT LT = MyFalse;
esEsOrdering GT EQ = MyFalse;
esEsOrdering GT GT = MyTrue;

elemOrdering :: Ordering  ->  (List Ordering)  ->  MyBool
elemOrdering = pt any esEsOrdering;

