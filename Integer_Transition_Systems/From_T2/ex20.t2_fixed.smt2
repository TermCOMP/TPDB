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

(define-fun init_main ( (pc^0 Loc) (b^0 Int) (i^0 Int) (j^0 Int) (n^0 Int) (tmp^0 Int) ) Bool
  (cfg_init pc^0 l10 true))

(define-fun next_main (
                 (pc^0 Loc) (b^0 Int) (i^0 Int) (j^0 Int) (n^0 Int) (tmp^0 Int)
                 (pc^post Loc) (b^post Int) (i^post Int) (j^post Int) (n^post Int) (tmp^post Int)
             ) Bool
  (or
    (cfg_trans2 pc^0 l0 pc^post l1 (and (and (and (and (and (<= (+ 1 n^0) (+ 0 i^0)) (= b^0 b^post)) (= i^0 i^post)) (= j^0 j^post)) (= n^0 n^post)) (= tmp^0 tmp^post)))
    (cfg_trans2 pc^0 l0 pc^post l2 (and (and (and (and (and (<= (+ 0 i^0) (+ 0 n^0)) (= i^post (+ 1 i^0))) (= j^post (+ 2 j^0))) (= b^0 b^post)) (= n^0 n^post)) (= tmp^0 tmp^post)))
    (cfg_trans2 pc^0 l3 pc^post l2 (and (and (and (and (= i^post 0) (= b^0 b^post)) (= j^0 j^post)) (= n^0 n^post)) (= tmp^0 tmp^post)))
    (cfg_trans2 pc^0 l4 pc^post l3 (and (and (and (and (= n^post 0) (= b^0 b^post)) (= i^0 i^post)) (= j^0 j^post)) (= tmp^0 tmp^post)))
    (cfg_trans2 pc^0 l5 pc^post l3 (and (and (and (and (and (and (<= (+ 0 tmp^0) 0) (<= 0 (+ 0 tmp^0))) (= n^post 1023)) (= b^0 b^post)) (= i^0 i^post)) (= j^0 j^post)) (= tmp^0 tmp^post)))
    (cfg_trans2 pc^0 l5 pc^post l4 (and (and (and (and (and (<= 1 (+ 0 tmp^0)) (= b^0 b^post)) (= i^0 i^post)) (= j^0 j^post)) (= n^0 n^post)) (= tmp^0 tmp^post)))
    (cfg_trans2 pc^0 l5 pc^post l4 (and (and (and (and (and (<= (+ 1 tmp^0) 0) (= b^0 b^post)) (= i^0 i^post)) (= j^0 j^post)) (= n^0 n^post)) (= tmp^0 tmp^post)))
    (cfg_trans2 pc^0 l2 pc^post l0 (and (and (and (and (= b^0 b^post) (= i^0 i^post)) (= j^0 j^post)) (= n^0 n^post)) (= tmp^0 tmp^post)))
    (cfg_trans2 pc^0 l6 pc^post l7 (and (and (and (and (= b^0 b^post) (= i^0 i^post)) (= j^0 j^post)) (= n^0 n^post)) (= tmp^0 tmp^post)))
    (cfg_trans2 pc^0 l8 pc^post l6 (and (and (and (and (and (<= 1023 (+ 0 b^0)) (= b^0 b^post)) (= i^0 i^post)) (= j^0 j^post)) (= n^0 n^post)) (= tmp^0 tmp^post)))
    (cfg_trans2 pc^0 l8 pc^post l6 (and (and (and (and (and (<= (+ 1 b^0) 1023) (= b^0 b^post)) (= i^0 i^post)) (= j^0 j^post)) (= n^0 n^post)) (= tmp^0 tmp^post)))
    (cfg_trans2 pc^0 l1 pc^post l6 (and (and (and (and (and (<= (+ 1 b^0) 0) (= b^0 b^post)) (= i^0 i^post)) (= j^0 j^post)) (= n^0 n^post)) (= tmp^0 tmp^post)))
    (cfg_trans2 pc^0 l1 pc^post l8 (and (and (and (and (and (<= 0 (+ 0 b^0)) (= b^0 b^post)) (= i^0 i^post)) (= j^0 j^post)) (= n^0 n^post)) (= tmp^0 tmp^post)))
    (cfg_trans2 pc^0 l9 pc^post l5 (and (and (and (and (= tmp^post tmp^post) (= b^0 b^post)) (= i^0 i^post)) (= j^0 j^post)) (= n^0 n^post)))
    (cfg_trans2 pc^0 l10 pc^post l9 (and (and (and (and (= b^0 b^post) (= i^0 i^post)) (= j^0 j^post)) (= n^0 n^post)) (= tmp^0 tmp^post)))
  )
)
