(declare-sort Loc 0)
(declare-const l0 Loc)
(declare-const l1 Loc)
(declare-const l2 Loc)
(declare-const l3 Loc)
(declare-const l4 Loc)
(assert (distinct l0 l1 l2 l3 l4))

(define-fun cfg_init ( (pc Loc) (src Loc) (rel Bool) ) Bool
  (and (= pc src) rel))

(define-fun cfg_trans2 ( (pc Loc) (src Loc)
                         (pc1 Loc) (dst Loc)
                         (rel Bool) ) Bool
  (and (= pc src) (= pc1 dst) rel))

(define-fun cfg_trans3 ( (pc Loc) (exit Loc)
                         (pc1 Loc) (call Loc)
                         (pc2 Loc) (return Loc)
                         (rel Bool) ) Bool
  (and (= pc exit) (= pc1 call) (= pc2 return) rel))

(define-fun init_main ( (pc^0 Loc) (Fnew5^0 Int) (Fold6^0 Int) (__const_30^0 Int) (a^0 Int) (ans8^0 Int) (i4^0 Int) (n3^0 Int) (ret_fib9^0 Int) (temp7^0 Int) (tmp^0 Int) ) Bool
  (cfg_init pc^0 l4 true))

(define-fun next_main (
                 (pc^0 Loc) (Fnew5^0 Int) (Fold6^0 Int) (__const_30^0 Int) (a^0 Int) (ans8^0 Int) (i4^0 Int) (n3^0 Int) (ret_fib9^0 Int) (temp7^0 Int) (tmp^0 Int)
                 (pc^post Loc) (Fnew5^post Int) (Fold6^post Int) (__const_30^post Int) (a^post Int) (ans8^post Int) (i4^post Int) (n3^post Int) (ret_fib9^post Int) (temp7^post Int) (tmp^post Int)
             ) Bool
  (or
    (cfg_trans2 pc^0 l0 pc^post l1 (and (and (and (and (and (and (and (and (and (and (<= (+ 1 n3^0) (+ 0 i4^0)) (= ans8^post (+ 0 Fnew5^0))) (= ret_fib9^post (+ 0 ans8^post))) (= tmp^post (+ 0 ret_fib9^post))) (= Fnew5^0 Fnew5^post)) (= Fold6^0 Fold6^post)) (= __const_30^0 __const_30^post)) (= a^0 a^post)) (= i4^0 i4^post)) (= n3^0 n3^post)) (= temp7^0 temp7^post)))
    (cfg_trans2 pc^0 l0 pc^post l2 (and (and (and (and (and (and (and (and (and (and (<= (+ 0 i4^0) (+ 0 n3^0)) (= temp7^post (+ 0 Fnew5^0))) (= Fnew5^post (+ (+ 0 Fnew5^0) Fold6^0))) (= Fold6^post (+ 0 temp7^post))) (= i4^post (+ 1 i4^0))) (= __const_30^0 __const_30^post)) (= a^0 a^post)) (= ans8^0 ans8^post)) (= n3^0 n3^post)) (= ret_fib9^0 ret_fib9^post)) (= tmp^0 tmp^post)))
    (cfg_trans2 pc^0 l2 pc^post l0 (and (and (and (and (and (and (and (and (and (= Fnew5^0 Fnew5^post) (= Fold6^0 Fold6^post)) (= __const_30^0 __const_30^post)) (= a^0 a^post)) (= ans8^0 ans8^post)) (= i4^0 i4^post)) (= n3^0 n3^post)) (= ret_fib9^0 ret_fib9^post)) (= temp7^0 temp7^post)) (= tmp^0 tmp^post)))
    (cfg_trans2 pc^0 l3 pc^post l2 (and (and (and (and (and (and (and (and (and (= a^post (+ 0 __const_30^0)) (= n3^post (+ 0 a^post))) (= Fnew5^post 1)) (= Fold6^post 0)) (= i4^post 2)) (= __const_30^0 __const_30^post)) (= ans8^0 ans8^post)) (= ret_fib9^0 ret_fib9^post)) (= temp7^0 temp7^post)) (= tmp^0 tmp^post)))
    (cfg_trans2 pc^0 l4 pc^post l3 (and (and (and (and (and (and (and (and (and (= Fnew5^0 Fnew5^post) (= Fold6^0 Fold6^post)) (= __const_30^0 __const_30^post)) (= a^0 a^post)) (= ans8^0 ans8^post)) (= i4^0 i4^post)) (= n3^0 n3^post)) (= ret_fib9^0 ret_fib9^post)) (= temp7^0 temp7^post)) (= tmp^0 tmp^post)))
  )
)
