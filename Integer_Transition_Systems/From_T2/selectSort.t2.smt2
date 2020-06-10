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
(assert (distinct l0 l1 l2 l3 l4 l5 l6 l7 l8 l9 l10 l11 l12))

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

(define-fun init_main ( (pc^0 Loc) (N6^0 Int) (N^0 Int) (i8^0 Int) (i^0 Int) (j7^0 Int) (min9^0 Int) (t10^0 Int) (tmp^0 Int) ) Bool
  (cfg_init pc^0 l12 true))

(define-fun next_main (
                 (pc^0 Loc) (N6^0 Int) (N^0 Int) (i8^0 Int) (i^0 Int) (j7^0 Int) (min9^0 Int) (t10^0 Int) (tmp^0 Int)
                 (pc^post Loc) (N6^post Int) (N^post Int) (i8^post Int) (i^post Int) (j7^post Int) (min9^post Int) (t10^post Int) (tmp^post Int)
             ) Bool
  (or
    (cfg_trans2 pc^0 l0 pc^post l1 (and (and (and (and (and (and (and (= N^0 N^post) (= N6^0 N6^post)) (= i^0 i^post)) (= i8^0 i8^post)) (= j7^0 j7^post)) (= min9^0 min9^post)) (= t10^0 t10^post)) (= tmp^0 tmp^post)))
    (cfg_trans2 pc^0 l2 pc^post l3 (and (and (and (and (and (and (and (= N^0 N^post) (= N6^0 N6^post)) (= i^0 i^post)) (= i8^0 i8^post)) (= j7^0 j7^post)) (= min9^0 min9^post)) (= t10^0 t10^post)) (= tmp^0 tmp^post)))
    (cfg_trans2 pc^0 l4 pc^post l5 (and (and (and (and (and (and (and (and (<= (+ -1 N6^0) (+ 0 j7^0)) (= N^0 N^post)) (= N6^0 N6^post)) (= i^0 i^post)) (= i8^0 i8^post)) (= j7^0 j7^post)) (= min9^0 min9^post)) (= t10^0 t10^post)) (= tmp^0 tmp^post)))
    (cfg_trans2 pc^0 l4 pc^post l6 (and (and (and (and (and (and (and (and (<= (+ 1 j7^0) (+ -1 N6^0)) (= j7^post (+ 1 j7^0))) (= N^0 N^post)) (= N6^0 N6^post)) (= i^0 i^post)) (= i8^0 i8^post)) (= min9^0 min9^post)) (= t10^0 t10^post)) (= tmp^0 tmp^post)))
    (cfg_trans2 pc^0 l7 pc^post l8 (and (and (and (and (and (and (and (= N^0 N^post) (= N6^0 N6^post)) (= i^0 i^post)) (= i8^0 i8^post)) (= j7^0 j7^post)) (= min9^0 min9^post)) (= t10^0 t10^post)) (= tmp^0 tmp^post)))
    (cfg_trans2 pc^0 l9 pc^post l7 (and (and (and (and (and (and (and (= i8^post (+ 1 i8^0)) (= N^0 N^post)) (= N6^0 N6^post)) (= i^0 i^post)) (= j7^0 j7^post)) (= min9^0 min9^post)) (= t10^0 t10^post)) (= tmp^0 tmp^post)))
    (cfg_trans2 pc^0 l10 pc^post l9 (and (and (and (and (and (and (and (= min9^post (+ 0 i8^0)) (= N^0 N^post)) (= N6^0 N6^post)) (= i^0 i^post)) (= i8^0 i8^post)) (= j7^0 j7^post)) (= t10^0 t10^post)) (= tmp^0 tmp^post)))
    (cfg_trans2 pc^0 l10 pc^post l9 (and (and (and (and (and (and (and (= N^0 N^post) (= N6^0 N6^post)) (= i^0 i^post)) (= i8^0 i8^post)) (= j7^0 j7^post)) (= min9^0 min9^post)) (= t10^0 t10^post)) (= tmp^0 tmp^post)))
    (cfg_trans2 pc^0 l8 pc^post l2 (and (and (and (and (and (and (and (and (<= (+ 0 N6^0) (+ 0 i8^0)) (= t10^post t10^post)) (= j7^post (+ 1 j7^0))) (= N^0 N^post)) (= N6^0 N6^post)) (= i^0 i^post)) (= i8^0 i8^post)) (= min9^0 min9^post)) (= tmp^0 tmp^post)))
    (cfg_trans2 pc^0 l8 pc^post l10 (and (and (and (and (and (and (and (and (<= (+ 1 i8^0) (+ 0 N6^0)) (= N^0 N^post)) (= N6^0 N6^post)) (= i^0 i^post)) (= i8^0 i8^post)) (= j7^0 j7^post)) (= min9^0 min9^post)) (= t10^0 t10^post)) (= tmp^0 tmp^post)))
    (cfg_trans2 pc^0 l6 pc^post l4 (and (and (and (and (and (and (and (= N^0 N^post) (= N6^0 N6^post)) (= i^0 i^post)) (= i8^0 i8^post)) (= j7^0 j7^post)) (= min9^0 min9^post)) (= t10^0 t10^post)) (= tmp^0 tmp^post)))
    (cfg_trans2 pc^0 l3 pc^post l6 (and (and (and (and (and (and (and (and (<= (+ -1 N6^0) (+ 0 j7^0)) (= j7^post 0)) (= N^0 N^post)) (= N6^0 N6^post)) (= i^0 i^post)) (= i8^0 i8^post)) (= min9^0 min9^post)) (= t10^0 t10^post)) (= tmp^0 tmp^post)))
    (cfg_trans2 pc^0 l3 pc^post l7 (and (and (and (and (and (and (and (and (<= (+ 1 j7^0) (+ -1 N6^0)) (= min9^post (+ 0 j7^0))) (= i8^post (+ 1 j7^0))) (= N^0 N^post)) (= N6^0 N6^post)) (= i^0 i^post)) (= j7^0 j7^post)) (= t10^0 t10^post)) (= tmp^0 tmp^post)))
    (cfg_trans2 pc^0 l1 pc^post l2 (and (and (and (and (and (and (and (and (<= (+ 0 N^0) (+ 0 i^0)) (= N6^post (+ 0 N^0))) (= j7^post 0)) (= N^0 N^post)) (= i^0 i^post)) (= i8^0 i8^post)) (= min9^0 min9^post)) (= t10^0 t10^post)) (= tmp^0 tmp^post)))
    (cfg_trans2 pc^0 l1 pc^post l0 (and (and (and (and (and (and (and (and (<= (+ 1 i^0) (+ 0 N^0)) (= i^post (+ 1 i^0))) (= N^0 N^post)) (= N6^0 N6^post)) (= i8^0 i8^post)) (= j7^0 j7^post)) (= min9^0 min9^post)) (= t10^0 t10^post)) (= tmp^0 tmp^post)))
    (cfg_trans2 pc^0 l11 pc^post l0 (and (and (and (and (and (and (and (= tmp^post tmp^post) (= i^post 0)) (= N^0 N^post)) (= N6^0 N6^post)) (= i8^0 i8^post)) (= j7^0 j7^post)) (= min9^0 min9^post)) (= t10^0 t10^post)))
    (cfg_trans2 pc^0 l12 pc^post l11 (and (and (and (and (and (and (and (= N^0 N^post) (= N6^0 N6^post)) (= i^0 i^post)) (= i8^0 i8^post)) (= j7^0 j7^post)) (= min9^0 min9^post)) (= t10^0 t10^post)) (= tmp^0 tmp^post)))
  )
)
