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

(define-fun init_main ( (pc^0 Loc) (Result_4^0 Int) (cnt_29^0 Int) (lt_10^0 Int) (lt_11^0 Int) (lt_12^0 Int) (px_8^0 Int) (py_6^0 Int) (q_9^0 Int) (x_7^0 Int) (y_5^0 Int) ) Bool
  (cfg_init pc^0 l4 true))

(define-fun next_main (
                 (pc^0 Loc) (Result_4^0 Int) (cnt_29^0 Int) (lt_10^0 Int) (lt_11^0 Int) (lt_12^0 Int) (px_8^0 Int) (py_6^0 Int) (q_9^0 Int) (x_7^0 Int) (y_5^0 Int)
                 (pc^post Loc) (Result_4^post Int) (cnt_29^post Int) (lt_10^post Int) (lt_11^post Int) (lt_12^post Int) (px_8^post Int) (py_6^post Int) (q_9^post Int) (x_7^post Int) (y_5^post Int)
             ) Bool
  (or
    (cfg_trans2 pc^0 l0 pc^post l1 (exists ( (lt_10^1 Int) (lt_11^1 Int) (lt_12^1 Int) ) (and (and (and (and (and (and (and (and (and (and (and (and (and (= lt_11^1 (+ 0 x_7^0)) (= lt_12^1 (+ 0 cnt_29^0))) (<= 0 (+ -1 lt_12^1))) (= lt_11^post lt_11^post)) (= lt_12^post lt_12^post)) (= lt_10^1 (+ 0 cnt_29^0))) (= lt_10^post lt_10^post)) (= Result_4^0 Result_4^post)) (= cnt_29^0 cnt_29^post)) (= px_8^0 px_8^post)) (= py_6^0 py_6^post)) (= q_9^0 q_9^post)) (= x_7^0 x_7^post)) (= y_5^0 y_5^post))))
    (cfg_trans2 pc^0 l1 pc^post l0 (and (and (and (and (and (and (and (and (and (= Result_4^0 Result_4^post) (= cnt_29^0 cnt_29^post)) (= lt_10^0 lt_10^post)) (= lt_11^0 lt_11^post)) (= lt_12^0 lt_12^post)) (= px_8^0 px_8^post)) (= py_6^0 py_6^post)) (= q_9^0 q_9^post)) (= x_7^0 x_7^post)) (= y_5^0 y_5^post)))
    (cfg_trans2 pc^0 l0 pc^post l2 (exists ( (lt_11^1 Int) (lt_12^1 Int) ) (and (and (and (and (and (and (and (and (and (and (and (and (= lt_11^1 (+ 0 x_7^0)) (= lt_12^1 (+ 0 cnt_29^0))) (<= (+ 0 lt_12^1) 0)) (= lt_11^post lt_11^post)) (= lt_12^post lt_12^post)) (= Result_4^post Result_4^post)) (= cnt_29^0 cnt_29^post)) (= lt_10^0 lt_10^post)) (= px_8^0 px_8^post)) (= py_6^0 py_6^post)) (= q_9^0 q_9^post)) (= x_7^0 x_7^post)) (= y_5^0 y_5^post))))
    (cfg_trans2 pc^0 l3 pc^post l0 (and (and (and (and (and (and (and (and (and (= px_8^post px_8^post) (= x_7^post x_7^post)) (= y_5^post y_5^post)) (= py_6^post (+ 0 y_5^post))) (= q_9^post (+ 0 px_8^post))) (= Result_4^0 Result_4^post)) (= cnt_29^0 cnt_29^post)) (= lt_10^0 lt_10^post)) (= lt_11^0 lt_11^post)) (= lt_12^0 lt_12^post)))
    (cfg_trans2 pc^0 l4 pc^post l3 (and (and (and (and (and (and (and (and (and (= Result_4^0 Result_4^post) (= cnt_29^0 cnt_29^post)) (= lt_10^0 lt_10^post)) (= lt_11^0 lt_11^post)) (= lt_12^0 lt_12^post)) (= px_8^0 px_8^post)) (= py_6^0 py_6^post)) (= q_9^0 q_9^post)) (= x_7^0 x_7^post)) (= y_5^0 y_5^post)))
  )
)
