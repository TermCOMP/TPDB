(declare-sort Loc 0)
(declare-const f1_0_main_Load Loc)
(declare-const f908_0_main_InvokeMethod Loc)
(declare-const f358_0_createTree_Return Loc)
(declare-const f880_0_createTree_GE Loc)
(declare-const f940_0_gopher_NONNULL Loc)
(declare-const f1019_0_insert_GT Loc)
(declare-const __init Loc)
(assert (distinct f1_0_main_Load f908_0_main_InvokeMethod f358_0_createTree_Return f880_0_createTree_GE f940_0_gopher_NONNULL f1019_0_insert_GT __init ))

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

(define-fun init_main ( (pc Loc) (arg1 Int) (arg2 Int) (arg3 Int) (arg4 Int) (arg5 Int) (arg6 Int) ) Bool
  (cfg_init pc __init true))

(define-fun next_main (
                 (pc Loc) (arg1 Int) (arg2 Int) (arg3 Int) (arg4 Int) (arg5 Int) (arg6 Int)
                 (pc1 Loc) (arg1P Int) (arg2P Int) (arg3P Int) (arg4P Int) (arg5P Int) (arg6P Int)
             ) Bool
  (or
    (cfg_trans2 pc f1_0_main_Load pc1 f908_0_main_InvokeMethod (exists ((x7 Int)) (and (and (and (and (and (and (> x7 (- 1)) (> arg2 0)) (<= arg1P arg1)) (> arg1 0)) (> arg1P 0)) (> arg2P 0)) (> arg3P (- 1)))))
    (cfg_trans2 pc f358_0_createTree_Return pc1 f908_0_main_InvokeMethod (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (>= arg1 arg1P) (<= arg1P arg2)) (<= (- arg1P 1) arg3)) (<= arg2P arg2)) (<= (+ arg3P 1) arg2)) (<= arg3P arg3)) (> arg1 0)) (> arg2 0)) (> arg3 (- 1))) (> arg1P 0)) (> arg2P 0)) (> arg3P (- 1))) (<= (+ arg4 2) arg2)) (<= (+ arg5 2) arg2)) (= arg4 arg4P)) (= arg5 arg5P)))
    (cfg_trans2 pc f1_0_main_Load pc1 f880_0_createTree_GE (and (and (and (and (and (and (and (> arg6P (- 1)) (> arg2 1)) (> arg3P (- 1))) (> arg1 0)) (> arg1P 1)) (= 0 arg2P)) (= arg2 arg4P)) (= 2 arg5P)))
    (cfg_trans2 pc f880_0_createTree_GE pc1 f880_0_createTree_GE (exists ((x30 Int)) (and (and (and (and (and (and (and (and (and (and (and (and (> arg5 (- 1)) (> arg3 arg2)) (> arg3 0)) (> arg4 1)) (> x30 (- 1))) (< arg5 arg4)) (> arg1 0)) (> arg1P 3)) (<= (+ arg6 2) arg1)) (= (+ arg2 1) arg2P)) (= arg3 arg3P)) (= arg4 arg4P)) (= (+ arg5 1) arg5P))))
    (cfg_trans2 pc f880_0_createTree_GE pc1 f880_0_createTree_GE (exists ((x39 Int)) (and (and (and (and (and (and (and (and (and (and (and (and (> arg5 (- 1)) (> arg3 arg2)) (> arg3 0)) (> arg4 1)) (> x39 (- 1))) (< arg5 arg4)) (> arg1 0)) (> arg1P 3)) (<= (+ arg6 2) arg1)) (= (+ arg2 1) arg2P)) (= arg3 arg3P)) (= arg4 arg4P)) (= (+ arg5 1) arg5P))))
    (cfg_trans2 pc f880_0_createTree_GE pc1 f880_0_createTree_GE (exists ((x48 Int)) (and (and (and (and (and (and (and (and (and (and (and (and (> arg5 (- 1)) (> arg3 arg2)) (> arg3 0)) (> arg4 1)) (> x48 (- 1))) (< arg5 arg4)) (> arg1 0)) (> arg1P 2)) (<= (+ arg6 2) arg1)) (= (+ arg2 1) arg2P)) (= arg3 arg3P)) (= arg4 arg4P)) (= (+ arg5 1) arg5P))))
    (cfg_trans2 pc f880_0_createTree_GE pc1 f880_0_createTree_GE (exists ((x57 Int)) (and (and (and (and (and (and (and (and (and (and (and (and (> arg5 (- 1)) (> arg3 arg2)) (> arg3 0)) (> arg4 1)) (> x57 (- 1))) (< arg5 arg4)) (> arg1 0)) (> arg1P 2)) (<= (+ arg6 2) arg1)) (= (+ arg2 1) arg2P)) (= arg3 arg3P)) (= arg4 arg4P)) (= (+ arg5 1) arg5P))))
    (cfg_trans2 pc f908_0_main_InvokeMethod pc1 f940_0_gopher_NONNULL (exists ((x58 Int)) (and (and (and (and (and (and (and (and (and (and (and (<= arg1P arg2) (> x58 1)) (<= (+ arg2P 1) arg2)) (<= arg2P arg3)) (> arg1 0)) (> arg2 0)) (> arg3 (- 1))) (> arg1P 0)) (> arg2P (- 1))) (<= (+ arg4 2) arg2)) (<= (+ arg5 2) arg2)) (= arg5 arg3P))))
    (cfg_trans2 pc f940_0_gopher_NONNULL pc1 f940_0_gopher_NONNULL (and (and (and (and (and (and (and (and (<= (- arg1P 2) arg1) (<= (+ arg2P 3) arg1)) (<= (+ arg2P 1) arg2)) (> arg1 2)) (> arg2 0)) (> arg1P 3)) (> arg2P (- 1))) (<= (+ arg3 2) arg1)) (= 0 arg3P)))
    (cfg_trans2 pc f880_0_createTree_GE pc1 f1019_0_insert_GT (and (and (and (and (and (and (and (and (and (and (and (> arg5 (- 1)) (> arg3 arg2)) (> arg3 0)) (> arg4 1)) (> arg2P (- 1))) (< arg5 arg4)) (<= arg1P arg1)) (> arg1 0)) (> arg1P 0)) (<= (+ arg6 2) arg1)) (= arg4 arg3P)) (= arg6 arg4P)))
    (cfg_trans2 pc f1019_0_insert_GT pc1 f1019_0_insert_GT (and (and (and (and (and (and (and (and (> arg3 1) (< arg4 arg2)) (<= (+ arg1P 2) arg1)) (> arg1 2)) (> arg1P 0)) (<= (+ arg4 2) arg1)) (<= (+ arg4P 4) arg1)) (= arg2 arg2P)) (= arg3 arg3P)))
    (cfg_trans2 pc f1019_0_insert_GT pc1 f1019_0_insert_GT (and (and (and (and (and (and (and (and (> arg3 1) (>= arg4 arg2)) (<= (+ arg1P 2) arg1)) (> arg1 2)) (> arg1P 0)) (<= (+ arg4 2) arg1)) (<= (+ arg4P 4) arg1)) (= arg2 arg2P)) (= arg3 arg3P)))
    (cfg_trans2 pc __init pc1 f1_0_main_Load true)
  )
)
