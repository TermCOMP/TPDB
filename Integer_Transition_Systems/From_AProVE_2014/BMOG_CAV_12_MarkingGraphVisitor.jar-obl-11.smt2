(declare-sort Loc 0)
(declare-const f1_0_main_Load Loc)
(declare-const f543_0_createTree_GT Loc)
(declare-const f1156_0_random_ArrayAccess Loc)
(declare-const f814_0_createTree_Return Loc)
(declare-const f3334_0_main_LE Loc)
(declare-const f3430_0_main_InvokeMethod Loc)
(declare-const f998_0_createTree_LE Loc)
(declare-const f2378_0_random_ArrayAccess Loc)
(declare-const f3147_0_getRandom_LT Loc)
(declare-const f3577_0_getRandom_LT Loc)
(declare-const f3446_0_visit_NE Loc)
(declare-const f3530_0_visit_NULL Loc)
(declare-const __init Loc)
(assert (distinct f1_0_main_Load f543_0_createTree_GT f1156_0_random_ArrayAccess f814_0_createTree_Return f3334_0_main_LE f3430_0_main_InvokeMethod f998_0_createTree_LE f2378_0_random_ArrayAccess f3147_0_getRandom_LT f3577_0_getRandom_LT f3446_0_visit_NE f3530_0_visit_NULL __init ))

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
    (cfg_trans2 pc f1_0_main_Load pc1 f543_0_createTree_GT (and (and (and (and (> arg2 0) (> arg1P (- 1))) (> arg1 0)) (= arg2 arg2P)) (= 1 arg3P)))
    (cfg_trans2 pc f1_0_main_Load pc1 f1156_0_random_ArrayAccess (exists ((x8 Int)) (and (and (and (and (and (> arg2 0) (> x8 (- 1))) (> arg1 0)) (> arg1P 1)) (= arg2 arg2P)) (= 0 arg3P))))
    (cfg_trans2 pc f814_0_createTree_Return pc1 f1156_0_random_ArrayAccess (and (and (and (and (and (and (and (<= arg1P arg2) (> arg1 0)) (> arg2 1)) (> arg1P 1)) (<= (+ arg5 2) arg2)) (= 0 arg4)) (= 0 arg3P)) (= arg5 arg4P)))
    (cfg_trans2 pc f1_0_main_Load pc1 f3334_0_main_LE (and (and (and (and (and (and (and (and (> arg2 0) (> arg4P (- 1))) (<= arg1P arg1)) (<= (+ arg2P 1) arg1)) (> arg1 0)) (> arg1P 0)) (> arg2P (- 1))) (= (- arg4P 1) arg3P)) (= 2 arg5P)))
    (cfg_trans2 pc f1156_0_random_ArrayAccess pc1 f3334_0_main_LE (exists ((x150 Int)) (and (and (and (and (and (and (and (and (and (and (> x150 0) (> arg4P (- 1))) (<= (+ arg1P 1) arg1)) (<= arg2P arg1)) (> arg1 1)) (> arg1P 0)) (> arg2P 1)) (<= (+ arg4 2) arg1)) (= 0 arg3)) (= (- arg4P 1) arg3P)) (= (+ x150 1) arg5P))))
    (cfg_trans2 pc f3334_0_main_LE pc1 f3430_0_main_InvokeMethod (exists ((x27 Int)) (and (and (and (and (and (and (and (and (and (and (and (> x27 0) (> arg4 0)) (<= arg1P arg1)) (<= arg1P arg2)) (<= arg4P arg2)) (> arg1 0)) (> arg2 0)) (> arg1P 0)) (> arg3P (- 1))) (> arg4P 0)) (<= (+ arg6P 1) arg2)) (= arg3 arg2P))))
    (cfg_trans2 pc f3334_0_main_LE pc1 f3430_0_main_InvokeMethod (exists ((x38 Int)) (and (and (and (and (and (and (and (and (and (and (and (> x38 0) (> arg4 0)) (<= arg1P arg1)) (<= arg1P arg2)) (<= arg4P arg2)) (> arg1 0)) (> arg2 0)) (> arg1P 0)) (> arg3P 1)) (> arg4P 0)) (<= (+ arg6P 1) arg2)) (= arg3 arg2P))))
    (cfg_trans2 pc f3430_0_main_InvokeMethod pc1 f3334_0_main_LE (exists ((x49 Int)) (and (and (and (and (and (and (and (and (and (and (and (<= arg1P arg1) (> x49 0)) (<= arg1P arg3)) (<= arg1P arg4)) (> arg1 0)) (> arg3 0)) (> arg4 0)) (> arg1P 0)) (> arg2P 0)) (<= (+ arg6 1) arg4)) (= (- arg2 1) arg3P)) (= arg2 arg4P))))
    (cfg_trans2 pc f543_0_createTree_GT pc1 f998_0_createTree_LE (and (and (and (and (and (and (> arg2 (- 1)) (> arg3 0)) (> arg1 0)) (> arg2P (- 1))) (= arg1 arg1P)) (= arg2 arg3P)) (= (+ arg3 1) arg4P)))
    (cfg_trans2 pc f998_0_createTree_LE pc1 f543_0_createTree_GT (and (and (and (and (and (and (> arg1 0) (> arg2 0)) (< (- arg1 1) arg1)) (> arg4 1)) (= (- arg1 1) arg1P)) (= arg3 arg2P)) (= arg4 arg3P)))
    (cfg_trans2 pc f998_0_createTree_LE pc1 f998_0_createTree_LE (and (and (and (and (and (and (> arg2 0) (> arg4 1)) (= 1 arg1)) (= 1 arg1P)) (= (- arg2 1) arg2P)) (= arg3 arg3P)) (= arg4 arg4P)))
    (cfg_trans2 pc f998_0_createTree_LE pc1 f998_0_createTree_LE (and (and (and (and (and (and (> arg1 0) (> arg2 0)) (< (- arg1 1) arg1)) (> arg4 1)) (= arg1 arg1P)) (= (- arg2 1) arg2P)) (= arg3 arg3P)))
    (cfg_trans2 pc f3334_0_main_LE pc1 f2378_0_random_ArrayAccess (exists ((x75 Int)) (and (and (and (and (and (and (> x75 0) (> arg4 0)) (<= arg1P arg2)) (> arg1 0)) (> arg2 0)) (> arg1P 0)) (<= (+ arg2P 1) arg2))))
    (cfg_trans2 pc f3430_0_main_InvokeMethod pc1 f2378_0_random_ArrayAccess (exists ((x83 Int)) (and (and (and (and (and (and (and (<= arg1P arg4) (> x83 0)) (> arg1 0)) (> arg3 (- 1))) (> arg4 0)) (> arg1P 0)) (<= (+ arg6 1) arg4)) (= arg6 arg2P))))
    (cfg_trans2 pc f2378_0_random_ArrayAccess pc1 f3147_0_getRandom_LT (exists ((x91 Int)) (and (and (and (and (and (and (and (> x91 (- 1)) (> arg3P (- 1))) (<= arg2P arg1)) (> arg1 0)) (> arg2P 0)) (<= (+ arg2 1) arg1)) (= (- arg3P 1) arg1P)) (= (+ x91 1) arg4P))))
    (cfg_trans2 pc f3147_0_getRandom_LT pc1 f3577_0_getRandom_LT (and (and (and (and (and (and (and (and (> arg4P (- 1)) (> arg4 (- 1))) (> arg3 (- 1))) (>= arg2 (+ arg3P 2))) (> arg2 2)) (> arg3P 0)) (= arg1 arg1P)) (= (- arg4P 1) arg2P)) (= (+ arg4 1) arg5P)))
    (cfg_trans2 pc f3577_0_getRandom_LT pc1 f3577_0_getRandom_LT (and (and (and (and (and (and (and (<= (+ arg3P 2) arg3) (> arg4 (- 1))) (> arg3 2)) (> arg3P 0)) (= arg1 arg1P)) (= (- arg2 1) arg2P)) (= arg2 arg4P)) (= arg5 arg5P)))
    (cfg_trans2 pc f3577_0_getRandom_LT pc1 f3147_0_getRandom_LT (and (and (and (and (and (> arg3 0) (< arg4 0)) (> arg2P (- 1))) (= (- arg1 1) arg1P)) (= arg1 arg3P)) (= arg5 arg4P)))
    (cfg_trans2 pc f3577_0_getRandom_LT pc1 f3147_0_getRandom_LT (and (and (and (and (and (> arg3 1) (> arg4 (- 1))) (> arg2P (- 1))) (= (- arg1 1) arg1P)) (= arg1 arg3P)) (= arg5 arg4P)))
    (cfg_trans2 pc f3334_0_main_LE pc1 f3446_0_visit_NE (exists ((x120 Int)) (and (and (and (and (and (and (and (and (> x120 0) (< arg4 1)) (<= arg1P arg2)) (> arg1 0)) (> arg2 0)) (> arg1P 0)) (<= (+ arg4P 2) arg2)) (<= (+ arg2P 2) arg2)) (= arg2P arg3P))))
    (cfg_trans2 pc f3446_0_visit_NE pc1 f3530_0_visit_NULL (and (and (and (and (and (> arg1 0) (> arg2P (- 1))) (<= (+ arg4 2) arg1)) (<= (+ arg2 2) arg1)) (= arg2 arg3)) (= arg2 arg1P)))
    (cfg_trans2 pc f3530_0_visit_NULL pc1 f3446_0_visit_NE (and (and (> arg2 0) (> arg1P 0)) (= arg1 arg2P)))
    (cfg_trans2 pc f3530_0_visit_NULL pc1 f3530_0_visit_NULL (and (and (and (and (<= (+ arg2P 1) arg2) (> arg2 0)) (> arg2P (- 1))) (= arg1 arg1P)) (= arg3 arg3P)))
    (cfg_trans2 pc __init pc1 f1_0_main_Load true)
  )
)
