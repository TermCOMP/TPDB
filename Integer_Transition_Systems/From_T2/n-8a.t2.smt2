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

(define-fun init_main ( (pc^0 Loc) (Result_4^0 Int) (cnt_15^0 Int) (lt_9^0 Int) (p_8^0 Int) (x_5^0 Int) (y_6^0 Int) (z_7^0 Int) ) Bool
  (cfg_init pc^0 l4 true))

(define-fun next_main (
                 (pc^0 Loc) (Result_4^0 Int) (cnt_15^0 Int) (lt_9^0 Int) (p_8^0 Int) (x_5^0 Int) (y_6^0 Int) (z_7^0 Int)
                 (pc^post Loc) (Result_4^post Int) (cnt_15^post Int) (lt_9^post Int) (p_8^post Int) (x_5^post Int) (y_6^post Int) (z_7^post Int)
             ) Bool
  (or
    (cfg_trans2 pc^0 l0 pc^post l1 (and (and (and (and (and (and (and (<= (+ (+ 0 (* -1 x_5^0)) y_6^0) 0) (= Result_4^post Result_4^post)) (= cnt_15^0 cnt_15^post)) (= lt_9^0 lt_9^post)) (= p_8^0 p_8^post)) (= x_5^0 x_5^post)) (= y_6^0 y_6^post)) (= z_7^0 z_7^post)))
    (cfg_trans2 pc^0 l0 pc^post l2 (exists ( (lt_9^1 Int) ) (and (and (and (and (and (and (and (and (<= 0 (+ (+ -1 (* -1 x_5^0)) y_6^0)) (= lt_9^1 (+ 0 cnt_15^0))) (= lt_9^post lt_9^post)) (= Result_4^0 Result_4^post)) (= cnt_15^0 cnt_15^post)) (= p_8^0 p_8^post)) (= x_5^0 x_5^post)) (= y_6^0 y_6^post)) (= z_7^0 z_7^post))))
    (cfg_trans2 pc^0 l2 pc^post l0 (and (and (and (and (and (and (= Result_4^0 Result_4^post) (= cnt_15^0 cnt_15^post)) (= lt_9^0 lt_9^post)) (= p_8^0 p_8^post)) (= x_5^0 x_5^post)) (= y_6^0 y_6^post)) (= z_7^0 z_7^post)))
    (cfg_trans2 pc^0 l3 pc^post l0 (and (and (and (and (and (and (= z_7^post z_7^post) (= p_8^post (+ 0 z_7^post))) (= Result_4^0 Result_4^post)) (= cnt_15^0 cnt_15^post)) (= lt_9^0 lt_9^post)) (= x_5^0 x_5^post)) (= y_6^0 y_6^post)))
    (cfg_trans2 pc^0 l4 pc^post l3 (and (and (and (and (and (and (= Result_4^0 Result_4^post) (= cnt_15^0 cnt_15^post)) (= lt_9^0 lt_9^post)) (= p_8^0 p_8^post)) (= x_5^0 x_5^post)) (= y_6^0 y_6^post)) (= z_7^0 z_7^post)))
  )
)
