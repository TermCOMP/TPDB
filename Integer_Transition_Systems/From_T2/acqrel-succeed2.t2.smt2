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

(define-fun init_main ( (pc^0 Loc) (A^0 Int) (R^0 Int) (dobreak^0 Int) (n^0 Int) ) Bool
  (cfg_init pc^0 l4 true))

(define-fun next_main (
                 (pc^0 Loc) (A^0 Int) (R^0 Int) (dobreak^0 Int) (n^0 Int)
                 (pc^post Loc) (A^post Int) (R^post Int) (dobreak^post Int) (n^post Int)
             ) Bool
  (or
    (cfg_trans2 pc^0 l0 pc^post l1 (exists ( (R^1 Int) ) (and (and (and (and (and (<= (+ 0 n^0) 0) (= R^1 0)) (= R^post 0)) (= dobreak^post dobreak^post)) (= A^0 A^post)) (= n^0 n^post))))
    (cfg_trans2 pc^0 l0 pc^post l2 (and (and (and (and (<= 1 (+ 0 n^0)) (= n^post (+ -1 n^0))) (= A^0 A^post)) (= R^0 R^post)) (= dobreak^0 dobreak^post)))
    (cfg_trans2 pc^0 l2 pc^post l0 (and (and (and (= A^0 A^post) (= R^0 R^post)) (= dobreak^0 dobreak^post)) (= n^0 n^post)))
    (cfg_trans2 pc^0 l1 pc^post l0 (exists ( (A^1 Int) ) (and (and (and (and (and (<= (+ 0 dobreak^0) 0) (= A^1 1)) (= A^post 0)) (= R^0 R^post)) (= dobreak^0 dobreak^post)) (= n^0 n^post))))
    (cfg_trans2 pc^0 l3 pc^post l1 (and (and (and (= A^post 0) (= R^post 0)) (= dobreak^post dobreak^post)) (= n^post n^post)))
    (cfg_trans2 pc^0 l4 pc^post l3 (and (and (and (= A^0 A^post) (= R^0 R^post)) (= dobreak^0 dobreak^post)) (= n^0 n^post)))
  )
)
