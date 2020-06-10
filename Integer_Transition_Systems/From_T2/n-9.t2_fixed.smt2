(declare-sort Loc 0)
(declare-const l0 Loc)
(declare-const l1 Loc)
(declare-const l2 Loc)
(declare-const l3 Loc)
(declare-const l5 Loc)
(declare-const l6 Loc)
(declare-const l4 Loc)
(declare-const l7 Loc)
(assert (distinct l0 l1 l2 l3 l5 l6 l4 l7))

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

(define-fun init_main ( (pc^0 Loc) (lt_15^0 Int) (lt_19^0 Int) (nd_12^0 Int) (p_14^0 Int) (rt_11^0 Int) (rv_18^0 Int) (st_17^0 Int) (x_13^0 Int) (y_16^0 Int) ) Bool
  (cfg_init pc^0 l7 true))

(define-fun next_main (
                 (pc^0 Loc) (lt_15^0 Int) (lt_19^0 Int) (nd_12^0 Int) (p_14^0 Int) (rt_11^0 Int) (rv_18^0 Int) (st_17^0 Int) (x_13^0 Int) (y_16^0 Int)
                 (pc^post Loc) (lt_15^post Int) (lt_19^post Int) (nd_12^post Int) (p_14^post Int) (rt_11^post Int) (rv_18^post Int) (st_17^post Int) (x_13^post Int) (y_16^post Int)
             ) Bool
  (or
    (cfg_trans2 pc^0 l0 pc^post l1 (and (and (and (and (and (and (and (and (= p_14^post (+ 0 x_13^0)) (= lt_15^0 lt_15^post)) (= lt_19^0 lt_19^post)) (= nd_12^0 nd_12^post)) (= rt_11^0 rt_11^post)) (= rv_18^0 rv_18^post)) (= st_17^0 st_17^post)) (= x_13^0 x_13^post)) (= y_16^0 y_16^post)))
    (cfg_trans2 pc^0 l1 pc^post l2 (and (and (and (and (and (and (and (and (and (<= (+ 0 y_16^0) (+ 0 lt_15^0)) (= lt_15^post lt_15^post)) (= rt_11^post (+ 0 st_17^0))) (= lt_19^0 lt_19^post)) (= nd_12^0 nd_12^post)) (= p_14^0 p_14^post)) (= rv_18^0 rv_18^post)) (= st_17^0 st_17^post)) (= x_13^0 x_13^post)) (= y_16^0 y_16^post)))
    (cfg_trans2 pc^0 l1 pc^post l3 (exists ( (nd_12^1 Int) ) (and (and (and (and (and (and (and (and (and (and (and (and (<= (+ 1 lt_15^0) (+ 0 y_16^0)) (= lt_15^post lt_15^post)) (= nd_12^1 nd_12^1)) (= rv_18^post (+ 0 nd_12^1))) (= nd_12^post nd_12^post)) (<= 0 (+ 0 rv_18^post))) (<= (+ 0 rv_18^post) 0)) (= lt_19^0 lt_19^post)) (= p_14^0 p_14^post)) (= rt_11^0 rt_11^post)) (= st_17^0 st_17^post)) (= x_13^0 x_13^post)) (= y_16^0 y_16^post))))
    (cfg_trans2 pc^0 l3 pc^post l1 (and (and (and (and (and (and (and (and (= lt_15^0 lt_15^post) (= lt_19^0 lt_19^post)) (= nd_12^0 nd_12^post)) (= p_14^0 p_14^post)) (= rt_11^0 rt_11^post)) (= rv_18^0 rv_18^post)) (= st_17^0 st_17^post)) (= x_13^0 x_13^post)) (= y_16^0 y_16^post)))
    (cfg_trans2 pc^0 l1 pc^post l5 (exists ( (nd_12^1 Int) ) (and (and (and (and (and (and (and (and (and (and (<= (+ 1 lt_15^0) (+ 0 y_16^0)) (= lt_15^post lt_15^post)) (= nd_12^1 nd_12^1)) (= rv_18^post (+ 0 nd_12^1))) (= nd_12^post nd_12^post)) (= lt_19^0 lt_19^post)) (= p_14^0 p_14^post)) (= rt_11^0 rt_11^post)) (= st_17^0 st_17^post)) (= x_13^0 x_13^post)) (= y_16^0 y_16^post))))
    (cfg_trans2 pc^0 l5 pc^post l6 (and (and (and (and (and (and (and (and (and (<= 1 (+ 0 rv_18^0)) (= lt_15^0 lt_15^post)) (= lt_19^0 lt_19^post)) (= nd_12^0 nd_12^post)) (= p_14^0 p_14^post)) (= rt_11^0 rt_11^post)) (= rv_18^0 rv_18^post)) (= st_17^0 st_17^post)) (= x_13^0 x_13^post)) (= y_16^0 y_16^post)))
    (cfg_trans2 pc^0 l5 pc^post l6 (and (and (and (and (and (and (and (and (and (<= (+ 1 rv_18^0) 0) (= lt_15^0 lt_15^post)) (= lt_19^0 lt_19^post)) (= nd_12^0 nd_12^post)) (= p_14^0 p_14^post)) (= rt_11^0 rt_11^post)) (= rv_18^0 rv_18^post)) (= st_17^0 st_17^post)) (= x_13^0 x_13^post)) (= y_16^0 y_16^post)))
    (cfg_trans2 pc^0 l6 pc^post l4 (and (and (and (and (and (and (and (and (= lt_19^post lt_19^post) (= lt_15^0 lt_15^post)) (= nd_12^0 nd_12^post)) (= p_14^0 p_14^post)) (= rt_11^0 rt_11^post)) (= rv_18^0 rv_18^post)) (= st_17^0 st_17^post)) (= x_13^0 x_13^post)) (= y_16^0 y_16^post)))
    (cfg_trans2 pc^0 l4 pc^post l1 (and (and (and (and (and (and (and (and (= lt_15^0 lt_15^post) (= lt_19^0 lt_19^post)) (= nd_12^0 nd_12^post)) (= p_14^0 p_14^post)) (= rt_11^0 rt_11^post)) (= rv_18^0 rv_18^post)) (= st_17^0 st_17^post)) (= x_13^0 x_13^post)) (= y_16^0 y_16^post)))
    (cfg_trans2 pc^0 l7 pc^post l0 (and (and (and (and (and (and (and (and (= lt_15^0 lt_15^post) (= lt_19^0 lt_19^post)) (= nd_12^0 nd_12^post)) (= p_14^0 p_14^post)) (= rt_11^0 rt_11^post)) (= rv_18^0 rv_18^post)) (= st_17^0 st_17^post)) (= x_13^0 x_13^post)) (= y_16^0 y_16^post)))
  )
)
