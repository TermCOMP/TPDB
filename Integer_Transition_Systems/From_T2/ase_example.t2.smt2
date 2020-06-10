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

(define-fun init_main ( (pc^0 Loc) (__const_10^0 Int) (i2^0 Int) (size1010^0 Int) (size1^0 Int) (size77^0 Int) (tmp1111^0 Int) (tmp88^0 Int) ) Bool
  (cfg_init pc^0 l8 true))

(define-fun next_main (
                 (pc^0 Loc) (__const_10^0 Int) (i2^0 Int) (size1010^0 Int) (size1^0 Int) (size77^0 Int) (tmp1111^0 Int) (tmp88^0 Int)
                 (pc^post Loc) (__const_10^post Int) (i2^post Int) (size1010^post Int) (size1^post Int) (size77^post Int) (tmp1111^post Int) (tmp88^post Int)
             ) Bool
  (or
    (cfg_trans2 pc^0 l0 pc^post l1 (and (and (and (and (and (and (= __const_10^0 __const_10^post) (= i2^0 i2^post)) (= size1^0 size1^post)) (= size1010^0 size1010^post)) (= size77^0 size77^post)) (= tmp1111^0 tmp1111^post)) (= tmp88^0 tmp88^post)))
    (cfg_trans2 pc^0 l2 pc^post l3 (and (and (and (and (and (and (and (<= (+ 0 size1^0) (+ 0 i2^0)) (= __const_10^0 __const_10^post)) (= i2^0 i2^post)) (= size1^0 size1^post)) (= size1010^0 size1010^post)) (= size77^0 size77^post)) (= tmp1111^0 tmp1111^post)) (= tmp88^0 tmp88^post)))
    (cfg_trans2 pc^0 l2 pc^post l4 (and (and (and (and (and (and (and (<= (+ 1 i2^0) (+ 0 size1^0)) (= i2^post (+ 1 i2^0))) (= __const_10^0 __const_10^post)) (= size1^0 size1^post)) (= size1010^0 size1010^post)) (= size77^0 size77^post)) (= tmp1111^0 tmp1111^post)) (= tmp88^0 tmp88^post)))
    (cfg_trans2 pc^0 l5 pc^post l6 (and (and (and (and (and (and (= __const_10^0 __const_10^post) (= i2^0 i2^post)) (= size1^0 size1^post)) (= size1010^0 size1010^post)) (= size77^0 size77^post)) (= tmp1111^0 tmp1111^post)) (= tmp88^0 tmp88^post)))
    (cfg_trans2 pc^0 l6 pc^post l4 (and (and (and (and (and (and (and (<= (+ 0 size1^0) (+ 0 i2^0)) (= i2^post 0)) (= __const_10^0 __const_10^post)) (= size1^0 size1^post)) (= size1010^0 size1010^post)) (= size77^0 size77^post)) (= tmp1111^0 tmp1111^post)) (= tmp88^0 tmp88^post)))
    (cfg_trans2 pc^0 l6 pc^post l5 (and (and (and (and (and (and (and (<= (+ 1 i2^0) (+ 0 size1^0)) (= i2^post (+ 1 i2^0))) (= __const_10^0 __const_10^post)) (= size1^0 size1^post)) (= size1010^0 size1010^post)) (= size77^0 size77^post)) (= tmp1111^0 tmp1111^post)) (= tmp88^0 tmp88^post)))
    (cfg_trans2 pc^0 l4 pc^post l2 (and (and (and (and (and (and (= __const_10^0 __const_10^post) (= i2^0 i2^post)) (= size1^0 size1^post)) (= size1010^0 size1010^post)) (= size77^0 size77^post)) (= tmp1111^0 tmp1111^post)) (= tmp88^0 tmp88^post)))
    (cfg_trans2 pc^0 l1 pc^post l5 (and (and (and (and (and (and (and (<= (+ 0 size1^0) (+ 0 i2^0)) (= i2^post 0)) (= __const_10^0 __const_10^post)) (= size1^0 size1^post)) (= size1010^0 size1010^post)) (= size77^0 size77^post)) (= tmp1111^0 tmp1111^post)) (= tmp88^0 tmp88^post)))
    (cfg_trans2 pc^0 l1 pc^post l0 (and (and (and (and (and (and (and (<= (+ 1 i2^0) (+ 0 size1^0)) (= i2^post (+ 1 i2^0))) (= __const_10^0 __const_10^post)) (= size1^0 size1^post)) (= size1010^0 size1010^post)) (= size77^0 size77^post)) (= tmp1111^0 tmp1111^post)) (= tmp88^0 tmp88^post)))
    (cfg_trans2 pc^0 l7 pc^post l0 (and (and (and (and (and (and (= size1^post (+ 0 __const_10^0)) (= size77^post (+ 0 size1^post))) (= tmp88^post tmp88^post)) (= size1010^post (+ 0 size1^post))) (= tmp1111^post tmp1111^post)) (= i2^post 0)) (= __const_10^0 __const_10^post)))
    (cfg_trans2 pc^0 l8 pc^post l7 (and (and (and (and (and (and (= __const_10^0 __const_10^post) (= i2^0 i2^post)) (= size1^0 size1^post)) (= size1010^0 size1010^post)) (= size77^0 size77^post)) (= tmp1111^0 tmp1111^post)) (= tmp88^0 tmp88^post)))
  )
)
