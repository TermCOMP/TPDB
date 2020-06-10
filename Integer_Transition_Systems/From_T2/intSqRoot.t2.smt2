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

(define-fun init_main ( (pc^0 Loc) (N^0 Int) (p^0 Int) (q^0 Int) (r^0 Int) ) Bool
  (cfg_init pc^0 l5 true))

(define-fun next_main (
                 (pc^0 Loc) (N^0 Int) (p^0 Int) (q^0 Int) (r^0 Int)
                 (pc^post Loc) (N^post Int) (p^post Int) (q^post Int) (r^post Int)
             ) Bool
  (or
    (cfg_trans2 pc^0 l0 pc^post l1 (and (and (and (= r^post (+ 0 p^0)) (= N^0 N^post)) (= p^0 p^post)) (= q^0 q^post)))
    (cfg_trans2 pc^0 l0 pc^post l1 (and (and (and (= q^post (+ 0 p^0)) (= N^0 N^post)) (= p^0 p^post)) (= r^0 r^post)))
    (cfg_trans2 pc^0 l2 pc^post l3 (and (and (and (and (<= (+ 0 q^0) (+ 1 r^0)) (= N^0 N^post)) (= p^0 p^post)) (= q^0 q^post)) (= r^0 r^post)))
    (cfg_trans2 pc^0 l2 pc^post l0 (and (and (and (and (<= (+ 2 r^0) (+ 0 q^0)) (= p^post p^post)) (= N^0 N^post)) (= q^0 q^post)) (= r^0 r^post)))
    (cfg_trans2 pc^0 l1 pc^post l2 (and (and (and (= N^0 N^post) (= p^0 p^post)) (= q^0 q^post)) (= r^0 r^post)))
    (cfg_trans2 pc^0 l4 pc^post l1 (and (and (and (= r^post 1) (= q^post (+ 0 N^0))) (= N^0 N^post)) (= p^0 p^post)))
    (cfg_trans2 pc^0 l5 pc^post l4 (and (and (and (= N^0 N^post) (= p^0 p^post)) (= q^0 q^post)) (= r^0 r^post)))
  )
)
