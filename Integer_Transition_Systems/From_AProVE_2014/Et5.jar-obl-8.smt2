(declare-sort Loc 0)
(declare-const f1_0_main_Load Loc)
(declare-const f1184_0_main_LT Loc)
(declare-const __init Loc)
(assert (distinct f1_0_main_Load f1184_0_main_LT __init ))

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

(define-fun init_main ( (pc Loc) (arg1 Int) (arg2 Int) (arg3 Int) (arg4 Int) (arg5 Int) (arg6 Int) (arg7 Int) (arg8 Int) ) Bool
  (cfg_init pc __init true))

(define-fun next_main (
                 (pc Loc) (arg1 Int) (arg2 Int) (arg3 Int) (arg4 Int) (arg5 Int) (arg6 Int) (arg7 Int) (arg8 Int)
                 (pc1 Loc) (arg1P Int) (arg2P Int) (arg3P Int) (arg4P Int) (arg5P Int) (arg6P Int) (arg7P Int) (arg8P Int)
             ) Bool
  (or
    (cfg_trans2 pc f1_0_main_Load pc1 f1184_0_main_LT (and (and (and (and (and (and (and (and (and (and (<= arg1P arg1) (> arg1 0)) (> arg1P 0)) (= 0 arg2)) (= 0 arg2P)) (= 0 arg3P)) (= 0 arg4P)) (= 0 arg5P)) (= 0 arg6P)) (= 0 arg7P)) (= 0 arg8P)))
    (cfg_trans2 pc f1_0_main_Load pc1 f1184_0_main_LT (and (and (and (and (and (and (and (and (and (and (<= arg1P arg1) (> arg2P (- 1))) (> arg1 0)) (> arg1P 0)) (= 1 arg2)) (= 0 arg3P)) (= 0 arg4P)) (= 0 arg5P)) (= 1 arg6P)) (= 1 arg7P)) (= 1 arg8P)))
    (cfg_trans2 pc f1_0_main_Load pc1 f1184_0_main_LT (and (and (and (and (and (and (and (and (and (and (> arg2P (- 1)) (> arg3P (- 1))) (<= arg1P arg1)) (> arg1 0)) (> arg1P 0)) (= 2 arg2)) (= 0 arg4P)) (= 0 arg5P)) (= 2 arg6P)) (= 2 arg7P)) (= 2 arg8P)))
    (cfg_trans2 pc f1_0_main_Load pc1 f1184_0_main_LT (and (and (and (and (and (and (and (and (and (and (> arg2P (- 1)) (> arg2 2)) (> arg4P (- 1))) (> arg3P (- 1))) (>= arg1 arg1P)) (> arg1 0)) (> arg1P 0)) (= arg4P arg5P)) (= arg2 arg6P)) (= 3 arg7P)) (= arg2 arg8P)))
    (cfg_trans2 pc f1184_0_main_LT pc1 f1184_0_main_LT (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (> arg4 (- 1)) (> arg6 (- 1))) (>= arg7 arg6)) (> arg3 (- 1))) (>= (* 2 arg2) 0)) (> (- (* 2 arg2) arg3) 0)) (<= arg1P arg1)) (> arg1 0)) (> arg1P 0)) (= arg4 arg5)) (= arg6 arg8)) (= 0 arg2P)) (= 0 arg3P)) (= arg4 arg4P)) (= arg4 arg5P)) (= arg6 arg6P)) (= arg7 arg7P)) (= arg6 arg8P)))
    (cfg_trans2 pc f1184_0_main_LT pc1 f1184_0_main_LT (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (> arg4 (- 1)) (> arg6 (- 1))) (> arg7 (- 1))) (< arg7 arg6)) (> arg2P (- 1))) (>= (+ arg7 1) arg6)) (> arg3 (- 1))) (>= (* 2 arg2) 0)) (>= (* 2 arg2P) 0)) (< (* 2 arg2P) (- (* 2 arg2) arg3))) (>= (+ arg4 (* 2 arg2P)) 0)) (<= arg1P arg1)) (> arg1 0)) (> arg1P 0)) (= arg4 arg5)) (= arg6 arg8)) (= 0 arg3P)) (= (+ arg4 (* 2 arg2P)) arg4P)) (= (+ arg4 (* 2 arg2P)) arg5P)) (= arg6 arg6P)) (= (+ arg7 1) arg7P)) (= arg6 arg8P)))
    (cfg_trans2 pc f1184_0_main_LT pc1 f1184_0_main_LT (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (> arg6 (- 1)) (< (+ arg7 1) arg6)) (> arg4 (- 1))) (> arg7 (- 1))) (> arg2P (- 1))) (> arg3P (- 1))) (> arg3 (- 1))) (>= (* 2 arg2) 0)) (>= (* 2 arg2P) 0)) (< (- (* 2 arg2P) arg3P) (- (* 2 arg2) arg3))) (>= (+ arg4 (* 2 arg2P)) 0)) (<= arg1P arg1)) (> arg1 0)) (> arg1P 0)) (= arg4 arg5)) (= arg6 arg8)) (= (- (+ arg4 (* 2 arg2P)) arg3P) arg4P)) (= (- (+ arg4 (* 2 arg2P)) arg3P) arg5P)) (= arg6 arg6P)) (= (+ arg7 2) arg7P)) (= arg6 arg8P)))
    (cfg_trans2 pc __init pc1 f1_0_main_Load true)
  )
)
