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

(define-fun init_main ( (pc^0 Loc) (Result_4^0 Int) (ct_12^0 Int) (ct_13^0 Int) (ct_21^0 Int) (ct_27^0 Int) (lt_10^0 Int) (lt_11^0 Int) (lt_9^0 Int) (x_5^0 Int) (y_6^0 Int) ) Bool
  (cfg_init pc^0 l4 true))

(define-fun next_main (
                 (pc^0 Loc) (Result_4^0 Int) (ct_12^0 Int) (ct_13^0 Int) (ct_21^0 Int) (ct_27^0 Int) (lt_10^0 Int) (lt_11^0 Int) (lt_9^0 Int) (x_5^0 Int) (y_6^0 Int)
                 (pc^post Loc) (Result_4^post Int) (ct_12^post Int) (ct_13^post Int) (ct_21^post Int) (ct_27^post Int) (lt_10^post Int) (lt_11^post Int) (lt_9^post Int) (x_5^post Int) (y_6^post Int)
             ) Bool
  (or
    (cfg_trans2 pc^0 l0 pc^post l1 (exists ( (lt_10^1 Int) (lt_11^1 Int) ) (and (and (and (and (and (and (and (and (and (and (and (and (= lt_10^1 (+ 0 ct_21^0)) (= lt_11^1 (+ 0 ct_27^0))) (<= (+ (+ 0 (* -1 lt_10^1)) lt_11^1) 0)) (= lt_10^post lt_10^post)) (= lt_11^post lt_11^post)) (= Result_4^post Result_4^post)) (= ct_12^0 ct_12^post)) (= ct_13^0 ct_13^post)) (= ct_21^0 ct_21^post)) (= ct_27^0 ct_27^post)) (= lt_9^0 lt_9^post)) (= x_5^0 x_5^post)) (= y_6^0 y_6^post))))
    (cfg_trans2 pc^0 l0 pc^post l2 (exists ( (lt_10^1 Int) (lt_11^1 Int) (lt_9^1 Int) ) (and (and (and (and (and (and (and (and (and (and (and (and (and (= lt_10^1 (+ 0 ct_21^0)) (= lt_11^1 (+ 0 ct_27^0))) (<= 0 (+ (+ -1 (* -1 lt_10^1)) lt_11^1))) (= lt_10^post lt_10^post)) (= lt_11^post lt_11^post)) (= lt_9^1 (+ 0 ct_21^0))) (= lt_9^post lt_9^post)) (= Result_4^0 Result_4^post)) (= ct_12^0 ct_12^post)) (= ct_13^0 ct_13^post)) (= ct_21^0 ct_21^post)) (= ct_27^0 ct_27^post)) (= x_5^0 x_5^post)) (= y_6^0 y_6^post))))
    (cfg_trans2 pc^0 l2 pc^post l0 (and (and (and (and (and (and (and (and (and (= Result_4^0 Result_4^post) (= ct_12^0 ct_12^post)) (= ct_13^0 ct_13^post)) (= ct_21^0 ct_21^post)) (= ct_27^0 ct_27^post)) (= lt_10^0 lt_10^post)) (= lt_11^0 lt_11^post)) (= lt_9^0 lt_9^post)) (= x_5^0 x_5^post)) (= y_6^0 y_6^post)))
    (cfg_trans2 pc^0 l3 pc^post l0 (exists ( (ct_12^1 Int) (ct_13^1 Int) ) (and (and (and (and (and (and (and (and (and (and (and (= y_6^post y_6^post) (= x_5^post x_5^post)) (= ct_13^1 ct_13^1)) (= ct_13^post ct_13^post)) (= ct_12^1 ct_12^1)) (= ct_12^post ct_12^post)) (= Result_4^0 Result_4^post)) (= ct_21^0 ct_21^post)) (= ct_27^0 ct_27^post)) (= lt_10^0 lt_10^post)) (= lt_11^0 lt_11^post)) (= lt_9^0 lt_9^post))))
    (cfg_trans2 pc^0 l4 pc^post l3 (and (and (and (and (and (and (and (and (and (= Result_4^0 Result_4^post) (= ct_12^0 ct_12^post)) (= ct_13^0 ct_13^post)) (= ct_21^0 ct_21^post)) (= ct_27^0 ct_27^post)) (= lt_10^0 lt_10^post)) (= lt_11^0 lt_11^post)) (= lt_9^0 lt_9^post)) (= x_5^0 x_5^post)) (= y_6^0 y_6^post)))
  )
)
