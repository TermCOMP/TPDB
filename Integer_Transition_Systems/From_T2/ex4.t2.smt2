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
(declare-const l10 Loc)
(declare-const l11 Loc)
(assert (distinct l0 l1 l2 l3 l4 l5 l6 l7 l8 l9 l10 l11))

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

(define-fun init_main ( (pc^0 Loc) (__const_10^0 Int) (il^0 Int) (ret_foo5^0 Int) (ret_foo7^0 Int) (tmp^0 Int) (tmp___0^0 Int) (x4^0 Int) (x6^0 Int) ) Bool
  (cfg_init pc^0 l11 true))

(define-fun next_main (
                 (pc^0 Loc) (__const_10^0 Int) (il^0 Int) (ret_foo5^0 Int) (ret_foo7^0 Int) (tmp^0 Int) (tmp___0^0 Int) (x4^0 Int) (x6^0 Int)
                 (pc^post Loc) (__const_10^post Int) (il^post Int) (ret_foo5^post Int) (ret_foo7^post Int) (tmp^post Int) (tmp___0^post Int) (x4^post Int) (x6^post Int)
             ) Bool
  (or
    (cfg_trans2 pc^0 l0 pc^post l1 (and (and (and (and (and (and (and (and (and (<= (+ 0 tmp^0) 0) (<= 0 (+ 0 tmp^0))) (= __const_10^0 __const_10^post)) (= il^0 il^post)) (= ret_foo5^0 ret_foo5^post)) (= ret_foo7^0 ret_foo7^post)) (= tmp^0 tmp^post)) (= tmp___0^0 tmp___0^post)) (= x4^0 x4^post)) (= x6^0 x6^post)))
    (cfg_trans2 pc^0 l0 pc^post l2 (and (and (and (and (and (and (and (and (<= 1 (+ 0 tmp^0)) (= __const_10^0 __const_10^post)) (= il^0 il^post)) (= ret_foo5^0 ret_foo5^post)) (= ret_foo7^0 ret_foo7^post)) (= tmp^0 tmp^post)) (= tmp___0^0 tmp___0^post)) (= x4^0 x4^post)) (= x6^0 x6^post)))
    (cfg_trans2 pc^0 l0 pc^post l2 (and (and (and (and (and (and (and (and (<= (+ 1 tmp^0) 0) (= __const_10^0 __const_10^post)) (= il^0 il^post)) (= ret_foo5^0 ret_foo5^post)) (= ret_foo7^0 ret_foo7^post)) (= tmp^0 tmp^post)) (= tmp___0^0 tmp___0^post)) (= x4^0 x4^post)) (= x6^0 x6^post)))
    (cfg_trans2 pc^0 l3 pc^post l0 (and (and (and (and (and (and (and (= x4^post (+ 0 il^0)) (= ret_foo5^post ret_foo5^post)) (= tmp^post (+ 0 ret_foo5^post))) (= __const_10^0 __const_10^post)) (= il^0 il^post)) (= ret_foo7^0 ret_foo7^post)) (= tmp___0^0 tmp___0^post)) (= x6^0 x6^post)))
    (cfg_trans2 pc^0 l4 pc^post l5 (and (and (and (and (and (and (and (= __const_10^0 __const_10^post) (= il^0 il^post)) (= ret_foo5^0 ret_foo5^post)) (= ret_foo7^0 ret_foo7^post)) (= tmp^0 tmp^post)) (= tmp___0^0 tmp___0^post)) (= x4^0 x4^post)) (= x6^0 x6^post)))
    (cfg_trans2 pc^0 l6 pc^post l7 (and (and (and (and (and (and (and (= il^post (+ 1 il^0)) (= __const_10^0 __const_10^post)) (= ret_foo5^0 ret_foo5^post)) (= ret_foo7^0 ret_foo7^post)) (= tmp^0 tmp^post)) (= tmp___0^0 tmp___0^post)) (= x4^0 x4^post)) (= x6^0 x6^post)))
    (cfg_trans2 pc^0 l8 pc^post l4 (and (and (and (and (and (and (and (and (and (<= (+ 0 tmp___0^0) 0) (<= 0 (+ 0 tmp___0^0))) (= __const_10^0 __const_10^post)) (= il^0 il^post)) (= ret_foo5^0 ret_foo5^post)) (= ret_foo7^0 ret_foo7^post)) (= tmp^0 tmp^post)) (= tmp___0^0 tmp___0^post)) (= x4^0 x4^post)) (= x6^0 x6^post)))
    (cfg_trans2 pc^0 l8 pc^post l6 (and (and (and (and (and (and (and (and (<= 1 (+ 0 tmp___0^0)) (= __const_10^0 __const_10^post)) (= il^0 il^post)) (= ret_foo5^0 ret_foo5^post)) (= ret_foo7^0 ret_foo7^post)) (= tmp^0 tmp^post)) (= tmp___0^0 tmp___0^post)) (= x4^0 x4^post)) (= x6^0 x6^post)))
    (cfg_trans2 pc^0 l8 pc^post l6 (and (and (and (and (and (and (and (and (<= (+ 1 tmp___0^0) 0) (= __const_10^0 __const_10^post)) (= il^0 il^post)) (= ret_foo5^0 ret_foo5^post)) (= ret_foo7^0 ret_foo7^post)) (= tmp^0 tmp^post)) (= tmp___0^0 tmp___0^post)) (= x4^0 x4^post)) (= x6^0 x6^post)))
    (cfg_trans2 pc^0 l7 pc^post l9 (and (and (and (and (and (and (and (= __const_10^0 __const_10^post) (= il^0 il^post)) (= ret_foo5^0 ret_foo5^post)) (= ret_foo7^0 ret_foo7^post)) (= tmp^0 tmp^post)) (= tmp___0^0 tmp___0^post)) (= x4^0 x4^post)) (= x6^0 x6^post)))
    (cfg_trans2 pc^0 l9 pc^post l4 (and (and (and (and (and (and (and (and (<= (+ 0 __const_10^0) (+ 0 il^0)) (= __const_10^0 __const_10^post)) (= il^0 il^post)) (= ret_foo5^0 ret_foo5^post)) (= ret_foo7^0 ret_foo7^post)) (= tmp^0 tmp^post)) (= tmp___0^0 tmp___0^post)) (= x4^0 x4^post)) (= x6^0 x6^post)))
    (cfg_trans2 pc^0 l9 pc^post l8 (and (and (and (and (and (and (and (and (<= (+ 1 il^0) (+ 0 __const_10^0)) (= x6^post (+ 0 il^0))) (= ret_foo7^post ret_foo7^post)) (= tmp___0^post (+ 0 ret_foo7^post))) (= __const_10^0 __const_10^post)) (= il^0 il^post)) (= ret_foo5^0 ret_foo5^post)) (= tmp^0 tmp^post)) (= x4^0 x4^post)))
    (cfg_trans2 pc^0 l1 pc^post l7 (and (and (and (and (and (and (and (= il^post 0) (= __const_10^0 __const_10^post)) (= ret_foo5^0 ret_foo5^post)) (= ret_foo7^0 ret_foo7^post)) (= tmp^0 tmp^post)) (= tmp___0^0 tmp___0^post)) (= x4^0 x4^post)) (= x6^0 x6^post)))
    (cfg_trans2 pc^0 l2 pc^post l1 (and (and (and (and (and (and (and (and (<= (+ 0 __const_10^0) (+ 0 il^0)) (= __const_10^0 __const_10^post)) (= il^0 il^post)) (= ret_foo5^0 ret_foo5^post)) (= ret_foo7^0 ret_foo7^post)) (= tmp^0 tmp^post)) (= tmp___0^0 tmp___0^post)) (= x4^0 x4^post)) (= x6^0 x6^post)))
    (cfg_trans2 pc^0 l2 pc^post l3 (and (and (and (and (and (and (and (and (<= (+ 1 il^0) (+ 0 __const_10^0)) (= il^post (+ 1 il^0))) (= __const_10^0 __const_10^post)) (= ret_foo5^0 ret_foo5^post)) (= ret_foo7^0 ret_foo7^post)) (= tmp^0 tmp^post)) (= tmp___0^0 tmp___0^post)) (= x4^0 x4^post)) (= x6^0 x6^post)))
    (cfg_trans2 pc^0 l10 pc^post l3 (and (and (and (and (and (and (and (= il^post 0) (= __const_10^0 __const_10^post)) (= ret_foo5^0 ret_foo5^post)) (= ret_foo7^0 ret_foo7^post)) (= tmp^0 tmp^post)) (= tmp___0^0 tmp___0^post)) (= x4^0 x4^post)) (= x6^0 x6^post)))
    (cfg_trans2 pc^0 l11 pc^post l10 (and (and (and (and (and (and (and (= __const_10^0 __const_10^post) (= il^0 il^post)) (= ret_foo5^0 ret_foo5^post)) (= ret_foo7^0 ret_foo7^post)) (= tmp^0 tmp^post)) (= tmp___0^0 tmp___0^post)) (= x4^0 x4^post)) (= x6^0 x6^post)))
  )
)
