(declare-sort Loc 0)
(declare-const l0 Loc)
(declare-const l1 Loc)
(declare-const l2 Loc)
(declare-const l3 Loc)
(declare-const l4 Loc)
(declare-const l5 Loc)
(declare-const l6 Loc)
(declare-const l7 Loc)
(declare-const l8 Loc)
(declare-const l9 Loc)
(assert (distinct l0 l1 l2 l3 l4 l5 l6 l7 l8 l9))

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

(define-fun init_main ( (pc^0 Loc) (i1^0 Int) (i2^0 Int) (i3^0 Int) (i4^0 Int) (n^0 Int) ) Bool
  (cfg_init pc^0 l9 true))

(define-fun next_main (
                 (pc^0 Loc) (i1^0 Int) (i2^0 Int) (i3^0 Int) (i4^0 Int) (n^0 Int)
                 (pc^post Loc) (i1^post Int) (i2^post Int) (i3^post Int) (i4^post Int) (n^post Int)
             ) Bool
  (or
    (cfg_trans2 pc^0 l0 pc^post l1 (and (and (and (and (and (<= 1 (+ 0 i4^0)) (= i4^post (+ -1 i4^0))) (= i1^0 i1^post)) (= i2^0 i2^post)) (= i3^0 i3^post)) (= n^0 n^post)))
    (cfg_trans2 pc^0 l1 pc^post l0 (and (and (and (and (= i1^0 i1^post) (= i2^0 i2^post)) (= i3^0 i3^post)) (= i4^0 i4^post)) (= n^0 n^post)))
    (cfg_trans2 pc^0 l2 pc^post l0 (and (and (and (and (and (<= (+ 0 n^0) (+ 0 i3^0)) (= i4^post (+ 0 i3^0))) (= i1^0 i1^post)) (= i2^0 i2^post)) (= i3^0 i3^post)) (= n^0 n^post)))
    (cfg_trans2 pc^0 l2 pc^post l3 (and (and (and (and (and (<= (+ 1 i3^0) (+ 0 n^0)) (= i3^post (+ 1 i3^0))) (= i1^0 i1^post)) (= i2^0 i2^post)) (= i4^0 i4^post)) (= n^0 n^post)))
    (cfg_trans2 pc^0 l3 pc^post l2 (and (and (and (and (= i1^0 i1^post) (= i2^0 i2^post)) (= i3^0 i3^post)) (= i4^0 i4^post)) (= n^0 n^post)))
    (cfg_trans2 pc^0 l4 pc^post l2 (and (and (and (and (and (<= (+ 0 i2^0) 0) (= i3^post (+ 0 i2^0))) (= i1^0 i1^post)) (= i2^0 i2^post)) (= i4^0 i4^post)) (= n^0 n^post)))
    (cfg_trans2 pc^0 l4 pc^post l5 (and (and (and (and (and (<= 1 (+ 0 i2^0)) (= i2^post (+ -1 i2^0))) (= i1^0 i1^post)) (= i3^0 i3^post)) (= i4^0 i4^post)) (= n^0 n^post)))
    (cfg_trans2 pc^0 l5 pc^post l4 (and (and (and (and (= i1^0 i1^post) (= i2^0 i2^post)) (= i3^0 i3^post)) (= i4^0 i4^post)) (= n^0 n^post)))
    (cfg_trans2 pc^0 l6 pc^post l4 (and (and (and (and (and (<= (+ 0 n^0) (+ 0 i1^0)) (= i2^post (+ 0 i1^0))) (= i1^0 i1^post)) (= i3^0 i3^post)) (= i4^0 i4^post)) (= n^0 n^post)))
    (cfg_trans2 pc^0 l6 pc^post l7 (and (and (and (and (and (<= (+ 1 i1^0) (+ 0 n^0)) (= i1^post (+ 1 i1^0))) (= i2^0 i2^post)) (= i3^0 i3^post)) (= i4^0 i4^post)) (= n^0 n^post)))
    (cfg_trans2 pc^0 l7 pc^post l6 (and (and (and (and (= i1^0 i1^post) (= i2^0 i2^post)) (= i3^0 i3^post)) (= i4^0 i4^post)) (= n^0 n^post)))
    (cfg_trans2 pc^0 l8 pc^post l6 (and (and (and (and (= i1^0 i1^post) (= i2^0 i2^post)) (= i3^0 i3^post)) (= i4^0 i4^post)) (= n^0 n^post)))
    (cfg_trans2 pc^0 l9 pc^post l8 (and (and (and (and (= i1^0 i1^post) (= i2^0 i2^post)) (= i3^0 i3^post)) (= i4^0 i4^post)) (= n^0 n^post)))
  )
)
