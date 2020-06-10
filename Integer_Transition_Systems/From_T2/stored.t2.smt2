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

(define-fun init_main ( (pc^0 Loc) (Stored^0 Int) (tmp1^0 Int) (tmp___02^0 Int) ) Bool
  (cfg_init pc^0 l10 true))

(define-fun next_main (
                 (pc^0 Loc) (Stored^0 Int) (tmp1^0 Int) (tmp___02^0 Int)
                 (pc^post Loc) (Stored^post Int) (tmp1^post Int) (tmp___02^post Int)
             ) Bool
  (or
    (cfg_trans2 pc^0 l0 pc^post l1 (and (and (and (and (<= (+ 0 tmp1^0) 0) (<= 0 (+ 0 tmp1^0))) (= Stored^post 1)) (= tmp1^0 tmp1^post)) (= tmp___02^0 tmp___02^post)))
    (cfg_trans2 pc^0 l0 pc^post l2 (and (and (and (<= 1 (+ 0 tmp1^0)) (= Stored^0 Stored^post)) (= tmp1^0 tmp1^post)) (= tmp___02^0 tmp___02^post)))
    (cfg_trans2 pc^0 l0 pc^post l2 (and (and (and (<= (+ 1 tmp1^0) 0) (= Stored^0 Stored^post)) (= tmp1^0 tmp1^post)) (= tmp___02^0 tmp___02^post)))
    (cfg_trans2 pc^0 l3 pc^post l0 (and (and (= tmp1^post tmp1^post) (= Stored^0 Stored^post)) (= tmp___02^0 tmp___02^post)))
    (cfg_trans2 pc^0 l4 pc^post l1 (and (and (and (and (<= (+ 0 tmp___02^0) 0) (<= 0 (+ 0 tmp___02^0))) (= Stored^0 Stored^post)) (= tmp1^0 tmp1^post)) (= tmp___02^0 tmp___02^post)))
    (cfg_trans2 pc^0 l4 pc^post l3 (and (and (and (<= 1 (+ 0 tmp___02^0)) (= Stored^0 Stored^post)) (= tmp1^0 tmp1^post)) (= tmp___02^0 tmp___02^post)))
    (cfg_trans2 pc^0 l4 pc^post l3 (and (and (and (<= (+ 1 tmp___02^0) 0) (= Stored^0 Stored^post)) (= tmp1^0 tmp1^post)) (= tmp___02^0 tmp___02^post)))
    (cfg_trans2 pc^0 l5 pc^post l6 (and (and (= Stored^0 Stored^post) (= tmp1^0 tmp1^post)) (= tmp___02^0 tmp___02^post)))
    (cfg_trans2 pc^0 l7 pc^post l4 (and (and (= tmp___02^post tmp___02^post) (= Stored^0 Stored^post)) (= tmp1^0 tmp1^post)))
    (cfg_trans2 pc^0 l1 pc^post l8 (and (and (= Stored^0 Stored^post) (= tmp1^0 tmp1^post)) (= tmp___02^0 tmp___02^post)))
    (cfg_trans2 pc^0 l8 pc^post l5 (and (and (and (<= 2 (+ 0 Stored^0)) (= Stored^0 Stored^post)) (= tmp1^0 tmp1^post)) (= tmp___02^0 tmp___02^post)))
    (cfg_trans2 pc^0 l8 pc^post l5 (and (and (and (<= (+ 1 Stored^0) 1) (= Stored^0 Stored^post)) (= tmp1^0 tmp1^post)) (= tmp___02^0 tmp___02^post)))
    (cfg_trans2 pc^0 l8 pc^post l5 (and (and (and (and (<= (+ 0 Stored^0) 1) (<= 1 (+ 0 Stored^0))) (= Stored^post 0)) (= tmp1^0 tmp1^post)) (= tmp___02^0 tmp___02^post)))
    (cfg_trans2 pc^0 l2 pc^post l7 (and (and (= Stored^0 Stored^post) (= tmp1^0 tmp1^post)) (= tmp___02^0 tmp___02^post)))
    (cfg_trans2 pc^0 l9 pc^post l7 (and (and (= Stored^post 0) (= tmp1^0 tmp1^post)) (= tmp___02^0 tmp___02^post)))
    (cfg_trans2 pc^0 l10 pc^post l9 (and (and (= Stored^0 Stored^post) (= tmp1^0 tmp1^post)) (= tmp___02^0 tmp___02^post)))
  )
)
