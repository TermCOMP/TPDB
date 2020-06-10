(declare-sort Loc 0)
(declare-const l0 Loc)
(declare-const l1 Loc)
(declare-const l2 Loc)
(declare-const l3 Loc)
(declare-const l4 Loc)
(declare-const l5 Loc)
(assert (distinct l0 l1 l2 l3 l4 l5))

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

(define-fun init_main ( (pc^0 Loc) (i_13^0 Int) (j_15^0 Int) (rt_11^0 Int) (s_16^0 Int) (s_17^0 Int) (st_14^0 Int) ) Bool
  (cfg_init pc^0 l5 true))

(define-fun next_main (
                 (pc^0 Loc) (i_13^0 Int) (j_15^0 Int) (rt_11^0 Int) (s_16^0 Int) (s_17^0 Int) (st_14^0 Int)
                 (pc^post Loc) (i_13^post Int) (j_15^post Int) (rt_11^post Int) (s_16^post Int) (s_17^post Int) (st_14^post Int)
             ) Bool
  (or
    (cfg_trans2 pc^0 l0 pc^post l1 (exists ( (i_13^1 Int) ) (and (and (and (and (and (and (= i_13^1 (+ 0 s_17^0)) (= j_15^post (+ 0 s_16^0))) (= i_13^post (+ 0 j_15^post))) (= rt_11^0 rt_11^post)) (= s_16^0 s_16^post)) (= s_17^0 s_17^post)) (= st_14^0 st_14^post))))
    (cfg_trans2 pc^0 l2 pc^post l3 (and (and (and (and (and (and (<= 500 (+ 0 i_13^0)) (= rt_11^post (+ 0 st_14^0))) (= i_13^0 i_13^post)) (= j_15^0 j_15^post)) (= s_16^0 s_16^post)) (= s_17^0 s_17^post)) (= st_14^0 st_14^post)))
    (cfg_trans2 pc^0 l2 pc^post l4 (and (and (and (and (and (and (<= (+ 1 i_13^0) 500) (= i_13^post (+ 1 i_13^0))) (= j_15^0 j_15^post)) (= rt_11^0 rt_11^post)) (= s_16^0 s_16^post)) (= s_17^0 s_17^post)) (= st_14^0 st_14^post)))
    (cfg_trans2 pc^0 l4 pc^post l2 (and (and (and (and (and (= i_13^0 i_13^post) (= j_15^0 j_15^post)) (= rt_11^0 rt_11^post)) (= s_16^0 s_16^post)) (= s_17^0 s_17^post)) (= st_14^0 st_14^post)))
    (cfg_trans2 pc^0 l1 pc^post l3 (and (and (and (and (and (and (<= 500 (+ 0 i_13^0)) (= rt_11^post (+ 0 st_14^0))) (= i_13^0 i_13^post)) (= j_15^0 j_15^post)) (= s_16^0 s_16^post)) (= s_17^0 s_17^post)) (= st_14^0 st_14^post)))
    (cfg_trans2 pc^0 l1 pc^post l2 (and (and (and (and (and (and (<= (+ 1 i_13^0) 500) (= i_13^post (+ 1 i_13^0))) (= j_15^0 j_15^post)) (= rt_11^0 rt_11^post)) (= s_16^0 s_16^post)) (= s_17^0 s_17^post)) (= st_14^0 st_14^post)))
    (cfg_trans2 pc^0 l5 pc^post l0 (and (and (and (and (and (= i_13^0 i_13^post) (= j_15^0 j_15^post)) (= rt_11^0 rt_11^post)) (= s_16^0 s_16^post)) (= s_17^0 s_17^post)) (= st_14^0 st_14^post)))
  )
)
