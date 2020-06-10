(declare-sort Loc 0)
(declare-const l0 Loc)
(declare-const l1 Loc)
(declare-const l2 Loc)
(declare-const l3 Loc)
(declare-const l5 Loc)
(declare-const l6 Loc)
(declare-const l4 Loc)
(declare-const l8 Loc)
(declare-const l9 Loc)
(declare-const l7 Loc)
(declare-const l10 Loc)
(declare-const l11 Loc)
(declare-const l12 Loc)
(assert (distinct l0 l1 l2 l3 l5 l6 l4 l8 l9 l7 l10 l11 l12))

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

(define-fun init_main ( (pc^0 Loc) (Result_6^0 Int) (nondet_7^0 Int) (nondet_8^0 Int) (temp5_9^0 Int) (temp6_11^0 Int) (x_10^0 Int) ) Bool
  (cfg_init pc^0 l12 true))

(define-fun next_main (
                 (pc^0 Loc) (Result_6^0 Int) (nondet_7^0 Int) (nondet_8^0 Int) (temp5_9^0 Int) (temp6_11^0 Int) (x_10^0 Int)
                 (pc^post Loc) (Result_6^post Int) (nondet_7^post Int) (nondet_8^post Int) (temp5_9^post Int) (temp6_11^post Int) (x_10^post Int)
             ) Bool
  (or
    (cfg_trans2 pc^0 l0 pc^post l1 (and (and (and (and (and (= nondet_7^post nondet_7^post) (= temp6_11^post (+ 0 nondet_7^post))) (= x_10^post (+ 0 temp6_11^post))) (= Result_6^0 Result_6^post)) (= nondet_8^0 nondet_8^post)) (= temp5_9^0 temp5_9^post)))
    (cfg_trans2 pc^0 l2 pc^post l3 (and (and (and (and (and (and (and (= nondet_8^post nondet_8^post) (= temp5_9^post (+ 0 nondet_8^post))) (<= (+ 0 temp5_9^post) 0)) (<= 0 (+ 0 temp5_9^post))) (= Result_6^post Result_6^post)) (= nondet_7^0 nondet_7^post)) (= temp6_11^0 temp6_11^post)) (= x_10^0 x_10^post)))
    (cfg_trans2 pc^0 l2 pc^post l5 (and (and (and (and (and (= nondet_8^post nondet_8^post) (= temp5_9^post (+ 0 nondet_8^post))) (= Result_6^0 Result_6^post)) (= nondet_7^0 nondet_7^post)) (= temp6_11^0 temp6_11^post)) (= x_10^0 x_10^post)))
    (cfg_trans2 pc^0 l5 pc^post l6 (and (and (and (and (and (and (<= (+ 1 temp5_9^0) 0) (= Result_6^0 Result_6^post)) (= nondet_7^0 nondet_7^post)) (= nondet_8^0 nondet_8^post)) (= temp5_9^0 temp5_9^post)) (= temp6_11^0 temp6_11^post)) (= x_10^0 x_10^post)))
    (cfg_trans2 pc^0 l5 pc^post l6 (and (and (and (and (and (and (<= 1 (+ 0 temp5_9^0)) (= Result_6^0 Result_6^post)) (= nondet_7^0 nondet_7^post)) (= nondet_8^0 nondet_8^post)) (= temp5_9^0 temp5_9^post)) (= temp6_11^0 temp6_11^post)) (= x_10^0 x_10^post)))
    (cfg_trans2 pc^0 l6 pc^post l4 (and (and (and (and (and (and (<= 0 (+ -1 x_10^0)) (= x_10^post (+ 1 x_10^0))) (= Result_6^0 Result_6^post)) (= nondet_7^0 nondet_7^post)) (= nondet_8^0 nondet_8^post)) (= temp5_9^0 temp5_9^post)) (= temp6_11^0 temp6_11^post)))
    (cfg_trans2 pc^0 l4 pc^post l3 (and (and (and (and (and (and (and (= nondet_8^post nondet_8^post) (= temp5_9^post (+ 0 nondet_8^post))) (<= (+ 0 temp5_9^post) 0)) (<= 0 (+ 0 temp5_9^post))) (= Result_6^post Result_6^post)) (= nondet_7^0 nondet_7^post)) (= temp6_11^0 temp6_11^post)) (= x_10^0 x_10^post)))
    (cfg_trans2 pc^0 l4 pc^post l8 (and (and (and (and (and (= nondet_8^post nondet_8^post) (= temp5_9^post (+ 0 nondet_8^post))) (= Result_6^0 Result_6^post)) (= nondet_7^0 nondet_7^post)) (= temp6_11^0 temp6_11^post)) (= x_10^0 x_10^post)))
    (cfg_trans2 pc^0 l8 pc^post l9 (and (and (and (and (and (and (<= (+ 1 temp5_9^0) 0) (= Result_6^0 Result_6^post)) (= nondet_7^0 nondet_7^post)) (= nondet_8^0 nondet_8^post)) (= temp5_9^0 temp5_9^post)) (= temp6_11^0 temp6_11^post)) (= x_10^0 x_10^post)))
    (cfg_trans2 pc^0 l8 pc^post l9 (and (and (and (and (and (and (<= 1 (+ 0 temp5_9^0)) (= Result_6^0 Result_6^post)) (= nondet_7^0 nondet_7^post)) (= nondet_8^0 nondet_8^post)) (= temp5_9^0 temp5_9^post)) (= temp6_11^0 temp6_11^post)) (= x_10^0 x_10^post)))
    (cfg_trans2 pc^0 l9 pc^post l7 (and (and (and (and (and (and (<= 0 (+ -1 x_10^0)) (= x_10^post (+ 1 x_10^0))) (= Result_6^0 Result_6^post)) (= nondet_7^0 nondet_7^post)) (= nondet_8^0 nondet_8^post)) (= temp5_9^0 temp5_9^post)) (= temp6_11^0 temp6_11^post)))
    (cfg_trans2 pc^0 l7 pc^post l4 (and (and (and (and (and (= Result_6^0 Result_6^post) (= nondet_7^0 nondet_7^post)) (= nondet_8^0 nondet_8^post)) (= temp5_9^0 temp5_9^post)) (= temp6_11^0 temp6_11^post)) (= x_10^0 x_10^post)))
    (cfg_trans2 pc^0 l1 pc^post l3 (and (and (and (and (and (and (and (= nondet_8^post nondet_8^post) (= temp5_9^post (+ 0 nondet_8^post))) (<= (+ 0 temp5_9^post) 0)) (<= 0 (+ 0 temp5_9^post))) (= Result_6^post Result_6^post)) (= nondet_7^0 nondet_7^post)) (= temp6_11^0 temp6_11^post)) (= x_10^0 x_10^post)))
    (cfg_trans2 pc^0 l1 pc^post l10 (and (and (and (and (and (= nondet_8^post nondet_8^post) (= temp5_9^post (+ 0 nondet_8^post))) (= Result_6^0 Result_6^post)) (= nondet_7^0 nondet_7^post)) (= temp6_11^0 temp6_11^post)) (= x_10^0 x_10^post)))
    (cfg_trans2 pc^0 l10 pc^post l11 (and (and (and (and (and (and (<= (+ 1 temp5_9^0) 0) (= Result_6^0 Result_6^post)) (= nondet_7^0 nondet_7^post)) (= nondet_8^0 nondet_8^post)) (= temp5_9^0 temp5_9^post)) (= temp6_11^0 temp6_11^post)) (= x_10^0 x_10^post)))
    (cfg_trans2 pc^0 l10 pc^post l11 (and (and (and (and (and (and (<= 1 (+ 0 temp5_9^0)) (= Result_6^0 Result_6^post)) (= nondet_7^0 nondet_7^post)) (= nondet_8^0 nondet_8^post)) (= temp5_9^0 temp5_9^post)) (= temp6_11^0 temp6_11^post)) (= x_10^0 x_10^post)))
    (cfg_trans2 pc^0 l11 pc^post l4 (and (and (and (and (and (and (<= 0 (+ -1 x_10^0)) (= x_10^post (+ 1 x_10^0))) (= Result_6^0 Result_6^post)) (= nondet_7^0 nondet_7^post)) (= nondet_8^0 nondet_8^post)) (= temp5_9^0 temp5_9^post)) (= temp6_11^0 temp6_11^post)))
    (cfg_trans2 pc^0 l12 pc^post l0 (and (and (and (and (and (= Result_6^0 Result_6^post) (= nondet_7^0 nondet_7^post)) (= nondet_8^0 nondet_8^post)) (= temp5_9^0 temp5_9^post)) (= temp6_11^0 temp6_11^post)) (= x_10^0 x_10^post)))
  )
)
