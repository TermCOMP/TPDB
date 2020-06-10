(declare-sort Loc 0)
(declare-const f1_0_main_ConstantStackPush Loc)
(declare-const f375_0_dif_GE Loc)
(declare-const f484_0_dif_GE Loc)
(declare-const __init Loc)
(assert (distinct f1_0_main_ConstantStackPush f375_0_dif_GE f484_0_dif_GE __init ))

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

(define-fun init_main ( (pc Loc) (arg1 Int) (arg2 Int) (arg3 Int) (arg4 Int) (arg5 Int) ) Bool
  (cfg_init pc __init true))

(define-fun next_main (
                 (pc Loc) (arg1 Int) (arg2 Int) (arg3 Int) (arg4 Int) (arg5 Int)
                 (pc1 Loc) (arg1P Int) (arg2P Int) (arg3P Int) (arg4P Int) (arg5P Int)
             ) Bool
  (or
    (cfg_trans2 pc f1_0_main_ConstantStackPush pc1 f375_0_dif_GE (and (and (= 0 arg1P) (= 0 arg2P)) (= 0 arg3P)))
    (cfg_trans2 pc f375_0_dif_GE pc1 f484_0_dif_GE (and (and (and (and (and (and (< arg2 20) (= arg2 arg3)) (= arg1 arg1P)) (= arg2 arg2P)) (= 0 arg3P)) (= 0 arg4P)) (= 0 arg5P)))
    (cfg_trans2 pc f484_0_dif_GE pc1 f375_0_dif_GE (and (and (and (and (and (> arg4 19) (= 1 arg3)) (= arg4 arg5)) (= arg1 arg1P)) (= (+ arg2 1) arg2P)) (= (+ arg2 1) arg3P)))
    (cfg_trans2 pc f484_0_dif_GE pc1 f375_0_dif_GE (and (and (and (and (and (< arg4 20) (= 1 arg3)) (= arg4 arg5)) (= arg1 arg1P)) (= (+ arg2 1) arg2P)) (= (+ arg2 1) arg3P)))
    (cfg_trans2 pc f484_0_dif_GE pc1 f484_0_dif_GE (exists ((x29 Int) (x30 Int)) (and (and (and (and (and (and (and (and (and (< arg2 20) (> x29 x30)) (< arg4 20)) (= 0 arg3)) (= arg4 arg5)) (= arg1 arg1P)) (= arg2 arg2P)) (= 0 arg3P)) (= (+ arg4 1) arg4P)) (= (+ arg4 1) arg5P))))
    (cfg_trans2 pc f484_0_dif_GE pc1 f484_0_dif_GE (exists ((x36 Int) (x37 Int)) (and (and (and (and (and (and (and (and (and (< arg2 20) (< x36 x37)) (< arg4 20)) (= 0 arg3)) (= arg4 arg5)) (= arg1 arg1P)) (= arg2 arg2P)) (= 0 arg3P)) (= (+ arg4 1) arg4P)) (= (+ arg4 1) arg5P))))
    (cfg_trans2 pc f484_0_dif_GE pc1 f375_0_dif_GE (and (and (and (and (and (and (and (< arg1 20) (< arg2 20)) (> arg4 19)) (= 0 arg3)) (= arg4 arg5)) (= (+ arg1 1) arg1P)) (= (+ arg2 1) arg2P)) (= (+ arg2 1) arg3P)))
    (cfg_trans2 pc f484_0_dif_GE pc1 f484_0_dif_GE (and (and (and (and (and (and (and (and (< arg4 20) (< arg2 20)) (= 0 arg3)) (= arg4 arg5)) (= arg1 arg1P)) (= arg2 arg2P)) (= 1 arg3P)) (= arg4 arg4P)) (= arg4 arg5P)))
    (cfg_trans2 pc __init pc1 f1_0_main_ConstantStackPush true)
  )
)
