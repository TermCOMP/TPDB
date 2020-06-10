(declare-sort Loc 0)
(declare-const l0 Loc)
(declare-const l1 Loc)
(declare-const l2 Loc)
(declare-const l3 Loc)
(declare-const l4 Loc)
(declare-const l5 Loc)
(declare-const l6 Loc)
(declare-const l7 Loc)
(assert (distinct l0 l1 l2 l3 l4 l5 l6 l7))

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

(define-fun init_main ( (pc^0 Loc) (__const_1024^0 Int) (i5^0 Int) (n_promoted_1^0 Int) (tmp^0 Int) (tmp___0^0 Int) ) Bool
  (cfg_init pc^0 l7 true))

(define-fun next_main (
                 (pc^0 Loc) (__const_1024^0 Int) (i5^0 Int) (n_promoted_1^0 Int) (tmp^0 Int) (tmp___0^0 Int)
                 (pc^post Loc) (__const_1024^post Int) (i5^post Int) (n_promoted_1^post Int) (tmp^post Int) (tmp___0^post Int)
             ) Bool
  (or
    (cfg_trans2 pc^0 l0 pc^post l1 (and (and (and (and (and (<= (+ 1 n_promoted_1^0) (+ 0 __const_1024^0)) (= tmp___0^post tmp___0^post)) (= __const_1024^0 __const_1024^post)) (= i5^0 i5^post)) (= n_promoted_1^0 n_promoted_1^post)) (= tmp^0 tmp^post)))
    (cfg_trans2 pc^0 l0 pc^post l1 (and (and (and (and (and (<= (+ 0 __const_1024^0) (+ 0 n_promoted_1^0)) (= __const_1024^0 __const_1024^post)) (= i5^0 i5^post)) (= n_promoted_1^0 n_promoted_1^post)) (= tmp^0 tmp^post)) (= tmp___0^0 tmp___0^post)))
    (cfg_trans2 pc^0 l1 pc^post l2 (and (and (and (and (= i5^post 0) (= __const_1024^0 __const_1024^post)) (= n_promoted_1^0 n_promoted_1^post)) (= tmp^0 tmp^post)) (= tmp___0^0 tmp___0^post)))
    (cfg_trans2 pc^0 l3 pc^post l0 (and (and (and (and (and (<= 1 (+ 0 n_promoted_1^0)) (= __const_1024^0 __const_1024^post)) (= i5^0 i5^post)) (= n_promoted_1^0 n_promoted_1^post)) (= tmp^0 tmp^post)) (= tmp___0^0 tmp___0^post)))
    (cfg_trans2 pc^0 l3 pc^post l1 (and (and (and (and (and (<= (+ 0 n_promoted_1^0) 0) (= __const_1024^0 __const_1024^post)) (= i5^0 i5^post)) (= n_promoted_1^0 n_promoted_1^post)) (= tmp^0 tmp^post)) (= tmp___0^0 tmp___0^post)))
    (cfg_trans2 pc^0 l2 pc^post l4 (and (and (and (and (= __const_1024^0 __const_1024^post) (= i5^0 i5^post)) (= n_promoted_1^0 n_promoted_1^post)) (= tmp^0 tmp^post)) (= tmp___0^0 tmp___0^post)))
    (cfg_trans2 pc^0 l4 pc^post l5 (and (and (and (and (= __const_1024^0 __const_1024^post) (= i5^0 i5^post)) (= n_promoted_1^0 n_promoted_1^post)) (= tmp^0 tmp^post)) (= tmp___0^0 tmp___0^post)))
    (cfg_trans2 pc^0 l4 pc^post l2 (and (and (and (and (= i5^post (+ 1 i5^0)) (= __const_1024^0 __const_1024^post)) (= n_promoted_1^0 n_promoted_1^post)) (= tmp^0 tmp^post)) (= tmp___0^0 tmp___0^post)))
    (cfg_trans2 pc^0 l6 pc^post l3 (and (and (and (and (= tmp^post tmp^post) (= n_promoted_1^post (+ 0 tmp^post))) (= __const_1024^0 __const_1024^post)) (= i5^0 i5^post)) (= tmp___0^0 tmp___0^post)))
    (cfg_trans2 pc^0 l7 pc^post l6 (and (and (and (and (= __const_1024^0 __const_1024^post) (= i5^0 i5^post)) (= n_promoted_1^0 n_promoted_1^post)) (= tmp^0 tmp^post)) (= tmp___0^0 tmp___0^post)))
  )
)
