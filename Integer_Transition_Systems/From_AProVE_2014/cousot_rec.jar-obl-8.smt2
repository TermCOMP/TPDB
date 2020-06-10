(declare-sort Loc 0)
(declare-const f1_0_main_ConstantStackPush Loc)
(declare-const f79_0_loop_GE Loc)
(declare-const f100_0_loop_InvokeMethod Loc)
(declare-const __init Loc)
(assert (distinct f1_0_main_ConstantStackPush f79_0_loop_GE f100_0_loop_InvokeMethod __init ))

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
    (cfg_trans2 pc f1_0_main_ConstantStackPush pc1 f79_0_loop_GE (and (and (and (= 2 arg1P) (= 2 arg2P)) (= 2 arg3P)) (= 0 arg4P)))
    (cfg_trans2 pc f79_0_loop_GE pc1 f100_0_loop_InvokeMethod (and (and (and (and (and (> arg4 arg2) (> arg2 0)) (= arg2 arg3)) (= arg1 arg1P)) (= (+ arg2 4) arg2P)) (= arg4 arg3P)))
    (cfg_trans2 pc f79_0_loop_GE pc1 f100_0_loop_InvokeMethod (and (and (and (and (and (and (<= arg4 arg2) (> arg2 0)) (> arg4 (- 1))) (= arg2 arg3)) (= arg1 arg1P)) (= (+ arg2 2) arg2P)) (= (+ arg4 1) arg3P)))
    (cfg_trans2 pc f100_0_loop_InvokeMethod pc1 f79_0_loop_GE (and (and (and (and (and (and (> arg3 0) (> arg1 1)) (> arg2 1)) (= arg2 arg1P)) (= arg2 arg2P)) (= arg2 arg3P)) (= arg3 arg4P)))
    (cfg_trans2 pc __init pc1 f1_0_main_ConstantStackPush true)
  )
)
