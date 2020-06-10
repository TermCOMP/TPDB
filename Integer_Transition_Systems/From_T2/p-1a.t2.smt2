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

(define-fun init_main ( (pc^0 Loc) (Result_4^0 Int) (ct_10^0 Int) (ct_11^0 Int) (ct_19^0 Int) (ct_25^0 Int) (lt_7^0 Int) (lt_8^0 Int) (lt_9^0 Int) (x_5^0 Int) (y_6^0 Int) ) Bool
  (cfg_init pc^0 l4 true))

(define-fun next_main (
                 (pc^0 Loc) (Result_4^0 Int) (ct_10^0 Int) (ct_11^0 Int) (ct_19^0 Int) (ct_25^0 Int) (lt_7^0 Int) (lt_8^0 Int) (lt_9^0 Int) (x_5^0 Int) (y_6^0 Int)
                 (pc^post Loc) (Result_4^post Int) (ct_10^post Int) (ct_11^post Int) (ct_19^post Int) (ct_25^post Int) (lt_7^post Int) (lt_8^post Int) (lt_9^post Int) (x_5^post Int) (y_6^post Int)
             ) Bool
  (or
    (cfg_trans2 pc^0 l0 pc^post l1 (exists ( (ct_10^1 Int) (ct_11^1 Int) ) (and (and (and (and (and (and (and (and (and (and (and (= y_6^post y_6^post) (= x_5^post x_5^post)) (= ct_11^1 ct_11^1)) (= ct_11^post ct_11^post)) (= ct_10^1 ct_10^1)) (= ct_10^post ct_10^post)) (= Result_4^0 Result_4^post)) (= ct_19^0 ct_19^post)) (= ct_25^0 ct_25^post)) (= lt_7^0 lt_7^post)) (= lt_8^0 lt_8^post)) (= lt_9^0 lt_9^post))))
    (cfg_trans2 pc^0 l1 pc^post l2 (exists ( (lt_8^1 Int) (lt_9^1 Int) ) (and (and (and (and (and (and (and (and (and (and (and (and (= lt_8^1 (+ 0 ct_19^0)) (= lt_9^1 (+ 0 ct_25^0))) (<= (+ (+ 0 (* -1 lt_8^1)) lt_9^1) 0)) (= lt_8^post lt_8^post)) (= lt_9^post lt_9^post)) (= Result_4^post Result_4^post)) (= ct_10^0 ct_10^post)) (= ct_11^0 ct_11^post)) (= ct_19^0 ct_19^post)) (= ct_25^0 ct_25^post)) (= lt_7^0 lt_7^post)) (= x_5^0 x_5^post)) (= y_6^0 y_6^post))))
    (cfg_trans2 pc^0 l1 pc^post l3 (exists ( (lt_7^1 Int) (lt_8^1 Int) (lt_9^1 Int) ) (and (and (and (and (and (and (and (and (and (and (and (and (and (= lt_8^1 (+ 0 ct_19^0)) (= lt_9^1 (+ 0 ct_25^0))) (<= 0 (+ (+ -1 (* -1 lt_8^1)) lt_9^1))) (= lt_8^post lt_8^post)) (= lt_9^post lt_9^post)) (= lt_7^1 (+ 0 ct_19^0))) (= lt_7^post lt_7^post)) (= Result_4^0 Result_4^post)) (= ct_10^0 ct_10^post)) (= ct_11^0 ct_11^post)) (= ct_19^0 ct_19^post)) (= ct_25^0 ct_25^post)) (= x_5^0 x_5^post)) (= y_6^0 y_6^post))))
    (cfg_trans2 pc^0 l3 pc^post l1 (and (and (and (and (and (and (and (and (and (= Result_4^0 Result_4^post) (= ct_10^0 ct_10^post)) (= ct_11^0 ct_11^post)) (= ct_19^0 ct_19^post)) (= ct_25^0 ct_25^post)) (= lt_7^0 lt_7^post)) (= lt_8^0 lt_8^post)) (= lt_9^0 lt_9^post)) (= x_5^0 x_5^post)) (= y_6^0 y_6^post)))
    (cfg_trans2 pc^0 l4 pc^post l0 (and (and (and (and (and (and (and (and (and (= Result_4^0 Result_4^post) (= ct_10^0 ct_10^post)) (= ct_11^0 ct_11^post)) (= ct_19^0 ct_19^post)) (= ct_25^0 ct_25^post)) (= lt_7^0 lt_7^post)) (= lt_8^0 lt_8^post)) (= lt_9^0 lt_9^post)) (= x_5^0 x_5^post)) (= y_6^0 y_6^post)))
  )
)
