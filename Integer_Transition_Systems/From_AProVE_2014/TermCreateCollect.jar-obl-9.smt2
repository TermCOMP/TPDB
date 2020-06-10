(declare-sort Loc 0)
(declare-const f1_0_main_Load Loc)
(declare-const f2311_0_getVariables_InvokeMethod Loc)
(declare-const f1220_0_create_Return Loc)
(declare-const f804_0_create_GT Loc)
(declare-const f2072_0_create_GE Loc)
(declare-const f2992_0_collectVariables_NULL Loc)
(declare-const __init Loc)
(assert (distinct f1_0_main_Load f2311_0_getVariables_InvokeMethod f1220_0_create_Return f804_0_create_GT f2072_0_create_GE f2992_0_collectVariables_NULL __init ))

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
    (cfg_trans2 pc f1_0_main_Load pc1 f2311_0_getVariables_InvokeMethod (exists ((x7 Int)) (and (and (and (and (and (> x7 (- 1)) (> arg2 0)) (<= arg1P arg1)) (> arg1 0)) (> arg1P 0)) (> arg2P 3))))
    (cfg_trans2 pc f1220_0_create_Return pc1 f2311_0_getVariables_InvokeMethod (and (and (and (and (and (and (and (and (and (and (and (<= arg1P arg1) (<= (+ arg1P 3) arg2)) (<= arg2P arg2)) (> arg1 0)) (> arg2 3)) (> arg1P 0)) (> arg2P 3)) (<= (+ arg5 5) arg2)) (<= (+ arg4 5) arg2)) (= arg3 arg3P)) (= arg4 arg4P)) (= arg5 arg5P)))
    (cfg_trans2 pc f1_0_main_Load pc1 f804_0_create_GT (and (and (and (and (> arg1P (- 1)) (> arg2 0)) (> arg1 0)) (= arg2 arg2P)) (= 1 arg3P)))
    (cfg_trans2 pc f804_0_create_GT pc1 f2072_0_create_GE (and (and (and (and (and (and (and (and (> arg2 (- 1)) (> arg1 1)) (> arg3 0)) (< arg3 arg2)) (> arg3P (- 1))) (= arg1 arg1P)) (= 0 arg2P)) (= arg2 arg4P)) (= (+ arg3 1) arg5P)))
    (cfg_trans2 pc f2072_0_create_GE pc1 f804_0_create_GT (and (and (and (and (and (and (and (> arg3 arg2) (> arg1 1)) (> arg3 0)) (> arg5 1)) (< (- arg1 1) arg1)) (= (- arg1 1) arg1P)) (= arg4 arg2P)) (= arg5 arg3P)))
    (cfg_trans2 pc f2072_0_create_GE pc1 f2072_0_create_GE (and (and (and (and (and (and (and (and (> arg3 arg2) (> arg1 1)) (> arg3 0)) (> arg5 1)) (< (- arg1 1) arg1)) (= arg1 arg1P)) (= (+ arg2 1) arg2P)) (= arg3 arg3P)) (= arg4 arg4P)))
    (cfg_trans2 pc f2311_0_getVariables_InvokeMethod pc1 f2992_0_collectVariables_NULL (exists ((x34 Int)) (and (and (and (and (and (and (and (and (and (and (and (> x34 0) (> arg3 1)) (<= (- arg1P 1) arg1)) (<= (+ arg1P 2) arg2)) (<= (+ arg2P 3) arg2)) (> arg1 0)) (> arg2 3)) (> arg1P 1)) (> arg2P 0)) (<= (+ arg5 5) arg2)) (<= (+ arg4 5) arg2)) (= arg3 arg3P))))
    (cfg_trans2 pc f2992_0_collectVariables_NULL pc1 f2992_0_collectVariables_NULL (and (and (and (and (and (and (and (<= arg1P arg1) (> arg3 1)) (<= (+ arg2P 3) arg2)) (> arg1 0)) (> arg2 2)) (> arg1P 0)) (> arg2P (- 1))) (= arg3 arg3P)))
    (cfg_trans2 pc f2992_0_collectVariables_NULL pc1 f2992_0_collectVariables_NULL (and (and (and (and (and (and (<= (+ arg2P 2) arg2) (> arg3 1)) (> arg1 0)) (> arg2 2)) (> arg1P 0)) (> arg2P (- 1))) (= arg3 arg3P)))
    (cfg_trans2 pc f2992_0_collectVariables_NULL pc1 f2992_0_collectVariables_NULL (and (and (and (and (and (<= (+ arg2P 2) arg2) (> arg1 0)) (> arg2 2)) (> arg1P 2)) (> arg2P (- 1))) (= arg3 arg3P)))
    (cfg_trans2 pc __init pc1 f1_0_main_Load true)
  )
)
