(declare-sort Loc 0)
(declare-const f93_0_mk_Return Loc)
(declare-const f148_0_main_InvokeMethod Loc)
(declare-const f1_0_main_ConstantStackPush Loc)
(declare-const f341_0_main_GE Loc)
(declare-const f475_0_main_GE Loc)
(declare-const f165_0_mk_LE Loc)
(declare-const f291_0_length_NULL Loc)
(declare-const f541_0_bubble_NULL Loc)
(declare-const __init Loc)
(assert (distinct f93_0_mk_Return f148_0_main_InvokeMethod f1_0_main_ConstantStackPush f341_0_main_GE f475_0_main_GE f165_0_mk_LE f291_0_length_NULL f541_0_bubble_NULL __init ))

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

(define-fun init_main ( (pc Loc) (arg1 Int) (arg2 Int) (arg3 Int) ) Bool
  (cfg_init pc __init true))

(define-fun next_main (
                 (pc Loc) (arg1 Int) (arg2 Int) (arg3 Int)
                 (pc1 Loc) (arg1P Int) (arg2P Int) (arg3P Int)
             ) Bool
  (or
    (cfg_trans2 pc f93_0_mk_Return pc1 f148_0_main_InvokeMethod (and (and (and (and (<= arg1P arg1) (> arg2 (- 1))) (> arg1 0)) (> arg1P 0)) (= arg2 arg2P)))
    (cfg_trans2 pc f1_0_main_ConstantStackPush pc1 f148_0_main_InvokeMethod (and (and (and (and (<= arg1P arg1) (> arg2 (- 1))) (> arg1 0)) (> arg1P 0)) (= arg2 arg2P)))
    (cfg_trans2 pc f148_0_main_InvokeMethod pc1 f341_0_main_GE (and (and (> arg1 0) (> arg2 (- 1))) (= 0 arg1P)))
    (cfg_trans2 pc f341_0_main_GE pc1 f475_0_main_GE (and (and (< arg1 3) (= arg1 arg1P)) (= 0 arg2P)))
    (cfg_trans2 pc f475_0_main_GE pc1 f341_0_main_GE (and (<= arg3 arg2) (= (+ arg1 1) arg1P)))
    (cfg_trans2 pc f475_0_main_GE pc1 f475_0_main_GE (and (and (and (and (and (> arg3 0) (< arg1 3)) (> arg3 arg2)) (= arg1 arg1P)) (= (+ arg2 1) arg2P)) (= arg3 arg3P)))
    (cfg_trans2 pc f1_0_main_ConstantStackPush pc1 f165_0_mk_LE (and (and (and (> arg1 0) (> arg2 (- 1))) (= (- arg2 1) arg1P)) (= arg2 arg2P)))
    (cfg_trans2 pc f148_0_main_InvokeMethod pc1 f165_0_mk_LE (and (and (> arg1 0) (= (- arg2 1) arg1P)) (= arg2 arg2P)))
    (cfg_trans2 pc f148_0_main_InvokeMethod pc1 f165_0_mk_LE (and (and (and (> arg1 0) (> arg2 (- 1))) (= (- arg2 1) arg1P)) (= arg2 arg2P)))
    (cfg_trans2 pc f165_0_mk_LE pc1 f165_0_mk_LE (and (and (> arg2 0) (= (- arg1 1) arg1P)) (= arg1 arg2P)))
    (cfg_trans2 pc f341_0_main_GE pc1 f291_0_length_NULL (and (and (> arg1P (- 1)) (> arg2P (- 1))) (< arg1 3)))
    (cfg_trans2 pc f291_0_length_NULL pc1 f291_0_length_NULL (and (and (and (and (and (and (and (<= (+ arg1P 1) arg1) (<= (+ arg1P 1) arg2)) (<= (+ arg2P 1) arg1)) (<= (+ arg2P 1) arg2)) (> arg1 0)) (> arg2 0)) (> arg1P (- 1))) (> arg2P (- 1))))
    (cfg_trans2 pc f475_0_main_GE pc1 f541_0_bubble_NULL (and (and (and (and (> arg3 0) (> arg3 arg2)) (< arg1 3)) (> arg2P (- 1))) (> arg1P (- 1))))
    (cfg_trans2 pc f541_0_bubble_NULL pc1 f541_0_bubble_NULL (exists ((x41 Int) (x40 Int)) (and (and (and (and (and (and (and (and (<= (+ arg1P 2) arg1) (>= x41 x40)) (<= (+ arg1P 2) arg2)) (<= (+ arg2P 2) arg1)) (<= (+ arg2P 2) arg2)) (> arg1 2)) (> arg2 2)) (> arg1P 0)) (> arg2P 0))))
    (cfg_trans2 pc f541_0_bubble_NULL pc1 f541_0_bubble_NULL (exists ((x47 Int) (x46 Int)) (and (and (and (and (and (and (and (and (<= arg1P arg1) (< x47 x46)) (<= arg1P arg2)) (<= arg2P arg1)) (<= arg2P arg2)) (> arg1 2)) (> arg2 2)) (> arg1P 0)) (> arg2P 0))))
    (cfg_trans2 pc __init pc1 f1_0_main_ConstantStackPush true)
  )
)
