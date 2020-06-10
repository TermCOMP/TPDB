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
(declare-const l11 Loc)
(declare-const l12 Loc)
(declare-const l13 Loc)
(declare-const l14 Loc)
(assert (distinct l0 l1 l2 l3 l4 l5 l6 l7 l8 l9 l10 l11 l12 l13 l14))

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

(define-fun init_main ( (pc^0 Loc) (WItemsNum^0 Int) (__const_5^0 Int) (tmp1^0 Int) ) Bool
  (cfg_init pc^0 l14 true))

(define-fun next_main (
                 (pc^0 Loc) (WItemsNum^0 Int) (__const_5^0 Int) (tmp1^0 Int)
                 (pc^post Loc) (WItemsNum^post Int) (__const_5^post Int) (tmp1^post Int)
             ) Bool
  (or
    (cfg_trans2 pc^0 l0 pc^post l1 (and (and (and (<= (+ 1 __const_5^0) (+ 0 WItemsNum^0)) (= WItemsNum^0 WItemsNum^post)) (= __const_5^0 __const_5^post)) (= tmp1^0 tmp1^post)))
    (cfg_trans2 pc^0 l0 pc^post l2 (and (and (and (<= (+ 0 WItemsNum^0) (+ 0 __const_5^0)) (= tmp1^post tmp1^post)) (= WItemsNum^0 WItemsNum^post)) (= __const_5^0 __const_5^post)))
    (cfg_trans2 pc^0 l3 pc^post l4 (and (and (= WItemsNum^0 WItemsNum^post) (= __const_5^0 __const_5^post)) (= tmp1^0 tmp1^post)))
    (cfg_trans2 pc^0 l4 pc^post l0 (and (and (= WItemsNum^0 WItemsNum^post) (= __const_5^0 __const_5^post)) (= tmp1^0 tmp1^post)))
    (cfg_trans2 pc^0 l5 pc^post l6 (and (and (= WItemsNum^0 WItemsNum^post) (= __const_5^0 __const_5^post)) (= tmp1^0 tmp1^post)))
    (cfg_trans2 pc^0 l7 pc^post l8 (and (and (= WItemsNum^0 WItemsNum^post) (= __const_5^0 __const_5^post)) (= tmp1^0 tmp1^post)))
    (cfg_trans2 pc^0 l9 pc^post l10 (and (and (= WItemsNum^0 WItemsNum^post) (= __const_5^0 __const_5^post)) (= tmp1^0 tmp1^post)))
    (cfg_trans2 pc^0 l6 pc^post l3 (and (and (and (<= (+ 0 WItemsNum^0) 2) (= WItemsNum^0 WItemsNum^post)) (= __const_5^0 __const_5^post)) (= tmp1^0 tmp1^post)))
    (cfg_trans2 pc^0 l6 pc^post l5 (and (and (and (<= 3 (+ 0 WItemsNum^0)) (= WItemsNum^post (+ -1 WItemsNum^0))) (= __const_5^0 __const_5^post)) (= tmp1^0 tmp1^post)))
    (cfg_trans2 pc^0 l10 pc^post l11 (and (and (= WItemsNum^0 WItemsNum^post) (= __const_5^0 __const_5^post)) (= tmp1^0 tmp1^post)))
    (cfg_trans2 pc^0 l11 pc^post l10 (and (and (= WItemsNum^0 WItemsNum^post) (= __const_5^0 __const_5^post)) (= tmp1^0 tmp1^post)))
    (cfg_trans2 pc^0 l1 pc^post l5 (and (and (= WItemsNum^0 WItemsNum^post) (= __const_5^0 __const_5^post)) (= tmp1^0 tmp1^post)))
    (cfg_trans2 pc^0 l12 pc^post l4 (and (and (and (<= (+ 1 __const_5^0) (+ 0 WItemsNum^0)) (= WItemsNum^post (+ 1 WItemsNum^0))) (= __const_5^0 __const_5^post)) (= tmp1^0 tmp1^post)))
    (cfg_trans2 pc^0 l12 pc^post l4 (and (and (and (<= (+ 0 WItemsNum^0) (+ 0 __const_5^0)) (= WItemsNum^post (+ 1 WItemsNum^0))) (= __const_5^0 __const_5^post)) (= tmp1^0 tmp1^post)))
    (cfg_trans2 pc^0 l2 pc^post l1 (and (and (and (and (<= (+ 0 tmp1^0) 0) (<= 0 (+ 0 tmp1^0))) (= WItemsNum^0 WItemsNum^post)) (= __const_5^0 __const_5^post)) (= tmp1^0 tmp1^post)))
    (cfg_trans2 pc^0 l2 pc^post l12 (and (and (and (<= 1 (+ 0 tmp1^0)) (= WItemsNum^0 WItemsNum^post)) (= __const_5^0 __const_5^post)) (= tmp1^0 tmp1^post)))
    (cfg_trans2 pc^0 l2 pc^post l12 (and (and (and (<= (+ 1 tmp1^0) 0) (= WItemsNum^0 WItemsNum^post)) (= __const_5^0 __const_5^post)) (= tmp1^0 tmp1^post)))
    (cfg_trans2 pc^0 l13 pc^post l3 (exists ( (WItemsNum^1 Int) ) (and (and (and (= WItemsNum^1 WItemsNum^1) (= WItemsNum^post WItemsNum^post)) (= __const_5^0 __const_5^post)) (= tmp1^0 tmp1^post))))
    (cfg_trans2 pc^0 l14 pc^post l13 (and (and (= WItemsNum^0 WItemsNum^post) (= __const_5^0 __const_5^post)) (= tmp1^0 tmp1^post)))
  )
)
