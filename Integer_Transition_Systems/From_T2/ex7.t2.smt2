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

(define-fun init_main ( (pc^0 Loc) (__const_10^0 Int) (i5^0 Int) (length4^0 Int) (s^0 Int) (tmp^0 Int) (tmp___08^0 Int) ) Bool
  (cfg_init pc^0 l4 true))

(define-fun next_main (
                 (pc^0 Loc) (__const_10^0 Int) (i5^0 Int) (length4^0 Int) (s^0 Int) (tmp^0 Int) (tmp___08^0 Int)
                 (pc^post Loc) (__const_10^post Int) (i5^post Int) (length4^post Int) (s^post Int) (tmp^post Int) (tmp___08^post Int)
             ) Bool
  (or
    (cfg_trans2 pc^0 l0 pc^post l1 (and (and (and (and (and (and (<= (+ 0 length4^0) (+ 0 i5^0)) (= __const_10^0 __const_10^post)) (= i5^0 i5^post)) (= length4^0 length4^post)) (= s^0 s^post)) (= tmp^0 tmp^post)) (= tmp___08^0 tmp___08^post)))
    (cfg_trans2 pc^0 l0 pc^post l2 (and (and (and (and (and (and (<= (+ 1 i5^0) (+ 0 length4^0)) (= tmp___08^post tmp___08^post)) (= i5^post (+ 1 i5^0))) (= __const_10^0 __const_10^post)) (= length4^0 length4^post)) (= s^0 s^post)) (= tmp^0 tmp^post)))
    (cfg_trans2 pc^0 l2 pc^post l0 (and (and (and (and (and (= __const_10^0 __const_10^post) (= i5^0 i5^post)) (= length4^0 length4^post)) (= s^0 s^post)) (= tmp^0 tmp^post)) (= tmp___08^0 tmp___08^post)))
    (cfg_trans2 pc^0 l3 pc^post l2 (and (and (and (and (and (= tmp^post tmp^post) (= s^post (+ 0 tmp^post))) (= length4^post (+ 0 __const_10^0))) (= i5^post 0)) (= __const_10^0 __const_10^post)) (= tmp___08^0 tmp___08^post)))
    (cfg_trans2 pc^0 l4 pc^post l3 (and (and (and (and (and (= __const_10^0 __const_10^post) (= i5^0 i5^post)) (= length4^0 length4^post)) (= s^0 s^post)) (= tmp^0 tmp^post)) (= tmp___08^0 tmp___08^post)))
  )
)
