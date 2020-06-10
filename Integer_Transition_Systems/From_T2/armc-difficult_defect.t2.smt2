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

(define-fun init_main ( (pc^0 Loc) (c^0 Int) (p^0 Int) (s^0 Int) ) Bool
  (cfg_init pc^0 l3 true))

(define-fun next_main (
                 (pc^0 Loc) (c^0 Int) (p^0 Int) (s^0 Int)
                 (pc^post Loc) (c^post Int) (p^post Int) (s^post Int)
             ) Bool
  (or
    (cfg_trans2 pc^0 l0 pc^post l1 (and (and (and (<= (+ 1 p^0) (+ 0 c^0)) (= p^post (+ 0 s^0))) (= s^post (+ 1 s^0))) (= c^0 c^post)))
    (cfg_trans2 pc^0 l1 pc^post l0 (and (and (= c^0 c^post) (= p^0 p^post)) (= s^0 s^post)))
    (cfg_trans2 pc^0 l2 pc^post l0 (and (and (= s^post 1) (= p^post 1)) (= c^0 c^post)))
    (cfg_trans2 pc^0 l3 pc^post l2 (and (and (= c^0 c^post) (= p^0 p^post)) (= s^0 s^post)))
  )
)
