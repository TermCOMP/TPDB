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
(assert (distinct l0 l1 l2 l3 l4 l5 l6 l7 l8 l9 l10 l11 l12 l13))

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

(define-fun init_main ( (pc^0 Loc) (__const_400^0 Int) (__const_5^0 Int) (i2^0 Int) (j3^0 Int) (k4^0 Int) (l5^0 Int) (x1^0 Int) ) Bool
  (cfg_init pc^0 l13 true))

(define-fun next_main (
                 (pc^0 Loc) (__const_400^0 Int) (__const_5^0 Int) (i2^0 Int) (j3^0 Int) (k4^0 Int) (l5^0 Int) (x1^0 Int)
                 (pc^post Loc) (__const_400^post Int) (__const_5^post Int) (i2^post Int) (j3^post Int) (k4^post Int) (l5^post Int) (x1^post Int)
             ) Bool
  (or
    (cfg_trans2 pc^0 l0 pc^post l1 (and (and (and (and (and (and (and (<= (+ 0 __const_5^0) (+ 0 i2^0)) (= __const_400^0 __const_400^post)) (= __const_5^0 __const_5^post)) (= i2^0 i2^post)) (= j3^0 j3^post)) (= k4^0 k4^post)) (= l5^0 l5^post)) (= x1^0 x1^post)))
    (cfg_trans2 pc^0 l0 pc^post l2 (and (and (and (and (and (and (and (<= (+ 1 i2^0) (+ 0 __const_5^0)) (= j3^post 0)) (= __const_400^0 __const_400^post)) (= __const_5^0 __const_5^post)) (= i2^0 i2^post)) (= k4^0 k4^post)) (= l5^0 l5^post)) (= x1^0 x1^post)))
    (cfg_trans2 pc^0 l3 pc^post l0 (and (and (and (and (and (and (= __const_400^0 __const_400^post) (= __const_5^0 __const_5^post)) (= i2^0 i2^post)) (= j3^0 j3^post)) (= k4^0 k4^post)) (= l5^0 l5^post)) (= x1^0 x1^post)))
    (cfg_trans2 pc^0 l2 pc^post l4 (and (and (and (and (and (and (= __const_400^0 __const_400^post) (= __const_5^0 __const_5^post)) (= i2^0 i2^post)) (= j3^0 j3^post)) (= k4^0 k4^post)) (= l5^0 l5^post)) (= x1^0 x1^post)))
    (cfg_trans2 pc^0 l1 pc^post l5 (and (and (and (and (and (and (= __const_400^0 __const_400^post) (= __const_5^0 __const_5^post)) (= i2^0 i2^post)) (= j3^0 j3^post)) (= k4^0 k4^post)) (= l5^0 l5^post)) (= x1^0 x1^post)))
    (cfg_trans2 pc^0 l6 pc^post l7 (and (and (and (and (and (and (= __const_400^0 __const_400^post) (= __const_5^0 __const_5^post)) (= i2^0 i2^post)) (= j3^0 j3^post)) (= k4^0 k4^post)) (= l5^0 l5^post)) (= x1^0 x1^post)))
    (cfg_trans2 pc^0 l8 pc^post l9 (and (and (and (and (and (and (= l5^post (+ 1 l5^0)) (= __const_400^0 __const_400^post)) (= __const_5^0 __const_5^post)) (= i2^0 i2^post)) (= j3^0 j3^post)) (= k4^0 k4^post)) (= x1^0 x1^post)))
    (cfg_trans2 pc^0 l9 pc^post l10 (and (and (and (and (and (and (= __const_400^0 __const_400^post) (= __const_5^0 __const_5^post)) (= i2^0 i2^post)) (= j3^0 j3^post)) (= k4^0 k4^post)) (= l5^0 l5^post)) (= x1^0 x1^post)))
    (cfg_trans2 pc^0 l11 pc^post l8 (and (and (and (and (and (and (= __const_400^0 __const_400^post) (= __const_5^0 __const_5^post)) (= i2^0 i2^post)) (= j3^0 j3^post)) (= k4^0 k4^post)) (= l5^0 l5^post)) (= x1^0 x1^post)))
    (cfg_trans2 pc^0 l11 pc^post l1 (and (and (and (and (and (and (= __const_400^0 __const_400^post) (= __const_5^0 __const_5^post)) (= i2^0 i2^post)) (= j3^0 j3^post)) (= k4^0 k4^post)) (= l5^0 l5^post)) (= x1^0 x1^post)))
    (cfg_trans2 pc^0 l11 pc^post l8 (and (and (and (and (and (and (= __const_400^0 __const_400^post) (= __const_5^0 __const_5^post)) (= i2^0 i2^post)) (= j3^0 j3^post)) (= k4^0 k4^post)) (= l5^0 l5^post)) (= x1^0 x1^post)))
    (cfg_trans2 pc^0 l10 pc^post l6 (and (and (and (and (and (and (and (<= (+ 0 __const_5^0) (+ 0 l5^0)) (= k4^post (+ 1 k4^0))) (= __const_400^0 __const_400^post)) (= __const_5^0 __const_5^post)) (= i2^0 i2^post)) (= j3^0 j3^post)) (= l5^0 l5^post)) (= x1^0 x1^post)))
    (cfg_trans2 pc^0 l10 pc^post l11 (and (and (and (and (and (and (and (<= (+ 1 l5^0) (+ 0 __const_5^0)) (= __const_400^0 __const_400^post)) (= __const_5^0 __const_5^post)) (= i2^0 i2^post)) (= j3^0 j3^post)) (= k4^0 k4^post)) (= l5^0 l5^post)) (= x1^0 x1^post)))
    (cfg_trans2 pc^0 l7 pc^post l2 (and (and (and (and (and (and (and (<= (+ 0 __const_5^0) (+ 0 k4^0)) (= j3^post (+ 1 j3^0))) (= __const_400^0 __const_400^post)) (= __const_5^0 __const_5^post)) (= i2^0 i2^post)) (= k4^0 k4^post)) (= l5^0 l5^post)) (= x1^0 x1^post)))
    (cfg_trans2 pc^0 l7 pc^post l9 (and (and (and (and (and (and (and (<= (+ 1 k4^0) (+ 0 __const_5^0)) (= l5^post 0)) (= __const_400^0 __const_400^post)) (= __const_5^0 __const_5^post)) (= i2^0 i2^post)) (= j3^0 j3^post)) (= k4^0 k4^post)) (= x1^0 x1^post)))
    (cfg_trans2 pc^0 l4 pc^post l3 (and (and (and (and (and (and (and (<= (+ 0 __const_5^0) (+ 0 j3^0)) (= i2^post (+ 1 i2^0))) (= __const_400^0 __const_400^post)) (= __const_5^0 __const_5^post)) (= j3^0 j3^post)) (= k4^0 k4^post)) (= l5^0 l5^post)) (= x1^0 x1^post)))
    (cfg_trans2 pc^0 l4 pc^post l6 (and (and (and (and (and (and (and (<= (+ 1 j3^0) (+ 0 __const_5^0)) (= k4^post 0)) (= __const_400^0 __const_400^post)) (= __const_5^0 __const_5^post)) (= i2^0 i2^post)) (= j3^0 j3^post)) (= l5^0 l5^post)) (= x1^0 x1^post)))
    (cfg_trans2 pc^0 l12 pc^post l3 (and (and (and (and (and (and (= x1^post (+ 0 __const_400^0)) (= i2^post 0)) (= __const_400^0 __const_400^post)) (= __const_5^0 __const_5^post)) (= j3^0 j3^post)) (= k4^0 k4^post)) (= l5^0 l5^post)))
    (cfg_trans2 pc^0 l13 pc^post l12 (and (and (and (and (and (and (= __const_400^0 __const_400^post) (= __const_5^0 __const_5^post)) (= i2^0 i2^post)) (= j3^0 j3^post)) (= k4^0 k4^post)) (= l5^0 l5^post)) (= x1^0 x1^post)))
  )
)
