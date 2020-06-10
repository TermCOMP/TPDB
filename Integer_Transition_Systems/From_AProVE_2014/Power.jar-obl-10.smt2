(declare-sort Loc 0)
(declare-const f1_0_main_ConstantStackPush Loc)
(declare-const f626_0_main_GE Loc)
(declare-const f675_0_main_InvokeMethod Loc)
(declare-const f60_0_power_GT Loc)
(declare-const f712_0_main_ArrayAccess Loc)
(declare-const f753_0_main_InvokeMethod Loc)
(declare-const f60_0_power_GT' Loc)
(declare-const f116_0_even_NE Loc)
(declare-const f168_0_odd_NE Loc)
(declare-const __init Loc)
(assert (distinct f1_0_main_ConstantStackPush f626_0_main_GE f675_0_main_InvokeMethod f60_0_power_GT f712_0_main_ArrayAccess f753_0_main_InvokeMethod f60_0_power_GT' f116_0_even_NE f168_0_odd_NE __init ))

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

(define-fun init_main ( (pc Loc) (arg1 Int) (arg2 Int) (arg3 Int) (arg4 Int) ) Bool
  (cfg_init pc __init true))

(define-fun next_main (
                 (pc Loc) (arg1 Int) (arg2 Int) (arg3 Int) (arg4 Int)
                 (pc1 Loc) (arg1P Int) (arg2P Int) (arg3P Int) (arg4P Int)
             ) Bool
  (or
    (cfg_trans2 pc f1_0_main_ConstantStackPush pc1 f626_0_main_GE (and (and (and (and (and (<= arg1P arg1) (> arg2 (- 1))) (> arg1 0)) (> arg1P 0)) (= 0 arg2P)) (= arg2 arg3P)))
    (cfg_trans2 pc f626_0_main_GE pc1 f675_0_main_InvokeMethod (exists ((x8 Int)) (and (and (and (and (and (and (and (> arg3 arg2) (> arg3 0)) (> x8 (- 1))) (<= arg1P arg1)) (> arg1 0)) (> arg1P 0)) (= arg2 arg2P)) (= arg3 arg4P))))
    (cfg_trans2 pc f626_0_main_GE pc1 f60_0_power_GT (and (and (and (and (> arg3 arg2) (> arg3 0)) (> arg2P (- 1))) (> arg1 0)) (= arg3 arg1P)))
    (cfg_trans2 pc f626_0_main_GE pc1 f675_0_main_InvokeMethod (and (and (and (and (and (and (and (> arg3 arg2) (> arg3 0)) (<= arg1P arg1)) (> arg1 0)) (> arg1P 0)) (= arg2 arg2P)) (= 1 arg3P)) (= arg3 arg4P)))
    (cfg_trans2 pc f626_0_main_GE pc1 f675_0_main_InvokeMethod (exists ((x21 Int)) (and (and (and (and (and (and (and (and (> arg3 arg2) (> arg3 0)) (> x21 (- 1))) (<= arg1P arg1)) (> arg1 0)) (> arg1P 0)) (= arg2 arg2P)) (= arg3 arg3P)) (= arg3 arg4P))))
    (cfg_trans2 pc f675_0_main_InvokeMethod pc1 f712_0_main_ArrayAccess (and (and (and (and (and (and (> arg4 0) (> arg3 0)) (<= arg1P arg1)) (> arg1 0)) (> arg1P 0)) (= arg2 arg2P)) (= arg4 arg3P)))
    (cfg_trans2 pc f712_0_main_ArrayAccess pc1 f60_0_power_GT (and (and (and (and (> arg3 0) (> arg2P (- 1))) (< arg2 arg3)) (> arg1 0)) (= arg3 arg1P)))
    (cfg_trans2 pc f712_0_main_ArrayAccess pc1 f753_0_main_InvokeMethod (exists ((x36 Int)) (and (and (and (and (and (and (and (> arg3 0) (> x36 (- 1))) (< arg2 arg3)) (<= arg1P arg1)) (> arg1 0)) (> arg1P 0)) (= arg2 arg2P)) (= arg3 arg4P))))
    (cfg_trans2 pc f712_0_main_ArrayAccess pc1 f753_0_main_InvokeMethod (and (and (and (and (and (and (and (< arg2 arg3) (> arg3 0)) (<= arg1P arg1)) (> arg1 0)) (> arg1P 0)) (= arg2 arg2P)) (= 1 arg3P)) (= arg3 arg4P)))
    (cfg_trans2 pc f712_0_main_ArrayAccess pc1 f753_0_main_InvokeMethod (exists ((x45 Int)) (and (and (and (and (and (and (and (and (> arg3 0) (> x45 (- 1))) (< arg2 arg3)) (<= arg1P arg1)) (> arg1 0)) (> arg1P 0)) (= arg2 arg2P)) (= arg3 arg3P)) (= arg3 arg4P))))
    (cfg_trans2 pc f753_0_main_InvokeMethod pc1 f626_0_main_GE (and (and (and (and (and (and (<= arg1P arg1) (> arg4 0)) (> arg1 0)) (> arg1P 0)) (= 1 arg3)) (= (+ arg2 1) arg2P)) (= arg4 arg3P)))
    (cfg_trans2 pc f753_0_main_InvokeMethod pc1 f626_0_main_GE (and (and (and (and (and (and (> arg3 0) (> arg4 0)) (<= arg1P arg1)) (> arg1 0)) (> arg1P 0)) (= (+ arg2 1) arg2P)) (= arg4 arg3P)))
    (cfg_trans2 pc f60_0_power_GT pc1 f60_0_power_GT' (exists ((x69 Int)) (and (and (and (and (and (and (> arg1 0) (> arg2 1)) (>= (* arg1 arg1) 1)) (> x69 0)) (> arg2 x69)) (= arg1 arg1P)) (= arg2 arg2P))))
    (cfg_trans2 pc f60_0_power_GT' pc1 f60_0_power_GT (and (and (and (and (and (and (and (> arg1 0) (> arg2 1)) (>= (* arg1 arg1) 1)) (> arg2 arg2P)) (> arg2P 0)) (< (- arg2 (* 2 arg2P)) 2)) (>= (- arg2 (* 2 arg2P)) 0)) (= (* arg1 arg1) arg1P)))
    (cfg_trans2 pc f675_0_main_InvokeMethod pc1 f116_0_even_NE (and (and (and (> arg3 0) (> arg4 0)) (> arg1 0)) (= arg3 arg1P)))
    (cfg_trans2 pc f753_0_main_InvokeMethod pc1 f168_0_odd_NE (and (and (and (> arg3 0) (> arg4 0)) (> arg1 0)) (= arg3 arg1P)))
    (cfg_trans2 pc f116_0_even_NE pc1 f168_0_odd_NE (and (and (> arg1 1) (< (- arg1 1) arg1)) (= (- arg1 1) arg1P)))
    (cfg_trans2 pc f168_0_odd_NE pc1 f116_0_even_NE (and (and (> arg1 1) (< (- arg1 1) arg1)) (= (- arg1 1) arg1P)))
    (cfg_trans2 pc __init pc1 f1_0_main_ConstantStackPush true)
  )
)
