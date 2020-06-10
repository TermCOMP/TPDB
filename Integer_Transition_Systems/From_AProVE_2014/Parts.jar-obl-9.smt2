(declare-sort Loc 0)
(declare-const f1_0_main_ConstantStackPush Loc)
(declare-const f117_0_main_GT Loc)
(declare-const f197_0_main_GT Loc)
(declare-const f216_0_parts_GT Loc)
(declare-const f310_0_parts_Return Loc)
(declare-const f409_0_parts_InvokeMethod Loc)
(declare-const f314_0_parts_Return Loc)
(declare-const __init Loc)
(assert (distinct f1_0_main_ConstantStackPush f117_0_main_GT f197_0_main_GT f216_0_parts_GT f310_0_parts_Return f409_0_parts_InvokeMethod f314_0_parts_Return __init ))

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
    (cfg_trans2 pc f1_0_main_ConstantStackPush pc1 f117_0_main_GT (and (and (and (and (and (<= arg1P arg1) (> arg2 (- 1))) (> arg1 0)) (> arg1P 0)) (= 0 arg2P)) (= arg2 arg3P)))
    (cfg_trans2 pc f117_0_main_GT pc1 f197_0_main_GT (and (and (and (and (and (and (and (>= arg3 arg2) (> arg3 (- 1))) (<= arg1P arg1)) (> arg1 0)) (> arg1P 0)) (= arg2 arg2P)) (= 0 arg3P)) (= arg3 arg4P)))
    (cfg_trans2 pc f197_0_main_GT pc1 f117_0_main_GT (and (and (and (and (and (and (> arg3 arg4) (> arg4 (- 1))) (>= arg1 arg1P)) (> arg1 0)) (> arg1P 0)) (= (+ arg2 1) arg2P)) (= arg4 arg3P)))
    (cfg_trans2 pc f197_0_main_GT pc1 f216_0_parts_GT (and (and (and (and (>= arg4 arg2) (>= arg4 arg3)) (> arg1 0)) (= arg3 arg1P)) (= arg2 arg2P)))
    (cfg_trans2 pc f197_0_main_GT pc1 f197_0_main_GT (and (and (and (and (and (and (and (and (> arg4 (- 1)) (>= arg4 arg3)) (<= arg1P arg1)) (> arg1 0)) (> arg1P 0)) (= 0 arg2)) (= 0 arg2P)) (= (+ arg3 1) arg3P)) (= arg4 arg4P)))
    (cfg_trans2 pc f197_0_main_GT pc1 f197_0_main_GT (and (and (and (and (and (and (and (and (>= arg4 arg2) (> arg4 (- 1))) (<= arg1P arg1)) (> arg1 0)) (> arg1P 0)) (= 0 arg3)) (= arg2 arg2P)) (= 1 arg3P)) (= arg4 arg4P)))
    (cfg_trans2 pc f310_0_parts_Return pc1 f197_0_main_GT (and (and (and (and (and (and (<= arg1P arg1) (> arg4 (- 1))) (> arg1 0)) (> arg1P 0)) (= arg2 arg2P)) (= (+ arg3 1) arg3P)) (= arg4 arg4P)))
    (cfg_trans2 pc f197_0_main_GT pc1 f197_0_main_GT (and (and (and (and (and (and (and (and (>= arg4 arg2) (>= arg4 arg3)) (> arg4 (- 1))) (<= arg1P arg1)) (> arg1 0)) (> arg1P 0)) (= arg2 arg2P)) (= (+ arg3 1) arg3P)) (= arg4 arg4P)))
    (cfg_trans2 pc f216_0_parts_GT pc1 f216_0_parts_GT (and (and (and (and (> arg2 0) (< arg2 arg1)) (> arg1 1)) (= arg2 arg1P)) (= arg2 arg2P)))
    (cfg_trans2 pc f216_0_parts_GT pc1 f216_0_parts_GT (and (and (and (and (> arg2 0) (>= arg2 arg1)) (> arg1 0)) (= arg1 arg1P)) (= (- arg2 arg1) arg2P)))
    (cfg_trans2 pc f216_0_parts_GT pc1 f409_0_parts_InvokeMethod (and (and (and (and (and (and (> arg2 0) (> arg1 0)) (= (- arg2 arg1) 0)) (>= arg2 arg1)) (= arg1 arg1P)) (= arg2 arg2P)) (= (- arg1 1) arg3P)))
    (cfg_trans2 pc f314_0_parts_Return pc1 f409_0_parts_InvokeMethod (and (and (and (> arg2 0) (= arg2 arg1P)) (= arg1 arg2P)) (= (- arg2 1) arg3P)))
    (cfg_trans2 pc f216_0_parts_GT pc1 f409_0_parts_InvokeMethod (and (and (and (and (and (> arg2 0) (>= arg2 arg1)) (> arg1 0)) (= arg1 arg1P)) (= arg2 arg2P)) (= (- arg1 1) arg3P)))
    (cfg_trans2 pc f409_0_parts_InvokeMethod pc1 f216_0_parts_GT (exists ((x47 Int)) (and (and (and (and (and (> arg2 0) (> arg1 0)) (> x47 0)) (< arg3 arg1)) (= arg3 arg1P)) (= arg2 arg2P))))
    (cfg_trans2 pc f216_0_parts_GT pc1 f216_0_parts_GT (exists ((x50 Int)) (and (and (and (and (and (and (> arg2 0) (> arg1 1)) (>= arg2 arg1)) (< (- arg1 1) arg1)) (> x50 0)) (= (- arg1 1) arg1P)) (= arg2 arg2P))))
    (cfg_trans2 pc __init pc1 f1_0_main_ConstantStackPush true)
  )
)
