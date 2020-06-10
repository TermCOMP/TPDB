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
(declare-const l10 Loc)
(assert (distinct l0 l1 l2 l3 l4 l5 l6 l7 l8 l9 l10))

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

(define-fun init_main ( (pc^0 Loc) (oldX0^0 Int) (oldX1^0 Int) (oldX2^0 Int) (oldX3^0 Int) (oldX4^0 Int) (oldX5^0 Int) (oldX6^0 Int) (oldX7^0 Int) (x0^0 Int) (x1^0 Int) (x2^0 Int) (x3^0 Int) ) Bool
  (cfg_init pc^0 l10 true))

(define-fun next_main (
                 (pc^0 Loc) (oldX0^0 Int) (oldX1^0 Int) (oldX2^0 Int) (oldX3^0 Int) (oldX4^0 Int) (oldX5^0 Int) (oldX6^0 Int) (oldX7^0 Int) (x0^0 Int) (x1^0 Int) (x2^0 Int) (x3^0 Int)
                 (pc^post Loc) (oldX0^post Int) (oldX1^post Int) (oldX2^post Int) (oldX3^post Int) (oldX4^post Int) (oldX5^post Int) (oldX6^post Int) (oldX7^post Int) (x0^post Int) (x1^post Int) (x2^post Int) (x3^post Int)
             ) Bool
  (or
    (cfg_trans2 pc^0 l0 pc^post l1 (and (and (and (and (and (and (and (and (and (and (and (= oldX0^post (+ 0 x0^0)) (= oldX1^post (+ 0 x1^0))) (= oldX2^post (+ 0 x2^0))) (= oldX3^post (+ 0 x3^0))) (= x0^post (+ 0 oldX0^post))) (= x1^post (+ 0 oldX1^post))) (= x2^post (+ -1 oldX2^post))) (= x3^post (+ -1 oldX3^post))) (= oldX4^0 oldX4^post)) (= oldX5^0 oldX5^post)) (= oldX6^0 oldX6^post)) (= oldX7^0 oldX7^post)))
    (cfg_trans2 pc^0 l2 pc^post l0 (and (and (and (and (and (and (and (and (and (and (and (and (= oldX0^post (+ 0 x0^0)) (= oldX1^post (+ 0 x1^0))) (= oldX2^post (+ 0 x2^0))) (= oldX3^post (+ 0 x3^0))) (<= 1 (+ 0 oldX2^post))) (= x0^post (+ 0 oldX0^post))) (= x1^post (+ 0 oldX1^post))) (= x2^post (+ 0 oldX2^post))) (= x3^post (+ 0 oldX3^post))) (= oldX4^0 oldX4^post)) (= oldX5^0 oldX5^post)) (= oldX6^0 oldX6^post)) (= oldX7^0 oldX7^post)))
    (cfg_trans2 pc^0 l2 pc^post l0 (and (and (and (and (and (and (and (and (and (and (and (and (= oldX0^post (+ 0 x0^0)) (= oldX1^post (+ 0 x1^0))) (= oldX2^post (+ 0 x2^0))) (= oldX3^post (+ 0 x3^0))) (<= (+ 1 oldX2^post) 0)) (= x0^post (+ 0 oldX0^post))) (= x1^post (+ 0 oldX1^post))) (= x2^post (+ 0 oldX2^post))) (= x3^post (+ 0 oldX3^post))) (= oldX4^0 oldX4^post)) (= oldX5^0 oldX5^post)) (= oldX6^0 oldX6^post)) (= oldX7^0 oldX7^post)))
    (cfg_trans2 pc^0 l2 pc^post l3 (and (and (and (and (and (and (and (and (and (and (and (and (and (= oldX0^post (+ 0 x0^0)) (= oldX1^post (+ 0 x1^0))) (= oldX2^post (+ 0 x2^0))) (= oldX3^post (+ 0 x3^0))) (<= (+ 0 oldX2^post) 0)) (<= 0 (+ 0 oldX2^post))) (= x0^post (+ 0 oldX0^post))) (= x1^post (+ 0 oldX1^post))) (= x2^post (+ 0 oldX2^post))) (= x3^post (+ 0 oldX3^post))) (= oldX4^0 oldX4^post)) (= oldX5^0 oldX5^post)) (= oldX6^0 oldX6^post)) (= oldX7^0 oldX7^post)))
    (cfg_trans2 pc^0 l4 pc^post l5 (and (and (and (and (and (and (and (and (and (and (and (and (= oldX0^post (+ 0 x0^0)) (= oldX1^post (+ 0 x1^0))) (= oldX2^post (+ 0 x2^0))) (= oldX3^post (+ 0 x3^0))) (<= (+ 0 oldX3^post) 0)) (= x0^post (+ 0 oldX0^post))) (= x1^post (+ 0 oldX1^post))) (= x2^post (+ 0 oldX2^post))) (= x3^post (+ 0 oldX3^post))) (= oldX4^0 oldX4^post)) (= oldX5^0 oldX5^post)) (= oldX6^0 oldX6^post)) (= oldX7^0 oldX7^post)))
    (cfg_trans2 pc^0 l4 pc^post l5 (and (and (and (and (and (and (and (and (and (and (and (and (= oldX0^post (+ 0 x0^0)) (= oldX1^post (+ 0 x1^0))) (= oldX2^post (+ 0 x2^0))) (= oldX3^post (+ 0 x3^0))) (<= (+ 0 oldX2^post) 0)) (= x0^post (+ 0 oldX0^post))) (= x1^post (+ 0 oldX1^post))) (= x2^post (+ 0 oldX2^post))) (= x3^post (+ 0 oldX3^post))) (= oldX4^0 oldX4^post)) (= oldX5^0 oldX5^post)) (= oldX6^0 oldX6^post)) (= oldX7^0 oldX7^post)))
    (cfg_trans2 pc^0 l4 pc^post l2 (and (and (and (and (and (and (and (and (and (and (and (and (and (= oldX0^post (+ 0 x0^0)) (= oldX1^post (+ 0 x1^0))) (= oldX2^post (+ 0 x2^0))) (= oldX3^post (+ 0 x3^0))) (<= 1 (+ 0 oldX2^post))) (<= 1 (+ 0 oldX3^post))) (= x0^post (+ 0 oldX0^post))) (= x1^post (+ 0 oldX1^post))) (= x2^post (+ 0 oldX2^post))) (= x3^post (+ 0 oldX3^post))) (= oldX4^0 oldX4^post)) (= oldX5^0 oldX5^post)) (= oldX6^0 oldX6^post)) (= oldX7^0 oldX7^post)))
    (cfg_trans2 pc^0 l3 pc^post l1 (and (and (and (and (and (and (and (and (and (and (and (= oldX0^post (+ 0 x0^0)) (= oldX1^post (+ 0 x1^0))) (= oldX2^post (+ 0 x2^0))) (= oldX3^post (+ 0 x3^0))) (= x0^post (+ 0 oldX0^post))) (= x1^post (+ 1 oldX1^post))) (= x2^post (+ 0 oldX0^post))) (= x3^post (+ 0 oldX3^post))) (= oldX4^0 oldX4^post)) (= oldX5^0 oldX5^post)) (= oldX6^0 oldX6^post)) (= oldX7^0 oldX7^post)))
    (cfg_trans2 pc^0 l6 pc^post l4 (and (and (and (and (and (and (and (and (and (and (and (and (= oldX0^post (+ 0 x0^0)) (= oldX1^post (+ 0 x1^0))) (= oldX2^post (+ 0 x2^0))) (= oldX3^post (+ 0 x3^0))) (<= 1 (+ 0 oldX2^post))) (= x0^post (+ 0 oldX0^post))) (= x1^post (+ 0 oldX1^post))) (= x2^post (+ 0 oldX2^post))) (= x3^post (+ 0 oldX3^post))) (= oldX4^0 oldX4^post)) (= oldX5^0 oldX5^post)) (= oldX6^0 oldX6^post)) (= oldX7^0 oldX7^post)))
    (cfg_trans2 pc^0 l6 pc^post l4 (and (and (and (and (and (and (and (and (and (and (and (and (= oldX0^post (+ 0 x0^0)) (= oldX1^post (+ 0 x1^0))) (= oldX2^post (+ 0 x2^0))) (= oldX3^post (+ 0 x3^0))) (<= (+ 1 oldX2^post) 0)) (= x0^post (+ 0 oldX0^post))) (= x1^post (+ 0 oldX1^post))) (= x2^post (+ 0 oldX2^post))) (= x3^post (+ 0 oldX3^post))) (= oldX4^0 oldX4^post)) (= oldX5^0 oldX5^post)) (= oldX6^0 oldX6^post)) (= oldX7^0 oldX7^post)))
    (cfg_trans2 pc^0 l6 pc^post l3 (and (and (and (and (and (and (and (and (and (and (and (and (and (= oldX0^post (+ 0 x0^0)) (= oldX1^post (+ 0 x1^0))) (= oldX2^post (+ 0 x2^0))) (= oldX3^post (+ 0 x3^0))) (<= (+ 0 oldX2^post) 0)) (<= 0 (+ 0 oldX2^post))) (= x0^post (+ 0 oldX0^post))) (= x1^post (+ 0 oldX1^post))) (= x2^post (+ 0 oldX2^post))) (= x3^post (+ 0 oldX3^post))) (= oldX4^0 oldX4^post)) (= oldX5^0 oldX5^post)) (= oldX6^0 oldX6^post)) (= oldX7^0 oldX7^post)))
    (cfg_trans2 pc^0 l5 pc^post l7 (and (and (and (and (and (and (and (and (and (and (and (= oldX0^post (+ 0 x0^0)) (= oldX1^post (+ 0 x1^0))) (= oldX2^post (+ 0 x2^0))) (= oldX3^post (+ 0 x3^0))) (= oldX4^post oldX4^post)) (= oldX5^post oldX5^post)) (= oldX6^post oldX6^post)) (= oldX7^post oldX7^post)) (= x0^post (+ 0 oldX4^post))) (= x1^post (+ 0 oldX5^post))) (= x2^post (+ 0 oldX6^post))) (= x3^post (+ 0 oldX7^post))))
    (cfg_trans2 pc^0 l1 pc^post l6 (and (and (and (and (and (and (and (and (and (and (and (and (= oldX0^post (+ 0 x0^0)) (= oldX1^post (+ 0 x1^0))) (= oldX2^post (+ 0 x2^0))) (= oldX3^post (+ 0 x3^0))) (<= 1 (+ 0 oldX0^post))) (= x0^post (+ 0 oldX0^post))) (= x1^post (+ 0 oldX1^post))) (= x2^post (+ 0 oldX2^post))) (= x3^post (+ 0 oldX3^post))) (= oldX4^0 oldX4^post)) (= oldX5^0 oldX5^post)) (= oldX6^0 oldX6^post)) (= oldX7^0 oldX7^post)))
    (cfg_trans2 pc^0 l1 pc^post l5 (and (and (and (and (and (and (and (and (and (and (and (and (= oldX0^post (+ 0 x0^0)) (= oldX1^post (+ 0 x1^0))) (= oldX2^post (+ 0 x2^0))) (= oldX3^post (+ 0 x3^0))) (<= (+ 0 oldX0^post) 0)) (= x0^post (+ 0 oldX0^post))) (= x1^post (+ 0 oldX1^post))) (= x2^post (+ 0 oldX2^post))) (= x3^post (+ 0 oldX3^post))) (= oldX4^0 oldX4^post)) (= oldX5^0 oldX5^post)) (= oldX6^0 oldX6^post)) (= oldX7^0 oldX7^post)))
    (cfg_trans2 pc^0 l8 pc^post l1 (and (and (and (and (and (and (and (and (and (and (and (= oldX0^post (+ 0 x0^0)) (= oldX1^post (+ 0 x1^0))) (= oldX2^post (+ 0 x2^0))) (= oldX3^post (+ 0 x3^0))) (= oldX4^post oldX4^post)) (= oldX5^post oldX5^post)) (= x0^post (+ 0 oldX4^post))) (= x1^post 0)) (= x2^post (+ 0 oldX4^post))) (= x3^post (+ 0 oldX5^post))) (= oldX6^0 oldX6^post)) (= oldX7^0 oldX7^post)))
    (cfg_trans2 pc^0 l9 pc^post l8 (and (and (and (and (and (and (and (and (and (and (and (= oldX0^post (+ 0 x0^0)) (= oldX1^post (+ 0 x1^0))) (= oldX2^post (+ 0 x2^0))) (= oldX3^post (+ 0 x3^0))) (= oldX4^post oldX4^post)) (= oldX5^post oldX5^post)) (= oldX6^post oldX6^post)) (= oldX7^post oldX7^post)) (= x0^post (+ 0 oldX4^post))) (= x1^post (+ 0 oldX5^post))) (= x2^post (+ 0 oldX6^post))) (= x3^post (+ 0 oldX7^post))))
    (cfg_trans2 pc^0 l9 pc^post l0 (and (and (and (and (and (and (and (and (and (and (and (= oldX0^0 oldX0^post) (= oldX1^0 oldX1^post)) (= oldX2^0 oldX2^post)) (= oldX3^0 oldX3^post)) (= oldX4^0 oldX4^post)) (= oldX5^0 oldX5^post)) (= oldX6^0 oldX6^post)) (= oldX7^0 oldX7^post)) (= x0^0 x0^post)) (= x1^0 x1^post)) (= x2^0 x2^post)) (= x3^0 x3^post)))
    (cfg_trans2 pc^0 l9 pc^post l2 (and (and (and (and (and (and (and (and (and (and (and (= oldX0^0 oldX0^post) (= oldX1^0 oldX1^post)) (= oldX2^0 oldX2^post)) (= oldX3^0 oldX3^post)) (= oldX4^0 oldX4^post)) (= oldX5^0 oldX5^post)) (= oldX6^0 oldX6^post)) (= oldX7^0 oldX7^post)) (= x0^0 x0^post)) (= x1^0 x1^post)) (= x2^0 x2^post)) (= x3^0 x3^post)))
    (cfg_trans2 pc^0 l9 pc^post l4 (and (and (and (and (and (and (and (and (and (and (and (= oldX0^0 oldX0^post) (= oldX1^0 oldX1^post)) (= oldX2^0 oldX2^post)) (= oldX3^0 oldX3^post)) (= oldX4^0 oldX4^post)) (= oldX5^0 oldX5^post)) (= oldX6^0 oldX6^post)) (= oldX7^0 oldX7^post)) (= x0^0 x0^post)) (= x1^0 x1^post)) (= x2^0 x2^post)) (= x3^0 x3^post)))
    (cfg_trans2 pc^0 l9 pc^post l3 (and (and (and (and (and (and (and (and (and (and (and (= oldX0^0 oldX0^post) (= oldX1^0 oldX1^post)) (= oldX2^0 oldX2^post)) (= oldX3^0 oldX3^post)) (= oldX4^0 oldX4^post)) (= oldX5^0 oldX5^post)) (= oldX6^0 oldX6^post)) (= oldX7^0 oldX7^post)) (= x0^0 x0^post)) (= x1^0 x1^post)) (= x2^0 x2^post)) (= x3^0 x3^post)))
    (cfg_trans2 pc^0 l9 pc^post l6 (and (and (and (and (and (and (and (and (and (and (and (= oldX0^0 oldX0^post) (= oldX1^0 oldX1^post)) (= oldX2^0 oldX2^post)) (= oldX3^0 oldX3^post)) (= oldX4^0 oldX4^post)) (= oldX5^0 oldX5^post)) (= oldX6^0 oldX6^post)) (= oldX7^0 oldX7^post)) (= x0^0 x0^post)) (= x1^0 x1^post)) (= x2^0 x2^post)) (= x3^0 x3^post)))
    (cfg_trans2 pc^0 l9 pc^post l5 (and (and (and (and (and (and (and (and (and (and (and (= oldX0^0 oldX0^post) (= oldX1^0 oldX1^post)) (= oldX2^0 oldX2^post)) (= oldX3^0 oldX3^post)) (= oldX4^0 oldX4^post)) (= oldX5^0 oldX5^post)) (= oldX6^0 oldX6^post)) (= oldX7^0 oldX7^post)) (= x0^0 x0^post)) (= x1^0 x1^post)) (= x2^0 x2^post)) (= x3^0 x3^post)))
    (cfg_trans2 pc^0 l9 pc^post l1 (and (and (and (and (and (and (and (and (and (and (and (= oldX0^0 oldX0^post) (= oldX1^0 oldX1^post)) (= oldX2^0 oldX2^post)) (= oldX3^0 oldX3^post)) (= oldX4^0 oldX4^post)) (= oldX5^0 oldX5^post)) (= oldX6^0 oldX6^post)) (= oldX7^0 oldX7^post)) (= x0^0 x0^post)) (= x1^0 x1^post)) (= x2^0 x2^post)) (= x3^0 x3^post)))
    (cfg_trans2 pc^0 l9 pc^post l8 (and (and (and (and (and (and (and (and (and (and (and (= oldX0^0 oldX0^post) (= oldX1^0 oldX1^post)) (= oldX2^0 oldX2^post)) (= oldX3^0 oldX3^post)) (= oldX4^0 oldX4^post)) (= oldX5^0 oldX5^post)) (= oldX6^0 oldX6^post)) (= oldX7^0 oldX7^post)) (= x0^0 x0^post)) (= x1^0 x1^post)) (= x2^0 x2^post)) (= x3^0 x3^post)))
    (cfg_trans2 pc^0 l9 pc^post l7 (and (and (and (and (and (and (and (and (and (and (and (= oldX0^0 oldX0^post) (= oldX1^0 oldX1^post)) (= oldX2^0 oldX2^post)) (= oldX3^0 oldX3^post)) (= oldX4^0 oldX4^post)) (= oldX5^0 oldX5^post)) (= oldX6^0 oldX6^post)) (= oldX7^0 oldX7^post)) (= x0^0 x0^post)) (= x1^0 x1^post)) (= x2^0 x2^post)) (= x3^0 x3^post)))
    (cfg_trans2 pc^0 l10 pc^post l9 (and (and (and (and (and (and (and (and (and (and (and (= oldX0^0 oldX0^post) (= oldX1^0 oldX1^post)) (= oldX2^0 oldX2^post)) (= oldX3^0 oldX3^post)) (= oldX4^0 oldX4^post)) (= oldX5^0 oldX5^post)) (= oldX6^0 oldX6^post)) (= oldX7^0 oldX7^post)) (= x0^0 x0^post)) (= x1^0 x1^post)) (= x2^0 x2^post)) (= x3^0 x3^post)))
  )
)
