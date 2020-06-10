(declare-sort Loc 0)
(declare-const l0 Loc)
(declare-const l1 Loc)
(declare-const l2 Loc)
(declare-const l3 Loc)
(assert (distinct l0 l1 l2 l3))

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

(define-fun init_main ( (pc^0 Loc) (elem_13^0 Int) (l_11^0 Int) (len_98^0 Int) (x_12^0 Int) ) Bool
  (cfg_init pc^0 l3 true))

(define-fun next_main (
                 (pc^0 Loc) (elem_13^0 Int) (l_11^0 Int) (len_98^0 Int) (x_12^0 Int)
                 (pc^post Loc) (elem_13^post Int) (l_11^post Int) (len_98^post Int) (x_12^post Int)
             ) Bool
  (or
    (cfg_trans2 pc^0 l0 pc^post l1 (exists ( (len_98^1 Int) ) (and (and (and (and (and (and (and (and (and (and (<= 1 (+ 1 len_98^0)) (<= 1 (+ 0 len_98^0))) (= len_98^1 len_98^1)) (= elem_13^post (+ 0 l_11^0))) (<= 1 (+ 1 len_98^1))) (<= 1 (+ 0 len_98^1))) (= len_98^post len_98^post)) (<= 0 (+ 0 (* -1 elem_13^post)))) (<= (+ 0 (* -1 elem_13^post)) 0)) (= l_11^post (+ 0 x_12^0))) (= x_12^0 x_12^post))))
    (cfg_trans2 pc^0 l1 pc^post l0 (and (and (and (= elem_13^0 elem_13^post) (= l_11^0 l_11^post)) (= len_98^0 len_98^post)) (= x_12^0 x_12^post)))
    (cfg_trans2 pc^0 l2 pc^post l0 (and (and (and (= elem_13^0 elem_13^post) (= l_11^0 l_11^post)) (= len_98^0 len_98^post)) (= x_12^0 x_12^post)))
    (cfg_trans2 pc^0 l3 pc^post l2 (and (and (and (= elem_13^0 elem_13^post) (= l_11^0 l_11^post)) (= len_98^0 len_98^post)) (= x_12^0 x_12^post)))
  )
)
