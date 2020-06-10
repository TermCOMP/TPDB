(declare-sort Loc 0)
(declare-const f1_0_main_Load Loc)
(declare-const f975_0_random_GT Loc)
(declare-const f121_0_createList_Return Loc)
(declare-const f998_0_main_InvokeMethod Loc)
(declare-const f1099_0_get_InvokeMethod Loc)
(declare-const f983_0_getR_EQ Loc)
(declare-const f1248_0_createList_GE Loc)
(declare-const f1379_0_createList_NULL Loc)
(declare-const f739_0_getFirst_NONNULL Loc)
(declare-const __init Loc)
(assert (distinct f1_0_main_Load f975_0_random_GT f121_0_createList_Return f998_0_main_InvokeMethod f1099_0_get_InvokeMethod f983_0_getR_EQ f1248_0_createList_GE f1379_0_createList_NULL f739_0_getFirst_NONNULL __init ))

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
    (cfg_trans2 pc f1_0_main_Load pc1 f975_0_random_GT (and (and (and (and (<= arg1P arg1) (> arg2 (- 1))) (> arg1 0)) (> arg1P 0)) (> arg2P (- 1))))
    (cfg_trans2 pc f121_0_createList_Return pc1 f975_0_random_GT (exists ((x5 Int)) (and (and (and (and (and (<= arg1P arg1) (> x5 (- 1))) (<= (+ arg2P 1) arg1)) (> arg1 0)) (> arg1P 0)) (> arg2P (- 1)))))
    (cfg_trans2 pc f975_0_random_GT pc1 f998_0_main_InvokeMethod (exists ((x10 Int)) (and (and (and (and (and (and (and (<= arg1P arg1) (>= arg3P x10)) (<= (- arg1P 1) arg2)) (<= arg2P arg2)) (> arg1 0)) (> arg2 (- 1))) (> arg1P 0)) (> arg2P (- 1)))))
    (cfg_trans2 pc f998_0_main_InvokeMethod pc1 f1099_0_get_InvokeMethod (exists ((x16 Int)) (and (and (and (and (and (and (<= arg1P arg1) (>= arg3 x16)) (<= arg1P arg2)) (> arg1 0)) (> arg2 0)) (> arg1P 0)) (> arg2P 1))))
    (cfg_trans2 pc f975_0_random_GT pc1 f998_0_main_InvokeMethod (exists ((x24 Int) (x23 Int)) (and (and (and (and (and (and (and (and (and (< x24 x23) (> x24 (- 1))) (<= arg1P arg1)) (<= (- arg1P 1) arg2)) (<= arg2P arg2)) (> arg1 0)) (> arg2 (- 1))) (> arg1P 0)) (> arg2P (- 1))) (= (+ x24 1) arg3P))))
    (cfg_trans2 pc f1099_0_get_InvokeMethod pc1 f983_0_getR_EQ (and (and (and (and (and (<= arg1P arg2) (> arg1 0)) (> arg2 1)) (> arg1P 1)) (<= (+ arg3 2) arg2)) (= 0 arg2P)))
    (cfg_trans2 pc f975_0_random_GT pc1 f983_0_getR_EQ (exists ((x35 Int) (x34 Int)) (and (and (and (and (and (and (and (< x35 x34) (> x35 (- 1))) (> x34 0)) (<= (+ x35 1) x34)) (> arg2P (- 1))) (> arg1 0)) (> arg2 0)) (> arg1P 1))))
    (cfg_trans2 pc f1_0_main_Load pc1 f1248_0_createList_GE (and (and (and (and (and (and (and (<= (+ arg1P 1) arg1) (> arg1 0)) (> arg1P (- 1))) (= 0 arg2)) (= 0 arg2P)) (= 0 arg3P)) (= 0 arg4P)) (= 0 arg5P)))
    (cfg_trans2 pc f1_0_main_Load pc1 f1248_0_createList_GE (and (and (and (and (and (and (and (<= (+ arg1P 1) arg1) (> arg2 0)) (> arg1 0)) (> arg1P (- 1))) (= 0 arg2P)) (= 0 arg3P)) (= arg2 arg4P)) (= 1 arg5P)))
    (cfg_trans2 pc f1_0_main_Load pc1 f1248_0_createList_GE (and (and (and (and (and (and (and (> arg3P (- 1)) (> arg2 0)) (<= (+ arg1P 1) arg1)) (> arg1 0)) (> arg1P (- 1))) (= 0 arg2P)) (= arg2 arg4P)) (= 1 arg5P)))
    (cfg_trans2 pc f1248_0_createList_GE pc1 f1248_0_createList_GE (and (and (and (and (and (and (and (and (and (>= arg5 arg4) (> arg4 (- 1))) (> arg3 arg2)) (<= (- arg1P 2) arg1)) (> arg1 (- 1))) (> arg1P 1)) (= (+ arg2 1) arg2P)) (= arg3 arg3P)) (= arg4 arg4P)) (= arg5 arg5P)))
    (cfg_trans2 pc f1248_0_createList_GE pc1 f1248_0_createList_GE (and (and (and (and (and (and (and (and (>= arg5 arg4) (> arg4 (- 1))) (> arg3 arg2)) (> arg1 0)) (> arg1P 4)) (= (+ arg2 1) arg2P)) (= arg3 arg3P)) (= arg4 arg4P)) (= arg5 arg5P)))
    (cfg_trans2 pc f1248_0_createList_GE pc1 f1379_0_createList_NULL (and (and (and (and (and (and (and (and (and (and (and (> arg3 arg2) (> arg4 (- 1))) (< arg5 arg4)) (> arg5 (- 1))) (<= arg4P arg1)) (> arg1 (- 1))) (> arg2P 1)) (> arg4P (- 1))) (= arg3 arg1P)) (= arg2 arg3P)) (= arg4 arg5P)) (= (+ arg5 1) arg6P)))
    (cfg_trans2 pc f1248_0_createList_GE pc1 f1379_0_createList_NULL (exists ((x75 Int)) (and (and (and (and (and (and (and (and (and (and (and (and (> arg3 arg2) (> arg4 (- 1))) (< arg5 arg4)) (> arg5 (- 1))) (> x75 (- 1))) (<= arg4P arg1)) (> arg1 (- 1))) (> arg2P 1)) (> arg4P (- 1))) (= arg3 arg1P)) (= arg2 arg3P)) (= arg4 arg5P)) (= (+ arg5 1) arg6P))))
    (cfg_trans2 pc f1379_0_createList_NULL pc1 f1248_0_createList_GE (and (and (and (and (and (and (and (and (<= arg1P arg2) (<= (- arg1P 2) arg4)) (> arg2 1)) (> arg4 (- 1))) (> arg1P 1)) (= (+ arg3 1) arg2P)) (= arg1 arg3P)) (= arg5 arg4P)) (= arg6 arg5P)))
    (cfg_trans2 pc f1379_0_createList_NULL pc1 f1248_0_createList_GE (and (and (and (and (and (and (> arg2 2) (> arg4 0)) (> arg1P 4)) (= (+ arg3 1) arg2P)) (= arg1 arg3P)) (= arg5 arg4P)) (= arg6 arg5P)))
    (cfg_trans2 pc f998_0_main_InvokeMethod pc1 f739_0_getFirst_NONNULL (exists ((x90 Int)) (and (and (and (and (and (and (<= arg1P arg2) (>= arg3 x90)) (> arg1 0)) (> arg2 0)) (> arg1P 0)) (> arg2P (- 1))) (<= (+ arg3P 2) arg2))))
    (cfg_trans2 pc f975_0_random_GT pc1 f739_0_getFirst_NONNULL (exists ((x98 Int) (x97 Int) (x104 Int)) (and (and (and (and (and (and (and (and (and (and (< x98 x97) (> x98 (- 1))) (> x97 0)) (> x104 (- 1))) (<= (+ x98 1) x97)) (<= arg1P arg2)) (> arg1 0)) (> arg2 0)) (> arg1P 0)) (> arg2P (- 1))) (<= (+ arg3P 2) arg2))))
    (cfg_trans2 pc f739_0_getFirst_NONNULL pc1 f739_0_getFirst_NONNULL (and (and (and (and (> arg1 2) (> arg2 0)) (> arg1P 0)) (> arg2P (- 1))) (<= (+ arg3 2) arg1)))
    (cfg_trans2 pc f983_0_getR_EQ pc1 f983_0_getR_EQ (and (and (and (and (< (- arg2 1) arg2) (> arg2 0)) (> arg1 2)) (> arg1P 0)) (= (- arg2 1) arg2P)))
    (cfg_trans2 pc __init pc1 f1_0_main_Load true)
  )
)
