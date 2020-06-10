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

(define-fun init_main ( (pc^0 Loc) (result_11^0 Int) (t_16^0 Int) (t_22^0 Int) (temp0_14^0 Int) (x_13^0 Int) (y_15^0 Int) (y_21^0 Int) ) Bool
  (cfg_init pc^0 l4 true))

(define-fun next_main (
                 (pc^0 Loc) (result_11^0 Int) (t_16^0 Int) (t_22^0 Int) (temp0_14^0 Int) (x_13^0 Int) (y_15^0 Int) (y_21^0 Int)
                 (pc^post Loc) (result_11^post Int) (t_16^post Int) (t_22^post Int) (temp0_14^post Int) (x_13^post Int) (y_15^post Int) (y_21^post Int)
             ) Bool
  (or
    (cfg_trans2 pc^0 l0 pc^post l1 (and (and (and (and (and (and (= result_11^0 result_11^post) (= t_16^0 t_16^post)) (= t_22^0 t_22^post)) (= temp0_14^0 temp0_14^post)) (= x_13^0 x_13^post)) (= y_15^0 y_15^post)) (= y_21^0 y_21^post)))
    (cfg_trans2 pc^0 l1 pc^post l2 (and (and (and (and (and (and (and (and (<= 1 (+ 0 x_13^0)) (<= (+ 0 y_15^0) 0)) (= result_11^post (+ 0 temp0_14^0))) (= t_16^0 t_16^post)) (= t_22^0 t_22^post)) (= temp0_14^0 temp0_14^post)) (= x_13^0 x_13^post)) (= y_15^0 y_15^post)) (= y_21^0 y_21^post)))
    (cfg_trans2 pc^0 l1 pc^post l2 (and (and (and (and (and (and (and (and (<= (+ 0 x_13^0) 0) (= x_13^post x_13^post)) (= result_11^post (+ 0 temp0_14^0))) (<= (+ 0 x_13^post) 0)) (= t_16^0 t_16^post)) (= t_22^0 t_22^post)) (= temp0_14^0 temp0_14^post)) (= y_15^0 y_15^post)) (= y_21^0 y_21^post)))
    (cfg_trans2 pc^0 l1 pc^post l3 (exists ( (t_16^1 Int) (x_13^1 Int) (y_15^1 Int) ) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= y_21^post y_21^post) (= t_22^post t_22^post)) (<= 1 (+ 0 x_13^0))) (<= 1 (+ 0 y_15^0))) (= t_16^1 (+ 0 x_13^0))) (= x_13^1 (+ -2 y_15^0))) (= y_15^1 (+ 1 t_16^1))) (= t_16^post (+ 0 x_13^1))) (= x_13^post (+ -2 y_15^1))) (= y_15^post (+ 1 t_16^post))) (<= (+ 0 x_13^post) (+ -1 t_22^post))) (<= (+ -1 t_22^post) (+ 0 x_13^post))) (<= (+ 0 y_15^post) (+ 1 t_16^post))) (<= (+ 1 t_16^post) (+ 0 y_15^post))) (<= (+ 0 t_16^post) (+ -2 y_21^post))) (<= (+ -2 y_21^post) (+ 0 t_16^post))) (<= 1 (+ 0 y_21^post))) (<= 1 (+ 0 t_22^post))) (= result_11^0 result_11^post)) (= temp0_14^0 temp0_14^post))))
    (cfg_trans2 pc^0 l3 pc^post l1 (and (and (and (and (and (and (= result_11^0 result_11^post) (= t_16^0 t_16^post)) (= t_22^0 t_22^post)) (= temp0_14^0 temp0_14^post)) (= x_13^0 x_13^post)) (= y_15^0 y_15^post)) (= y_21^0 y_21^post)))
    (cfg_trans2 pc^0 l4 pc^post l0 (and (and (and (and (and (and (= result_11^0 result_11^post) (= t_16^0 t_16^post)) (= t_22^0 t_22^post)) (= temp0_14^0 temp0_14^post)) (= x_13^0 x_13^post)) (= y_15^0 y_15^post)) (= y_21^0 y_21^post)))
  )
)
