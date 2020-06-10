(declare-sort Loc 0)
(declare-const l0 Loc)
(declare-const l1 Loc)
(declare-const l2 Loc)
(declare-const l3 Loc)
(declare-const l5 Loc)
(declare-const l6 Loc)
(declare-const l7 Loc)
(declare-const l8 Loc)
(declare-const l4 Loc)
(declare-const l9 Loc)
(assert (distinct l0 l1 l2 l3 l5 l6 l7 l8 l4 l9))

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

(define-fun init_main ( (pc^0 Loc) (__disjvr_0^0 Int) (__disjvr_1^0 Int) (a_13^0 Int) (a_21^0 Int) (nondet_12^0 Int) (result_11^0 Int) (temp0_14^0 Int) (x_15^0 Int) ) Bool
  (cfg_init pc^0 l9 true))

(define-fun next_main (
                 (pc^0 Loc) (__disjvr_0^0 Int) (__disjvr_1^0 Int) (a_13^0 Int) (a_21^0 Int) (nondet_12^0 Int) (result_11^0 Int) (temp0_14^0 Int) (x_15^0 Int)
                 (pc^post Loc) (__disjvr_0^post Int) (__disjvr_1^post Int) (a_13^post Int) (a_21^post Int) (nondet_12^post Int) (result_11^post Int) (temp0_14^post Int) (x_15^post Int)
             ) Bool
  (or
    (cfg_trans2 pc^0 l0 pc^post l1 (and (and (and (and (and (and (and (= __disjvr_0^0 __disjvr_0^post) (= __disjvr_1^0 __disjvr_1^post)) (= a_13^0 a_13^post)) (= a_21^0 a_21^post)) (= nondet_12^0 nondet_12^post)) (= result_11^0 result_11^post)) (= temp0_14^0 temp0_14^post)) (= x_15^0 x_15^post)))
    (cfg_trans2 pc^0 l1 pc^post l2 (and (and (and (and (and (and (and (and (<= (+ 1 a_13^0) 1) (= result_11^post (+ 0 temp0_14^0))) (= __disjvr_0^0 __disjvr_0^post)) (= __disjvr_1^0 __disjvr_1^post)) (= a_13^0 a_13^post)) (= a_21^0 a_21^post)) (= nondet_12^0 nondet_12^post)) (= temp0_14^0 temp0_14^post)) (= x_15^0 x_15^post)))
    (cfg_trans2 pc^0 l1 pc^post l3 (exists ( (nondet_12^1 Int) ) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (<= 1 (+ 0 a_13^0)) (= nondet_12^1 nondet_12^1)) (= x_15^post (+ 0 nondet_12^1))) (= nondet_12^post nondet_12^post)) (<= (+ 0 a_13^0) (+ 0 (* 2 x_15^post)))) (<= (+ 0 (* 2 x_15^post)) (+ 0 a_13^0))) (= a_13^post (+ 0 x_15^post))) (<= (+ 0 a_13^post) (+ 0 x_15^post))) (<= (+ 0 x_15^post) (+ 0 a_13^post))) (<= 1 (+ 0 (* 2 x_15^post)))) (= __disjvr_0^0 __disjvr_0^post)) (= __disjvr_1^0 __disjvr_1^post)) (= a_21^0 a_21^post)) (= result_11^0 result_11^post)) (= temp0_14^0 temp0_14^post))))
    (cfg_trans2 pc^0 l3 pc^post l1 (and (and (and (and (and (and (and (= __disjvr_0^0 __disjvr_0^post) (= __disjvr_1^0 __disjvr_1^post)) (= a_13^0 a_13^post)) (= a_21^0 a_21^post)) (= nondet_12^0 nondet_12^post)) (= result_11^0 result_11^post)) (= temp0_14^0 temp0_14^post)) (= x_15^0 x_15^post)))
    (cfg_trans2 pc^0 l1 pc^post l5 (exists ( (nondet_12^1 Int) ) (and (and (and (and (and (and (and (and (and (= a_21^post a_21^post) (<= 1 (+ 0 a_13^0))) (= nondet_12^1 nondet_12^1)) (= x_15^post (+ 0 nondet_12^1))) (= nondet_12^post nondet_12^post)) (= __disjvr_0^0 __disjvr_0^post)) (= __disjvr_1^0 __disjvr_1^post)) (= a_13^0 a_13^post)) (= result_11^0 result_11^post)) (= temp0_14^0 temp0_14^post))))
    (cfg_trans2 pc^0 l5 pc^post l6 (and (and (and (and (and (and (and (and (= __disjvr_0^post __disjvr_0^0) (= __disjvr_0^0 __disjvr_0^post)) (= __disjvr_1^0 __disjvr_1^post)) (= a_13^0 a_13^post)) (= a_21^0 a_21^post)) (= nondet_12^0 nondet_12^post)) (= result_11^0 result_11^post)) (= temp0_14^0 temp0_14^post)) (= x_15^0 x_15^post)))
    (cfg_trans2 pc^0 l6 pc^post l7 (and (and (and (and (and (and (and (and (and (= a_13^post (+ 1 (* 3 a_13^0))) (<= (+ 0 a_13^post) (+ 1 (* 3 a_21^0)))) (<= (+ 1 (* 3 a_21^0)) (+ 0 a_13^post))) (= __disjvr_0^0 __disjvr_0^post)) (= __disjvr_1^0 __disjvr_1^post)) (= a_21^0 a_21^post)) (= nondet_12^0 nondet_12^post)) (= result_11^0 result_11^post)) (= temp0_14^0 temp0_14^post)) (= x_15^0 x_15^post)))
    (cfg_trans2 pc^0 l7 pc^post l8 (and (and (and (and (and (and (and (and (= __disjvr_1^post __disjvr_1^0) (= __disjvr_0^0 __disjvr_0^post)) (= __disjvr_1^0 __disjvr_1^post)) (= a_13^0 a_13^post)) (= a_21^0 a_21^post)) (= nondet_12^0 nondet_12^post)) (= result_11^0 result_11^post)) (= temp0_14^0 temp0_14^post)) (= x_15^0 x_15^post)))
    (cfg_trans2 pc^0 l8 pc^post l4 (and (and (and (and (and (and (and (and (<= 1 (+ 0 a_21^0)) (= __disjvr_0^0 __disjvr_0^post)) (= __disjvr_1^0 __disjvr_1^post)) (= a_13^0 a_13^post)) (= a_21^0 a_21^post)) (= nondet_12^0 nondet_12^post)) (= result_11^0 result_11^post)) (= temp0_14^0 temp0_14^post)) (= x_15^0 x_15^post)))
    (cfg_trans2 pc^0 l4 pc^post l1 (and (and (and (and (and (and (and (= __disjvr_0^0 __disjvr_0^post) (= __disjvr_1^0 __disjvr_1^post)) (= a_13^0 a_13^post)) (= a_21^0 a_21^post)) (= nondet_12^0 nondet_12^post)) (= result_11^0 result_11^post)) (= temp0_14^0 temp0_14^post)) (= x_15^0 x_15^post)))
    (cfg_trans2 pc^0 l9 pc^post l0 (and (and (and (and (and (and (and (= __disjvr_0^0 __disjvr_0^post) (= __disjvr_1^0 __disjvr_1^post)) (= a_13^0 a_13^post)) (= a_21^0 a_21^post)) (= nondet_12^0 nondet_12^post)) (= result_11^0 result_11^post)) (= temp0_14^0 temp0_14^post)) (= x_15^0 x_15^post)))
  )
)
