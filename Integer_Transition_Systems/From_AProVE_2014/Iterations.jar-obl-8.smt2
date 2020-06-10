(declare-sort Loc 0)
(declare-const f1_0_main_ConstantStackPush Loc)
(declare-const f101_0_main_GE Loc)
(declare-const f255_0_main_GE Loc)
(declare-const f292_0_main_LT Loc)
(declare-const f422_0_main_GE Loc)
(declare-const f448_0_main_LT Loc)
(declare-const __init Loc)
(assert (distinct f1_0_main_ConstantStackPush f101_0_main_GE f255_0_main_GE f292_0_main_LT f422_0_main_GE f448_0_main_LT __init ))

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

(define-fun init_main ( (pc Loc) (arg1 Int) (arg2 Int) (arg3 Int) (arg4 Int) (arg5 Int) (arg6 Int) (arg7 Int) (arg8 Int) (arg9 Int) ) Bool
  (cfg_init pc __init true))

(define-fun next_main (
                 (pc Loc) (arg1 Int) (arg2 Int) (arg3 Int) (arg4 Int) (arg5 Int) (arg6 Int) (arg7 Int) (arg8 Int) (arg9 Int)
                 (pc1 Loc) (arg1P Int) (arg2P Int) (arg3P Int) (arg4P Int) (arg5P Int) (arg6P Int) (arg7P Int) (arg8P Int) (arg9P Int)
             ) Bool
  (or
    (cfg_trans2 pc f1_0_main_ConstantStackPush pc1 f101_0_main_GE (and (and (and (and (and (<= arg1P arg1) (> arg2 (- 1))) (> arg1 0)) (> arg1P 0)) (= 0 arg2P)) (= arg2 arg3P)))
    (cfg_trans2 pc f101_0_main_GE pc1 f255_0_main_GE (and (and (and (and (and (and (and (<= arg1P arg1) (> arg3 arg2)) (> arg1 0)) (> arg1P 0)) (= arg2 arg2P)) (= 0 arg3P)) (= (* 2 arg2) arg4P)) (= arg3 arg5P)))
    (cfg_trans2 pc f255_0_main_GE pc1 f101_0_main_GE (and (and (and (and (and (and (>= arg3 arg4) (> arg5 (- 1))) (>= arg1 arg1P)) (> arg1 0)) (> arg1P 0)) (= (+ arg2 1) arg2P)) (= arg5 arg3P)))
    (cfg_trans2 pc f255_0_main_GE pc1 f292_0_main_LT (and (and (and (and (and (and (and (and (and (and (> arg4 arg3) (> arg3 (- 1))) (> arg2 (- 1))) (<= arg1P arg1)) (> arg1 0)) (> arg1P 0)) (= arg2 arg2P)) (= arg4 arg3P)) (= arg3 arg4P)) (= (+ arg2 arg3) arg5P)) (= arg5 arg6P)))
    (cfg_trans2 pc f292_0_main_LT pc1 f255_0_main_GE (and (and (and (and (and (and (and (<= arg1P arg1) (< arg5 0)) (> arg1 0)) (> arg1P 0)) (= arg2 arg2P)) (= (+ arg4 1) arg3P)) (= arg3 arg4P)) (= arg6 arg5P)))
    (cfg_trans2 pc f292_0_main_LT pc1 f422_0_main_GE (and (and (and (and (and (and (and (and (and (and (and (and (and (and (>= (* 3 arg4) 0) (> arg5 (- 1))) (>= (* 2 arg2) 0)) (>= (+ (* 2 arg2) (* 3 arg4)) 0)) (>= (* 4 arg5) 0)) (<= arg1P arg1)) (> arg1 0)) (> arg1P 0)) (= arg2 arg2P)) (= arg3 arg3P)) (= arg4 arg4P)) (= arg5 arg5P)) (= 0 arg6P)) (= (+ (+ (* 2 arg2) (* 3 arg4)) (* 4 arg5)) arg7P)) (= arg6 arg8P)))
    (cfg_trans2 pc f422_0_main_GE pc1 f292_0_main_LT (and (and (and (and (and (and (and (and (<= arg1P arg1) (<= arg7 arg6)) (> arg1 0)) (> arg1P 0)) (= arg2 arg2P)) (= arg3 arg3P)) (= arg4 arg4P)) (= (- arg5 1) arg5P)) (= arg8 arg6P)))
    (cfg_trans2 pc f422_0_main_GE pc1 f448_0_main_LT (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (>= (* 100 arg4) 0) (> arg7 arg6)) (>= (* 1000 arg2) 0)) (>= (* 10 arg5) 0)) (>= (+ (* 1000 arg2) (* 100 arg4)) 0)) (>= (+ (+ (* 1000 arg2) (* 100 arg4)) (* 10 arg5)) 0)) (> arg6 (- 1))) (<= arg1P arg1)) (> arg1 0)) (> arg1P 0)) (= arg2 arg2P)) (= arg3 arg3P)) (= arg4 arg4P)) (= arg5 arg5P)) (= arg7 arg6P)) (= arg6 arg7P)) (= (+ (+ (+ (* 1000 arg2) (* 100 arg4)) (* 10 arg5)) arg6) arg8P)) (= arg8 arg9P)))
    (cfg_trans2 pc f448_0_main_LT pc1 f422_0_main_GE (and (and (and (and (and (and (and (and (and (and (<= arg1P arg1) (< arg8 0)) (> arg1 0)) (> arg1P 0)) (= arg2 arg2P)) (= arg3 arg3P)) (= arg4 arg4P)) (= arg5 arg5P)) (= (+ arg7 1) arg6P)) (= arg6 arg7P)) (= arg9 arg8P)))
    (cfg_trans2 pc f448_0_main_LT pc1 f448_0_main_LT (and (and (and (and (and (and (and (and (and (and (and (<= arg1P arg1) (> arg8 (- 1))) (> arg1 0)) (> arg1P 0)) (= arg2 arg2P)) (= arg3 arg3P)) (= arg4 arg4P)) (= arg5 arg5P)) (= arg6 arg6P)) (= arg7 arg7P)) (= (- arg8 1) arg8P)) (= arg9 arg9P)))
    (cfg_trans2 pc __init pc1 f1_0_main_ConstantStackPush true)
  )
)
