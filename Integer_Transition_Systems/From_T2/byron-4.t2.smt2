(declare-sort Loc 0)
(declare-const l0 Loc)
(declare-const l1 Loc)
(declare-const l2 Loc)
(declare-const l4 Loc)
(declare-const l3 Loc)
(declare-const l5 Loc)
(declare-const l6 Loc)
(declare-const l7 Loc)
(declare-const l8 Loc)
(declare-const l9 Loc)
(declare-const l10 Loc)
(declare-const l11 Loc)
(assert (distinct l0 l1 l2 l4 l3 l5 l6 l7 l8 l9 l10 l11))

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

(define-fun init_main ( (pc^0 Loc) (__disjvr_0^0 Int) (__disjvr_1^0 Int) (__disjvr_2^0 Int) (__disjvr_3^0 Int) (b_16^0 Int) (rt_11^0 Int) (st_15^0 Int) (x_14^0 Int) ) Bool
  (cfg_init pc^0 l11 true))

(define-fun next_main (
                 (pc^0 Loc) (__disjvr_0^0 Int) (__disjvr_1^0 Int) (__disjvr_2^0 Int) (__disjvr_3^0 Int) (b_16^0 Int) (rt_11^0 Int) (st_15^0 Int) (x_14^0 Int)
                 (pc^post Loc) (__disjvr_0^post Int) (__disjvr_1^post Int) (__disjvr_2^post Int) (__disjvr_3^post Int) (b_16^post Int) (rt_11^post Int) (st_15^post Int) (x_14^post Int)
             ) Bool
  (or
    (cfg_trans2 pc^0 l0 pc^post l1 (and (and (and (and (and (and (and (and (<= 1 (+ 0 x_14^0)) (= b_16^post 1)) (= __disjvr_0^0 __disjvr_0^post)) (= __disjvr_1^0 __disjvr_1^post)) (= __disjvr_2^0 __disjvr_2^post)) (= __disjvr_3^0 __disjvr_3^post)) (= rt_11^0 rt_11^post)) (= st_15^0 st_15^post)) (= x_14^0 x_14^post)))
    (cfg_trans2 pc^0 l2 pc^post l4 (and (and (and (and (and (and (and (and (= __disjvr_0^post __disjvr_0^0) (= __disjvr_0^0 __disjvr_0^post)) (= __disjvr_1^0 __disjvr_1^post)) (= __disjvr_2^0 __disjvr_2^post)) (= __disjvr_3^0 __disjvr_3^post)) (= b_16^0 b_16^post)) (= rt_11^0 rt_11^post)) (= st_15^0 st_15^post)) (= x_14^0 x_14^post)))
    (cfg_trans2 pc^0 l4 pc^post l3 (and (and (and (and (and (and (and (and (and (<= 1 (+ 0 b_16^0)) (<= (+ 0 b_16^0) 1)) (= x_14^post (+ -1 x_14^0))) (= b_16^post 0)) (= __disjvr_0^0 __disjvr_0^post)) (= __disjvr_1^0 __disjvr_1^post)) (= __disjvr_2^0 __disjvr_2^post)) (= __disjvr_3^0 __disjvr_3^post)) (= rt_11^0 rt_11^post)) (= st_15^0 st_15^post)))
    (cfg_trans2 pc^0 l1 pc^post l5 (and (and (and (and (and (and (and (and (and (<= 0 (+ 0 x_14^0)) (<= (+ 0 x_14^0) 0)) (= rt_11^post (+ 0 st_15^0))) (= __disjvr_0^0 __disjvr_0^post)) (= __disjvr_1^0 __disjvr_1^post)) (= __disjvr_2^0 __disjvr_2^post)) (= __disjvr_3^0 __disjvr_3^post)) (= b_16^0 b_16^post)) (= st_15^0 st_15^post)) (= x_14^0 x_14^post)))
    (cfg_trans2 pc^0 l1 pc^post l6 (and (and (and (and (and (and (and (and (= __disjvr_1^post __disjvr_1^0) (= __disjvr_0^0 __disjvr_0^post)) (= __disjvr_1^0 __disjvr_1^post)) (= __disjvr_2^0 __disjvr_2^post)) (= __disjvr_3^0 __disjvr_3^post)) (= b_16^0 b_16^post)) (= rt_11^0 rt_11^post)) (= st_15^0 st_15^post)) (= x_14^0 x_14^post)))
    (cfg_trans2 pc^0 l6 pc^post l3 (and (and (and (and (and (and (and (and (and (<= 1 (+ 0 b_16^0)) (<= (+ 0 b_16^0) 1)) (= x_14^post (+ -1 x_14^0))) (= b_16^post 0)) (= __disjvr_0^0 __disjvr_0^post)) (= __disjvr_1^0 __disjvr_1^post)) (= __disjvr_2^0 __disjvr_2^post)) (= __disjvr_3^0 __disjvr_3^post)) (= rt_11^0 rt_11^post)) (= st_15^0 st_15^post)))
    (cfg_trans2 pc^0 l7 pc^post l5 (and (and (and (and (and (and (and (and (and (<= 0 (+ 0 x_14^0)) (<= (+ 0 x_14^0) 0)) (= rt_11^post (+ 0 st_15^0))) (= __disjvr_0^0 __disjvr_0^post)) (= __disjvr_1^0 __disjvr_1^post)) (= __disjvr_2^0 __disjvr_2^post)) (= __disjvr_3^0 __disjvr_3^post)) (= b_16^0 b_16^post)) (= st_15^0 st_15^post)) (= x_14^0 x_14^post)))
    (cfg_trans2 pc^0 l7 pc^post l8 (and (and (and (and (and (and (and (and (= __disjvr_2^post __disjvr_2^0) (= __disjvr_0^0 __disjvr_0^post)) (= __disjvr_1^0 __disjvr_1^post)) (= __disjvr_2^0 __disjvr_2^post)) (= __disjvr_3^0 __disjvr_3^post)) (= b_16^0 b_16^post)) (= rt_11^0 rt_11^post)) (= st_15^0 st_15^post)) (= x_14^0 x_14^post)))
    (cfg_trans2 pc^0 l8 pc^post l9 (and (and (and (and (and (and (and (and (= __disjvr_3^post __disjvr_3^0) (= __disjvr_0^0 __disjvr_0^post)) (= __disjvr_1^0 __disjvr_1^post)) (= __disjvr_2^0 __disjvr_2^post)) (= __disjvr_3^0 __disjvr_3^post)) (= b_16^0 b_16^post)) (= rt_11^0 rt_11^post)) (= st_15^0 st_15^post)) (= x_14^0 x_14^post)))
    (cfg_trans2 pc^0 l9 pc^post l1 (exists ( (x_14^1 Int) ) (and (and (and (and (and (and (and (and (= x_14^1 (+ 1 x_14^0)) (= b_16^post 1)) (= x_14^post (+ 0 (* -1 x_14^1)))) (= __disjvr_0^0 __disjvr_0^post)) (= __disjvr_1^0 __disjvr_1^post)) (= __disjvr_2^0 __disjvr_2^post)) (= __disjvr_3^0 __disjvr_3^post)) (= rt_11^0 rt_11^post)) (= st_15^0 st_15^post))))
    (cfg_trans2 pc^0 l3 pc^post l7 (and (and (and (and (and (and (and (= x_14^post (+ 0 (* -1 x_14^0))) (= __disjvr_0^0 __disjvr_0^post)) (= __disjvr_1^0 __disjvr_1^post)) (= __disjvr_2^0 __disjvr_2^post)) (= __disjvr_3^0 __disjvr_3^post)) (= b_16^0 b_16^post)) (= rt_11^0 rt_11^post)) (= st_15^0 st_15^post)))
    (cfg_trans2 pc^0 l10 pc^post l7 (and (and (and (and (and (and (and (= x_14^post (+ 0 (* -1 x_14^0))) (= __disjvr_0^0 __disjvr_0^post)) (= __disjvr_1^0 __disjvr_1^post)) (= __disjvr_2^0 __disjvr_2^post)) (= __disjvr_3^0 __disjvr_3^post)) (= b_16^0 b_16^post)) (= rt_11^0 rt_11^post)) (= st_15^0 st_15^post)))
    (cfg_trans2 pc^0 l11 pc^post l0 (and (and (and (and (and (and (and (= __disjvr_0^0 __disjvr_0^post) (= __disjvr_1^0 __disjvr_1^post)) (= __disjvr_2^0 __disjvr_2^post)) (= __disjvr_3^0 __disjvr_3^post)) (= b_16^0 b_16^post)) (= rt_11^0 rt_11^post)) (= st_15^0 st_15^post)) (= x_14^0 x_14^post)))
  )
)
