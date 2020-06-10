(declare-sort Loc 0)
(declare-const l0 Loc)
(declare-const l1 Loc)
(declare-const l2 Loc)
(declare-const l3 Loc)
(declare-const l4 Loc)
(declare-const l5 Loc)
(declare-const l6 Loc)
(declare-const l7 Loc)
(declare-const l8 Loc)
(declare-const l9 Loc)
(assert (distinct l0 l1 l2 l3 l4 l5 l6 l7 l8 l9))

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

(define-fun init_main ( (pc^0 Loc) (__const_10^0 Int) (__const_12^0 Int) (__const_30^0 Int) (__const_5^0 Int) (a4^0 Int) (a^0 Int) (answer^0 Int) (b5^0 Int) (b^0 Int) (ret_complex6^0 Int) ) Bool
  (cfg_init pc^0 l9 true))

(define-fun next_main (
                 (pc^0 Loc) (__const_10^0 Int) (__const_12^0 Int) (__const_30^0 Int) (__const_5^0 Int) (a4^0 Int) (a^0 Int) (answer^0 Int) (b5^0 Int) (b^0 Int) (ret_complex6^0 Int)
                 (pc^post Loc) (__const_10^post Int) (__const_12^post Int) (__const_30^post Int) (__const_5^post Int) (a4^post Int) (a^post Int) (answer^post Int) (b5^post Int) (b^post Int) (ret_complex6^post Int)
             ) Bool
  (or
    (cfg_trans2 pc^0 l0 pc^post l1 (and (and (and (and (and (and (and (and (and (and (<= (+ 0 __const_30^0) (+ 0 a4^0)) (= ret_complex6^post 1)) (= answer^post (+ 0 ret_complex6^post))) (= __const_10^0 __const_10^post)) (= __const_12^0 __const_12^post)) (= __const_30^0 __const_30^post)) (= __const_5^0 __const_5^post)) (= a^0 a^post)) (= a4^0 a4^post)) (= b^0 b^post)) (= b5^0 b5^post)))
    (cfg_trans2 pc^0 l0 pc^post l2 (and (and (and (and (and (and (and (and (and (and (<= (+ 1 a4^0) (+ 0 __const_30^0)) (= __const_10^0 __const_10^post)) (= __const_12^0 __const_12^post)) (= __const_30^0 __const_30^post)) (= __const_5^0 __const_5^post)) (= a^0 a^post)) (= a4^0 a4^post)) (= answer^0 answer^post)) (= b^0 b^post)) (= b5^0 b5^post)) (= ret_complex6^0 ret_complex6^post)))
    (cfg_trans2 pc^0 l3 pc^post l0 (and (and (and (and (and (and (and (and (and (= __const_10^0 __const_10^post) (= __const_12^0 __const_12^post)) (= __const_30^0 __const_30^post)) (= __const_5^0 __const_5^post)) (= a^0 a^post)) (= a4^0 a4^post)) (= answer^0 answer^post)) (= b^0 b^post)) (= b5^0 b5^post)) (= ret_complex6^0 ret_complex6^post)))
    (cfg_trans2 pc^0 l2 pc^post l4 (and (and (and (and (and (and (and (and (and (= __const_10^0 __const_10^post) (= __const_12^0 __const_12^post)) (= __const_30^0 __const_30^post)) (= __const_5^0 __const_5^post)) (= a^0 a^post)) (= a4^0 a4^post)) (= answer^0 answer^post)) (= b^0 b^post)) (= b5^0 b5^post)) (= ret_complex6^0 ret_complex6^post)))
    (cfg_trans2 pc^0 l5 pc^post l2 (and (and (and (and (and (and (and (and (and (and (<= (+ 1 __const_12^0) (+ 0 b5^0)) (= a4^post (+ 1 a4^0))) (= __const_10^0 __const_10^post)) (= __const_12^0 __const_12^post)) (= __const_30^0 __const_30^post)) (= __const_5^0 __const_5^post)) (= a^0 a^post)) (= answer^0 answer^post)) (= b^0 b^post)) (= b5^0 b5^post)) (= ret_complex6^0 ret_complex6^post)))
    (cfg_trans2 pc^0 l5 pc^post l2 (and (and (and (and (and (and (and (and (and (and (<= (+ 0 b5^0) (+ 0 __const_12^0)) (= a4^post (+ (+ 0 __const_10^0) a4^0))) (= __const_10^0 __const_10^post)) (= __const_12^0 __const_12^post)) (= __const_30^0 __const_30^post)) (= __const_5^0 __const_5^post)) (= a^0 a^post)) (= answer^0 answer^post)) (= b^0 b^post)) (= b5^0 b5^post)) (= ret_complex6^0 ret_complex6^post)))
    (cfg_trans2 pc^0 l6 pc^post l2 (and (and (and (and (and (and (and (and (and (and (<= (+ 1 b5^0) (+ 0 __const_10^0)) (= a4^post (+ 1 a4^0))) (= __const_10^0 __const_10^post)) (= __const_12^0 __const_12^post)) (= __const_30^0 __const_30^post)) (= __const_5^0 __const_5^post)) (= a^0 a^post)) (= answer^0 answer^post)) (= b^0 b^post)) (= b5^0 b5^post)) (= ret_complex6^0 ret_complex6^post)))
    (cfg_trans2 pc^0 l6 pc^post l5 (and (and (and (and (and (and (and (and (and (and (<= (+ 0 __const_10^0) (+ 0 b5^0)) (= __const_10^0 __const_10^post)) (= __const_12^0 __const_12^post)) (= __const_30^0 __const_30^post)) (= __const_5^0 __const_5^post)) (= a^0 a^post)) (= a4^0 a4^post)) (= answer^0 answer^post)) (= b^0 b^post)) (= b5^0 b5^post)) (= ret_complex6^0 ret_complex6^post)))
    (cfg_trans2 pc^0 l7 pc^post l6 (and (and (and (and (and (and (and (and (and (and (<= (+ 0 b5^0) (+ 0 __const_5^0)) (= b5^post (+ 2 b5^0))) (= __const_10^0 __const_10^post)) (= __const_12^0 __const_12^post)) (= __const_30^0 __const_30^post)) (= __const_5^0 __const_5^post)) (= a^0 a^post)) (= a4^0 a4^post)) (= answer^0 answer^post)) (= b^0 b^post)) (= ret_complex6^0 ret_complex6^post)))
    (cfg_trans2 pc^0 l7 pc^post l6 (and (and (and (and (and (and (and (and (and (and (<= (+ 1 __const_5^0) (+ 0 b5^0)) (= b5^post b5^post)) (= __const_10^0 __const_10^post)) (= __const_12^0 __const_12^post)) (= __const_30^0 __const_30^post)) (= __const_5^0 __const_5^post)) (= a^0 a^post)) (= a4^0 a4^post)) (= answer^0 answer^post)) (= b^0 b^post)) (= ret_complex6^0 ret_complex6^post)))
    (cfg_trans2 pc^0 l4 pc^post l3 (and (and (and (and (and (and (and (and (and (and (<= (+ 0 a4^0) (+ 0 b5^0)) (= a4^post (+ 2 a4^0))) (= b5^post (+ (+ 0 (* -1 __const_10^0)) b5^0))) (= __const_10^0 __const_10^post)) (= __const_12^0 __const_12^post)) (= __const_30^0 __const_30^post)) (= __const_5^0 __const_5^post)) (= a^0 a^post)) (= answer^0 answer^post)) (= b^0 b^post)) (= ret_complex6^0 ret_complex6^post)))
    (cfg_trans2 pc^0 l4 pc^post l7 (and (and (and (and (and (and (and (and (and (and (<= (+ 1 b5^0) (+ 0 a4^0)) (= __const_10^0 __const_10^post)) (= __const_12^0 __const_12^post)) (= __const_30^0 __const_30^post)) (= __const_5^0 __const_5^post)) (= a^0 a^post)) (= a4^0 a4^post)) (= answer^0 answer^post)) (= b^0 b^post)) (= b5^0 b5^post)) (= ret_complex6^0 ret_complex6^post)))
    (cfg_trans2 pc^0 l8 pc^post l3 (and (and (and (and (and (and (and (and (and (= a^post 1) (= b^post 1)) (= answer^post 0)) (= a4^post (+ 0 a^post))) (= b5^post (+ 0 b^post))) (= __const_10^0 __const_10^post)) (= __const_12^0 __const_12^post)) (= __const_30^0 __const_30^post)) (= __const_5^0 __const_5^post)) (= ret_complex6^0 ret_complex6^post)))
    (cfg_trans2 pc^0 l9 pc^post l8 (and (and (and (and (and (and (and (and (and (= __const_10^0 __const_10^post) (= __const_12^0 __const_12^post)) (= __const_30^0 __const_30^post)) (= __const_5^0 __const_5^post)) (= a^0 a^post)) (= a4^0 a4^post)) (= answer^0 answer^post)) (= b^0 b^post)) (= b5^0 b5^post)) (= ret_complex6^0 ret_complex6^post)))
  )
)
