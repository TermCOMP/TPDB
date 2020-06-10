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

(define-fun init_main ( (pc^0 Loc) (i11^0 Int) (i13^0 Int) (i7^0 Int) (i9^0 Int) (i^0 Int) (tmp^0 Int) (tmp___0^0 Int) ) Bool
  (cfg_init pc^0 l14 true))

(define-fun next_main (
                 (pc^0 Loc) (i11^0 Int) (i13^0 Int) (i7^0 Int) (i9^0 Int) (i^0 Int) (tmp^0 Int) (tmp___0^0 Int)
                 (pc^post Loc) (i11^post Int) (i13^post Int) (i7^post Int) (i9^post Int) (i^post Int) (tmp^post Int) (tmp___0^post Int)
             ) Bool
  (or
    (cfg_trans2 pc^0 l0 pc^post l1 (and (and (and (and (and (and (= i^0 i^post) (= i11^0 i11^post)) (= i13^0 i13^post)) (= i7^0 i7^post)) (= i9^0 i9^post)) (= tmp^0 tmp^post)) (= tmp___0^0 tmp___0^post)))
    (cfg_trans2 pc^0 l2 pc^post l3 (and (and (and (and (and (and (and (<= 50 (+ 0 i^0)) (= i^0 i^post)) (= i11^0 i11^post)) (= i13^0 i13^post)) (= i7^0 i7^post)) (= i9^0 i9^post)) (= tmp^0 tmp^post)) (= tmp___0^0 tmp___0^post)))
    (cfg_trans2 pc^0 l2 pc^post l4 (and (and (and (and (and (and (and (<= (+ 1 i^0) 50) (= i^post (+ 1 i^0))) (= i11^0 i11^post)) (= i13^0 i13^post)) (= i7^0 i7^post)) (= i9^0 i9^post)) (= tmp^0 tmp^post)) (= tmp___0^0 tmp___0^post)))
    (cfg_trans2 pc^0 l5 pc^post l6 (and (and (and (and (and (and (= i^0 i^post) (= i11^0 i11^post)) (= i13^0 i13^post)) (= i7^0 i7^post)) (= i9^0 i9^post)) (= tmp^0 tmp^post)) (= tmp___0^0 tmp___0^post)))
    (cfg_trans2 pc^0 l7 pc^post l4 (and (and (and (and (and (and (and (<= 50 (+ 0 i13^0)) (= i^post 0)) (= i11^0 i11^post)) (= i13^0 i13^post)) (= i7^0 i7^post)) (= i9^0 i9^post)) (= tmp^0 tmp^post)) (= tmp___0^0 tmp___0^post)))
    (cfg_trans2 pc^0 l7 pc^post l8 (and (and (and (and (and (and (and (<= (+ 1 i13^0) 50) (= i13^post (+ 1 i13^0))) (= i^0 i^post)) (= i11^0 i11^post)) (= i7^0 i7^post)) (= i9^0 i9^post)) (= tmp^0 tmp^post)) (= tmp___0^0 tmp___0^post)))
    (cfg_trans2 pc^0 l9 pc^post l10 (and (and (and (and (and (and (= i^0 i^post) (= i11^0 i11^post)) (= i13^0 i13^post)) (= i7^0 i7^post)) (= i9^0 i9^post)) (= tmp^0 tmp^post)) (= tmp___0^0 tmp___0^post)))
    (cfg_trans2 pc^0 l11 pc^post l8 (exists ( (i13^1 Int) ) (and (and (and (and (and (and (and (and (<= 50 (+ 0 i11^0)) (= i13^1 0)) (= i13^post 0)) (= i^0 i^post)) (= i11^0 i11^post)) (= i7^0 i7^post)) (= i9^0 i9^post)) (= tmp^0 tmp^post)) (= tmp___0^0 tmp___0^post))))
    (cfg_trans2 pc^0 l11 pc^post l12 (and (and (and (and (and (and (and (<= (+ 1 i11^0) 50) (= i11^post (+ 1 i11^0))) (= i^0 i^post)) (= i13^0 i13^post)) (= i7^0 i7^post)) (= i9^0 i9^post)) (= tmp^0 tmp^post)) (= tmp___0^0 tmp___0^post)))
    (cfg_trans2 pc^0 l12 pc^post l11 (and (and (and (and (and (and (= i^0 i^post) (= i11^0 i11^post)) (= i13^0 i13^post)) (= i7^0 i7^post)) (= i9^0 i9^post)) (= tmp^0 tmp^post)) (= tmp___0^0 tmp___0^post)))
    (cfg_trans2 pc^0 l10 pc^post l12 (exists ( (i11^1 Int) ) (and (and (and (and (and (and (and (and (<= 50 (+ 0 i^0)) (= i11^1 0)) (= i11^post 0)) (= i^0 i^post)) (= i13^0 i13^post)) (= i7^0 i7^post)) (= i9^0 i9^post)) (= tmp^0 tmp^post)) (= tmp___0^0 tmp___0^post))))
    (cfg_trans2 pc^0 l10 pc^post l9 (and (and (and (and (and (and (and (<= (+ 1 i^0) 50) (= i^post (+ 1 i^0))) (= i11^0 i11^post)) (= i13^0 i13^post)) (= i7^0 i7^post)) (= i9^0 i9^post)) (= tmp^0 tmp^post)) (= tmp___0^0 tmp___0^post)))
    (cfg_trans2 pc^0 l8 pc^post l7 (and (and (and (and (and (and (= i^0 i^post) (= i11^0 i11^post)) (= i13^0 i13^post)) (= i7^0 i7^post)) (= i9^0 i9^post)) (= tmp^0 tmp^post)) (= tmp___0^0 tmp___0^post)))
    (cfg_trans2 pc^0 l6 pc^post l9 (and (and (and (and (and (and (and (<= 50 (+ 0 i9^0)) (= i^post 0)) (= i11^0 i11^post)) (= i13^0 i13^post)) (= i7^0 i7^post)) (= i9^0 i9^post)) (= tmp^0 tmp^post)) (= tmp___0^0 tmp___0^post)))
    (cfg_trans2 pc^0 l6 pc^post l5 (and (and (and (and (and (and (and (<= (+ 1 i9^0) 50) (= i9^post (+ 1 i9^0))) (= i^0 i^post)) (= i11^0 i11^post)) (= i13^0 i13^post)) (= i7^0 i7^post)) (= tmp^0 tmp^post)) (= tmp___0^0 tmp___0^post)))
    (cfg_trans2 pc^0 l4 pc^post l2 (and (and (and (and (and (and (= i^0 i^post) (= i11^0 i11^post)) (= i13^0 i13^post)) (= i7^0 i7^post)) (= i9^0 i9^post)) (= tmp^0 tmp^post)) (= tmp___0^0 tmp___0^post)))
    (cfg_trans2 pc^0 l1 pc^post l5 (exists ( (i9^1 Int) ) (and (and (and (and (and (and (and (and (<= 50 (+ 0 i7^0)) (= i9^1 0)) (= i9^post 0)) (= i^0 i^post)) (= i11^0 i11^post)) (= i13^0 i13^post)) (= i7^0 i7^post)) (= tmp^0 tmp^post)) (= tmp___0^0 tmp___0^post))))
    (cfg_trans2 pc^0 l1 pc^post l0 (and (and (and (and (and (and (and (<= (+ 1 i7^0) 50) (= i7^post (+ 1 i7^0))) (= i^0 i^post)) (= i11^0 i11^post)) (= i13^0 i13^post)) (= i9^0 i9^post)) (= tmp^0 tmp^post)) (= tmp___0^0 tmp___0^post)))
    (cfg_trans2 pc^0 l13 pc^post l0 (exists ( (i7^1 Int) ) (and (and (and (and (and (and (and (= i^post 0) (= tmp^post tmp^post)) (= tmp___0^post tmp___0^post)) (= i7^1 0)) (= i7^post 0)) (= i11^0 i11^post)) (= i13^0 i13^post)) (= i9^0 i9^post))))
    (cfg_trans2 pc^0 l14 pc^post l13 (and (and (and (and (and (and (= i^0 i^post) (= i11^0 i11^post)) (= i13^0 i13^post)) (= i7^0 i7^post)) (= i9^0 i9^post)) (= tmp^0 tmp^post)) (= tmp___0^0 tmp___0^post)))
  )
)
