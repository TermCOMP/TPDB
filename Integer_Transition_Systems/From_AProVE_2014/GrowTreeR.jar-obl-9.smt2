(declare-sort Loc 0)
(declare-const f1_0_main_Load Loc)
(declare-const f495_0_createTree_GT Loc)
(declare-const f1016_0_main_InvokeMethod Loc)
(declare-const f348_0_createTree_Return Loc)
(declare-const f1034_0_growList_NONNULL Loc)
(declare-const f998_0_createTree_GE Loc)
(declare-const f1232_0_growList_InvokeMethod Loc)
(declare-const f1168_0_growTree_Return Loc)
(declare-const __init Loc)
(assert (distinct f1_0_main_Load f495_0_createTree_GT f1016_0_main_InvokeMethod f348_0_createTree_Return f1034_0_growList_NONNULL f998_0_createTree_GE f1232_0_growList_InvokeMethod f1168_0_growTree_Return __init ))

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
    (cfg_trans2 pc f1_0_main_Load pc1 f495_0_createTree_GT (and (and (and (and (> arg1P (- 1)) (> arg2 0)) (> arg1 0)) (= arg2 arg2P)) (= 1 arg3P)))
    (cfg_trans2 pc f1_0_main_Load pc1 f1016_0_main_InvokeMethod (exists ((x8 Int)) (and (and (and (and (and (> x8 (- 1)) (> arg2 0)) (<= arg1P arg1)) (> arg1 0)) (> arg1P 0)) (> arg2P (- 1)))))
    (cfg_trans2 pc f348_0_createTree_Return pc1 f1016_0_main_InvokeMethod (and (and (and (and (and (<= arg1P arg1) (<= (+ arg2P 1) arg1)) (> arg1 0)) (> arg1P 0)) (> arg2P (- 1))) (= arg2 arg3P)))
    (cfg_trans2 pc f1016_0_main_InvokeMethod pc1 f1034_0_growList_NONNULL (exists ((x14 Int)) (and (and (and (and (and (and (> x14 0) (> arg3 1)) (<= arg1P arg2)) (> arg1 0)) (> arg2 (- 1))) (> arg1P (- 1))) (= arg3 arg2P))))
    (cfg_trans2 pc f495_0_createTree_GT pc1 f998_0_createTree_GE (and (and (and (and (and (and (and (and (and (> arg2 (- 1)) (> arg1 0)) (> arg3 0)) (< arg3 arg2)) (> arg4P (- 1))) (= arg1 arg1P)) (= (- arg1 1) arg2P)) (= 0 arg3P)) (= arg2 arg5P)) (= (+ arg3 1) arg6P)))
    (cfg_trans2 pc f998_0_createTree_GE pc1 f495_0_createTree_GT (and (and (and (and (and (and (and (and (and (and (> arg4 0) (> arg4 arg3)) (> arg1 0)) (> arg6 1)) (< arg2 arg1)) (< (- arg2 1) arg1)) (> arg2 (- 1))) (< (- arg2 1) arg2)) (= (- arg2 1) arg1P)) (= arg5 arg2P)) (= arg6 arg3P)))
    (cfg_trans2 pc f998_0_createTree_GE pc1 f998_0_createTree_GE (and (and (and (and (and (and (and (and (and (and (and (and (and (> arg4 0) (> arg4 arg3)) (> arg1 0)) (> arg6 1)) (< arg2 arg1)) (< (- arg2 1) arg1)) (> arg2 (- 1))) (< (- arg2 1) arg2)) (= arg1 arg1P)) (= arg2 arg2P)) (= (+ arg3 1) arg3P)) (= arg4 arg4P)) (= arg5 arg5P)) (= arg6 arg6P)))
    (cfg_trans2 pc f998_0_createTree_GE pc1 f998_0_createTree_GE (and (and (and (and (and (and (and (and (and (and (and (and (> arg4 0) (> arg4 arg3)) (> arg1 0)) (> arg6 1)) (< arg2 arg1)) (< (- arg2 1) arg1)) (> arg2 (- 1))) (< (- arg2 1) arg2)) (= arg1 arg1P)) (= arg2 arg2P)) (= (+ arg3 1) arg3P)) (= arg4 arg4P)) (= arg5 arg5P)))
    (cfg_trans2 pc f1034_0_growList_NONNULL pc1 f1034_0_growList_NONNULL (and (and (and (and (<= (+ arg1P 2) arg1) (> arg2 1)) (> arg1 1)) (> arg1P (- 1))) (= arg2 arg2P)))
    (cfg_trans2 pc f1034_0_growList_NONNULL pc1 f1232_0_growList_InvokeMethod (and (and (and (and (and (and (and (<= (+ arg2P 1) arg1) (> arg2 1)) (<= (+ arg5P 1) arg1)) (> arg1 0)) (> arg1P 4)) (> arg2P (- 1))) (> arg5P (- 1))) (= arg2 arg4P)))
    (cfg_trans2 pc f1168_0_growTree_Return pc1 f1232_0_growList_InvokeMethod (and (and (and (and (and (and (and (and (and (and (and (and (<= arg1P arg1) (<= (+ arg2P 2) arg1)) (<= arg2P arg5)) (<= (+ arg5P 2) arg1)) (<= arg5P arg5)) (> arg1 5)) (> arg5 (- 1))) (> arg1P 5)) (> arg2P (- 1))) (> arg5P (- 1))) (<= (+ arg4 6) arg1)) (= arg2 arg3P)) (= arg3 arg4P)))
    (cfg_trans2 pc f1034_0_growList_NONNULL pc1 f1232_0_growList_InvokeMethod (and (and (and (and (and (and (and (and (<= (- arg1P 7) arg1) (> arg2 1)) (<= (+ arg2P 1) arg1)) (<= (+ arg5P 1) arg1)) (> arg1 0)) (> arg1P 7)) (> arg2P (- 1))) (> arg5P (- 1))) (= arg2 arg4P)))
    (cfg_trans2 pc f1232_0_growList_InvokeMethod pc1 f1034_0_growList_NONNULL (and (and (and (and (and (and (and (and (<= (+ arg1P 2) arg1) (> arg4 1)) (<= arg1P arg2)) (<= arg1P arg5)) (> arg1 4)) (> arg2 (- 1))) (> arg5 (- 1))) (> arg1P (- 1))) (= arg4 arg2P)))
    (cfg_trans2 pc f1034_0_growList_NONNULL pc1 f1034_0_growList_NONNULL (and (and (and (and (<= (+ arg1P 4) arg1) (> arg2 1)) (> arg1 4)) (> arg1P 0)) (= arg2 arg2P)))
    (cfg_trans2 pc __init pc1 f1_0_main_Load true)
  )
)
