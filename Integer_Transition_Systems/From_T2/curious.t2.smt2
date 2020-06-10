(declare-sort Loc 0)
(declare-const l0 Loc)
(declare-const l2 Loc)
(declare-const l3 Loc)
(declare-const l1 Loc)
(declare-const l4 Loc)
(declare-const l5 Loc)
(assert (distinct l0 l2 l3 l1 l4 l5))

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

(define-fun init_main ( (pc^0 Loc) (__disjvr_0^0 Int) (b^0 Int) ) Bool
  (cfg_init pc^0 l5 true))

(define-fun next_main (
                 (pc^0 Loc) (__disjvr_0^0 Int) (b^0 Int)
                 (pc^post Loc) (__disjvr_0^post Int) (b^post Int)
             ) Bool
  (or
    (cfg_trans2 pc^0 l0 pc^post l2 (and (and (<= 0 (+ 0 b^0)) (= b^post 1)) (= __disjvr_0^0 __disjvr_0^post)))
    (cfg_trans2 pc^0 l2 pc^post l3 (and (and (= __disjvr_0^post __disjvr_0^0) (= __disjvr_0^0 __disjvr_0^post)) (= b^0 b^post)))
    (cfg_trans2 pc^0 l3 pc^post l1 (and (= b^post 0) (= __disjvr_0^0 __disjvr_0^post)))
    (cfg_trans2 pc^0 l1 pc^post l0 (and (= __disjvr_0^0 __disjvr_0^post) (= b^0 b^post)))
    (cfg_trans2 pc^0 l4 pc^post l0 (and (= __disjvr_0^0 __disjvr_0^post) (= b^0 b^post)))
    (cfg_trans2 pc^0 l5 pc^post l4 (and (= __disjvr_0^0 __disjvr_0^post) (= b^0 b^post)))
  )
)
