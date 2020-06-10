(declare-sort Loc 0)
(declare-const l0 Loc)
(declare-const l1 Loc)
(declare-const l2 Loc)
(declare-const l3 Loc)
(declare-const l4 Loc)
(declare-const l5 Loc)
(declare-const l6 Loc)
(assert (distinct l0 l1 l2 l3 l4 l5 l6))

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

(define-fun init_main ( (pc^0 Loc) (__const_10^0 Int) (i4^0 Int) (i7^0 Int) (tmp^0 Int) ) Bool
  (cfg_init pc^0 l6 true))

(define-fun next_main (
                 (pc^0 Loc) (__const_10^0 Int) (i4^0 Int) (i7^0 Int) (tmp^0 Int)
                 (pc^post Loc) (__const_10^post Int) (i4^post Int) (i7^post Int) (tmp^post Int)
             ) Bool
  (or
    (cfg_trans2 pc^0 l0 pc^post l1 (and (and (and (and (<= (+ 0 __const_10^0) (+ 0 i4^0)) (= i7^post 0)) (= __const_10^0 __const_10^post)) (= i4^0 i4^post)) (= tmp^0 tmp^post)))
    (cfg_trans2 pc^0 l0 pc^post l2 (and (and (and (and (<= (+ 1 i4^0) (+ 0 __const_10^0)) (= i4^post (+ 1 i4^0))) (= __const_10^0 __const_10^post)) (= i7^0 i7^post)) (= tmp^0 tmp^post)))
    (cfg_trans2 pc^0 l2 pc^post l0 (and (and (and (= __const_10^0 __const_10^post) (= i4^0 i4^post)) (= i7^0 i7^post)) (= tmp^0 tmp^post)))
    (cfg_trans2 pc^0 l1 pc^post l3 (and (and (and (= __const_10^0 __const_10^post) (= i4^0 i4^post)) (= i7^0 i7^post)) (= tmp^0 tmp^post)))
    (cfg_trans2 pc^0 l3 pc^post l4 (and (and (and (and (<= (+ 0 __const_10^0) (+ 0 i7^0)) (= __const_10^0 __const_10^post)) (= i4^0 i4^post)) (= i7^0 i7^post)) (= tmp^0 tmp^post)))
    (cfg_trans2 pc^0 l3 pc^post l1 (and (and (and (and (<= (+ 1 i7^0) (+ 0 __const_10^0)) (= i7^post (+ 1 i7^0))) (= __const_10^0 __const_10^post)) (= i4^0 i4^post)) (= tmp^0 tmp^post)))
    (cfg_trans2 pc^0 l5 pc^post l2 (and (and (and (= tmp^post tmp^post) (= i4^post 0)) (= __const_10^0 __const_10^post)) (= i7^0 i7^post)))
    (cfg_trans2 pc^0 l6 pc^post l5 (and (and (and (= __const_10^0 __const_10^post) (= i4^0 i4^post)) (= i7^0 i7^post)) (= tmp^0 tmp^post)))
  )
)
