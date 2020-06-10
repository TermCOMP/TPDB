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
(assert (distinct l0 l1 l2 l3 l4 l5 l6 l7 l8))

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

(define-fun init_main ( (pc^0 Loc) (j^0 Int) (tmp3^0 Int) (x1^0 Int) (y2^0 Int) ) Bool
  (cfg_init pc^0 l8 true))

(define-fun next_main (
                 (pc^0 Loc) (j^0 Int) (tmp3^0 Int) (x1^0 Int) (y2^0 Int)
                 (pc^post Loc) (j^post Int) (tmp3^post Int) (x1^post Int) (y2^post Int)
             ) Bool
  (or
    (cfg_trans2 pc^0 l0 pc^post l1 (and (and (and (= x1^post (+ 0 j^0)) (= y2^post (+ 1 j^0))) (= tmp3^post tmp3^post)) (= j^0 j^post)))
    (cfg_trans2 pc^0 l0 pc^post l1 (and (and (and (= j^0 j^post) (= tmp3^0 tmp3^post)) (= x1^0 x1^post)) (= y2^0 y2^post)))
    (cfg_trans2 pc^0 l2 pc^post l3 (and (and (and (and (<= 4 (+ 0 j^0)) (= j^0 j^post)) (= tmp3^0 tmp3^post)) (= x1^0 x1^post)) (= y2^0 y2^post)))
    (cfg_trans2 pc^0 l2 pc^post l0 (and (and (and (and (<= (+ 1 j^0) 4) (= j^0 j^post)) (= tmp3^0 tmp3^post)) (= x1^0 x1^post)) (= y2^0 y2^post)))
    (cfg_trans2 pc^0 l4 pc^post l5 (and (and (and (= j^0 j^post) (= tmp3^0 tmp3^post)) (= x1^0 x1^post)) (= y2^0 y2^post)))
    (cfg_trans2 pc^0 l6 pc^post l2 (and (and (and (= j^0 j^post) (= tmp3^0 tmp3^post)) (= x1^0 x1^post)) (= y2^0 y2^post)))
    (cfg_trans2 pc^0 l3 pc^post l4 (and (and (and (= j^0 j^post) (= tmp3^0 tmp3^post)) (= x1^0 x1^post)) (= y2^0 y2^post)))
    (cfg_trans2 pc^0 l3 pc^post l4 (and (and (and (= j^0 j^post) (= tmp3^0 tmp3^post)) (= x1^0 x1^post)) (= y2^0 y2^post)))
    (cfg_trans2 pc^0 l1 pc^post l6 (and (and (and (= j^post (+ 1 j^0)) (= tmp3^0 tmp3^post)) (= x1^0 x1^post)) (= y2^0 y2^post)))
    (cfg_trans2 pc^0 l7 pc^post l6 (and (and (and (= j^post 0) (= tmp3^0 tmp3^post)) (= x1^0 x1^post)) (= y2^0 y2^post)))
    (cfg_trans2 pc^0 l8 pc^post l7 (and (and (and (= j^0 j^post) (= tmp3^0 tmp3^post)) (= x1^0 x1^post)) (= y2^0 y2^post)))
  )
)
