(declare-sort Loc 0)
(declare-const l0 Loc)
(declare-const l1 Loc)
(declare-const l3 Loc)
(declare-const l4 Loc)
(declare-const l2 Loc)
(declare-const l5 Loc)
(declare-const l7 Loc)
(declare-const l8 Loc)
(declare-const l6 Loc)
(declare-const l9 Loc)
(declare-const l11 Loc)
(declare-const l12 Loc)
(declare-const l10 Loc)
(declare-const l13 Loc)
(assert (distinct l0 l1 l3 l4 l2 l5 l7 l8 l6 l9 l11 l12 l10 l13))

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

(define-fun init_main ( (pc^0 Loc) (Result_4^0 Int) (__disjvr_0^0 Int) (__disjvr_1^0 Int) (__disjvr_2^0 Int) (tmp_7^0 Int) (x_5^0 Int) (y_6^0 Int) ) Bool
  (cfg_init pc^0 l13 true))

(define-fun next_main (
                 (pc^0 Loc) (Result_4^0 Int) (__disjvr_0^0 Int) (__disjvr_1^0 Int) (__disjvr_2^0 Int) (tmp_7^0 Int) (x_5^0 Int) (y_6^0 Int)
                 (pc^post Loc) (Result_4^post Int) (__disjvr_0^post Int) (__disjvr_1^post Int) (__disjvr_2^post Int) (tmp_7^post Int) (x_5^post Int) (y_6^post Int)
             ) Bool
  (or
    (cfg_trans2 pc^0 l0 pc^post l1 (and (and (and (and (and (and (= Result_4^0 Result_4^post) (= __disjvr_0^0 __disjvr_0^post)) (= __disjvr_1^0 __disjvr_1^post)) (= __disjvr_2^0 __disjvr_2^post)) (= tmp_7^0 tmp_7^post)) (= x_5^0 x_5^post)) (= y_6^0 y_6^post)))
    (cfg_trans2 pc^0 l1 pc^post l3 (and (and (and (and (and (and (and (and (<= (+ (+ 0 (* -1 x_5^0)) y_6^0) 0) (<= (+ (+ 0 (* -1 x_5^0)) y_6^0) 0)) (= Result_4^0 Result_4^post)) (= __disjvr_0^0 __disjvr_0^post)) (= __disjvr_1^0 __disjvr_1^post)) (= __disjvr_2^0 __disjvr_2^post)) (= tmp_7^0 tmp_7^post)) (= x_5^0 x_5^post)) (= y_6^0 y_6^post)))
    (cfg_trans2 pc^0 l3 pc^post l4 (and (and (and (and (and (and (and (= __disjvr_0^post __disjvr_0^0) (= Result_4^0 Result_4^post)) (= __disjvr_0^0 __disjvr_0^post)) (= __disjvr_1^0 __disjvr_1^post)) (= __disjvr_2^0 __disjvr_2^post)) (= tmp_7^0 tmp_7^post)) (= x_5^0 x_5^post)) (= y_6^0 y_6^post)))
    (cfg_trans2 pc^0 l4 pc^post l2 (and (and (and (and (and (and (= Result_4^post Result_4^post) (= __disjvr_0^0 __disjvr_0^post)) (= __disjvr_1^0 __disjvr_1^post)) (= __disjvr_2^0 __disjvr_2^post)) (= tmp_7^0 tmp_7^post)) (= x_5^0 x_5^post)) (= y_6^0 y_6^post)))
    (cfg_trans2 pc^0 l1 pc^post l5 (and (and (and (and (and (and (and (and (and (and (and (and (<= (+ (+ 0 (* -1 x_5^0)) y_6^0) 0) (<= (+ (+ 0 (* -1 x_5^0)) y_6^0) 0)) (<= (+ 0 x_5^0) (+ 0 y_6^0))) (<= (+ 0 y_6^0) (+ 0 x_5^0))) (= tmp_7^post tmp_7^post)) (<= (+ 0 tmp_7^post) 0)) (<= 0 (+ 0 tmp_7^post))) (= Result_4^0 Result_4^post)) (= __disjvr_0^0 __disjvr_0^post)) (= __disjvr_1^0 __disjvr_1^post)) (= __disjvr_2^0 __disjvr_2^post)) (= x_5^0 x_5^post)) (= y_6^0 y_6^post)))
    (cfg_trans2 pc^0 l5 pc^post l1 (and (and (and (and (and (and (= Result_4^0 Result_4^post) (= __disjvr_0^0 __disjvr_0^post)) (= __disjvr_1^0 __disjvr_1^post)) (= __disjvr_2^0 __disjvr_2^post)) (= tmp_7^0 tmp_7^post)) (= x_5^0 x_5^post)) (= y_6^0 y_6^post)))
    (cfg_trans2 pc^0 l1 pc^post l7 (and (and (and (and (and (and (and (and (and (and (<= (+ (+ 0 (* -1 x_5^0)) y_6^0) 0) (<= (+ (+ 0 (* -1 x_5^0)) y_6^0) 0)) (<= (+ 0 x_5^0) (+ 0 y_6^0))) (<= (+ 0 y_6^0) (+ 0 x_5^0))) (= tmp_7^post tmp_7^post)) (= Result_4^0 Result_4^post)) (= __disjvr_0^0 __disjvr_0^post)) (= __disjvr_1^0 __disjvr_1^post)) (= __disjvr_2^0 __disjvr_2^post)) (= x_5^0 x_5^post)) (= y_6^0 y_6^post)))
    (cfg_trans2 pc^0 l7 pc^post l8 (and (and (and (and (and (and (and (= __disjvr_1^post __disjvr_1^0) (= Result_4^0 Result_4^post)) (= __disjvr_0^0 __disjvr_0^post)) (= __disjvr_1^0 __disjvr_1^post)) (= __disjvr_2^0 __disjvr_2^post)) (= tmp_7^0 tmp_7^post)) (= x_5^0 x_5^post)) (= y_6^0 y_6^post)))
    (cfg_trans2 pc^0 l8 pc^post l6 (and (and (and (and (and (and (= x_5^post (+ 1 x_5^0)) (= Result_4^0 Result_4^post)) (= __disjvr_0^0 __disjvr_0^post)) (= __disjvr_1^0 __disjvr_1^post)) (= __disjvr_2^0 __disjvr_2^post)) (= tmp_7^0 tmp_7^post)) (= y_6^0 y_6^post)))
    (cfg_trans2 pc^0 l6 pc^post l1 (and (and (and (and (and (and (= Result_4^0 Result_4^post) (= __disjvr_0^0 __disjvr_0^post)) (= __disjvr_1^0 __disjvr_1^post)) (= __disjvr_2^0 __disjvr_2^post)) (= tmp_7^0 tmp_7^post)) (= x_5^0 x_5^post)) (= y_6^0 y_6^post)))
    (cfg_trans2 pc^0 l1 pc^post l9 (and (and (and (and (and (and (and (and (and (<= 0 (+ (+ -1 (* -1 x_5^0)) y_6^0)) (= tmp_7^post tmp_7^post)) (<= (+ 0 tmp_7^post) 0)) (<= 0 (+ 0 tmp_7^post))) (= Result_4^0 Result_4^post)) (= __disjvr_0^0 __disjvr_0^post)) (= __disjvr_1^0 __disjvr_1^post)) (= __disjvr_2^0 __disjvr_2^post)) (= x_5^0 x_5^post)) (= y_6^0 y_6^post)))
    (cfg_trans2 pc^0 l9 pc^post l1 (and (and (and (and (and (and (= Result_4^0 Result_4^post) (= __disjvr_0^0 __disjvr_0^post)) (= __disjvr_1^0 __disjvr_1^post)) (= __disjvr_2^0 __disjvr_2^post)) (= tmp_7^0 tmp_7^post)) (= x_5^0 x_5^post)) (= y_6^0 y_6^post)))
    (cfg_trans2 pc^0 l1 pc^post l11 (and (and (and (and (and (and (and (<= 0 (+ (+ -1 (* -1 x_5^0)) y_6^0)) (= tmp_7^post tmp_7^post)) (= Result_4^0 Result_4^post)) (= __disjvr_0^0 __disjvr_0^post)) (= __disjvr_1^0 __disjvr_1^post)) (= __disjvr_2^0 __disjvr_2^post)) (= x_5^0 x_5^post)) (= y_6^0 y_6^post)))
    (cfg_trans2 pc^0 l11 pc^post l12 (and (and (and (and (and (and (and (= __disjvr_2^post __disjvr_2^0) (= Result_4^0 Result_4^post)) (= __disjvr_0^0 __disjvr_0^post)) (= __disjvr_1^0 __disjvr_1^post)) (= __disjvr_2^0 __disjvr_2^post)) (= tmp_7^0 tmp_7^post)) (= x_5^0 x_5^post)) (= y_6^0 y_6^post)))
    (cfg_trans2 pc^0 l12 pc^post l10 (and (and (and (and (and (and (= x_5^post (+ 1 x_5^0)) (= Result_4^0 Result_4^post)) (= __disjvr_0^0 __disjvr_0^post)) (= __disjvr_1^0 __disjvr_1^post)) (= __disjvr_2^0 __disjvr_2^post)) (= tmp_7^0 tmp_7^post)) (= y_6^0 y_6^post)))
    (cfg_trans2 pc^0 l10 pc^post l1 (and (and (and (and (and (and (= Result_4^0 Result_4^post) (= __disjvr_0^0 __disjvr_0^post)) (= __disjvr_1^0 __disjvr_1^post)) (= __disjvr_2^0 __disjvr_2^post)) (= tmp_7^0 tmp_7^post)) (= x_5^0 x_5^post)) (= y_6^0 y_6^post)))
    (cfg_trans2 pc^0 l13 pc^post l0 (and (and (and (and (and (and (= Result_4^0 Result_4^post) (= __disjvr_0^0 __disjvr_0^post)) (= __disjvr_1^0 __disjvr_1^post)) (= __disjvr_2^0 __disjvr_2^post)) (= tmp_7^0 tmp_7^post)) (= x_5^0 x_5^post)) (= y_6^0 y_6^post)))
  )
)
