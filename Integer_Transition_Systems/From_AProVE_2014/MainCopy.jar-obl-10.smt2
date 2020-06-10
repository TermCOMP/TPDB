(declare-sort Loc 0)
(declare-const f1_0_main_Load Loc)
(declare-const f686_0_main_InvokeMethod Loc)
(declare-const f120_0_createList_Return Loc)
(declare-const f922_0_createList_GE Loc)
(declare-const f1114_0_createList_NULL Loc)
(declare-const f744_0_getFirst_NONNULL Loc)
(declare-const f1184_0_copyR_NULL Loc)
(declare-const __init Loc)
(assert (distinct f1_0_main_Load f686_0_main_InvokeMethod f120_0_createList_Return f922_0_createList_GE f1114_0_createList_NULL f744_0_getFirst_NONNULL f1184_0_copyR_NULL __init ))

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
    (cfg_trans2 pc f1_0_main_Load pc1 f686_0_main_InvokeMethod (and (and (and (<= arg1P arg1) (> arg1 0)) (> arg1P 0)) (> arg2P (- 1))))
    (cfg_trans2 pc f120_0_createList_Return pc1 f686_0_main_InvokeMethod (and (and (and (and (<= arg1P arg1) (<= (+ arg2P 1) arg1)) (> arg1 0)) (> arg1P 0)) (> arg2P (- 1))))
    (cfg_trans2 pc f1_0_main_Load pc1 f922_0_createList_GE (and (and (and (and (and (and (and (<= (+ arg1P 1) arg1) (> arg1 0)) (> arg1P (- 1))) (= 0 arg2)) (= 0 arg2P)) (= 0 arg3P)) (= 0 arg4P)) (= 0 arg5P)))
    (cfg_trans2 pc f1_0_main_Load pc1 f922_0_createList_GE (and (and (and (and (and (and (and (<= (+ arg1P 1) arg1) (> arg2 0)) (> arg1 0)) (> arg1P (- 1))) (= 0 arg2P)) (= 0 arg3P)) (= arg2 arg4P)) (= 1 arg5P)))
    (cfg_trans2 pc f1_0_main_Load pc1 f922_0_createList_GE (and (and (and (and (and (and (and (> arg3P (- 1)) (> arg2 0)) (<= (+ arg1P 1) arg1)) (> arg1 0)) (> arg1P (- 1))) (= 0 arg2P)) (= arg2 arg4P)) (= 1 arg5P)))
    (cfg_trans2 pc f922_0_createList_GE pc1 f922_0_createList_GE (and (and (and (and (and (and (and (and (and (>= arg5 arg4) (> arg3 arg2)) (> arg4 (- 1))) (<= (- arg1P 2) arg1)) (> arg1 (- 1))) (> arg1P 1)) (= (+ arg2 1) arg2P)) (= arg3 arg3P)) (= arg4 arg4P)) (= arg5 arg5P)))
    (cfg_trans2 pc f922_0_createList_GE pc1 f922_0_createList_GE (and (and (and (and (and (and (and (and (>= arg5 arg4) (> arg3 arg2)) (> arg4 (- 1))) (> arg1 0)) (> arg1P 4)) (= (+ arg2 1) arg2P)) (= arg3 arg3P)) (= arg4 arg4P)) (= arg5 arg5P)))
    (cfg_trans2 pc f922_0_createList_GE pc1 f1114_0_createList_NULL (and (and (and (and (and (and (and (and (and (and (and (> arg4 (- 1)) (> arg3 arg2)) (< arg5 arg4)) (> arg5 (- 1))) (<= arg4P arg1)) (> arg1 (- 1))) (> arg2P 1)) (> arg4P (- 1))) (= arg3 arg1P)) (= arg2 arg3P)) (= arg4 arg5P)) (= (+ arg5 1) arg6P)))
    (cfg_trans2 pc f922_0_createList_GE pc1 f1114_0_createList_NULL (exists ((x43 Int)) (and (and (and (and (and (and (and (and (and (and (and (and (> arg4 (- 1)) (> arg3 arg2)) (< arg5 arg4)) (> x43 (- 1))) (> arg5 (- 1))) (<= arg4P arg1)) (> arg1 (- 1))) (> arg2P 1)) (> arg4P (- 1))) (= arg3 arg1P)) (= arg2 arg3P)) (= arg4 arg5P)) (= (+ arg5 1) arg6P))))
    (cfg_trans2 pc f1114_0_createList_NULL pc1 f922_0_createList_GE (and (and (and (and (and (and (and (and (<= arg1P arg2) (<= (- arg1P 2) arg4)) (> arg2 1)) (> arg4 (- 1))) (> arg1P 1)) (= (+ arg3 1) arg2P)) (= arg1 arg3P)) (= arg5 arg4P)) (= arg6 arg5P)))
    (cfg_trans2 pc f1114_0_createList_NULL pc1 f922_0_createList_GE (and (and (and (and (and (and (> arg2 2) (> arg4 0)) (> arg1P 4)) (= (+ arg3 1) arg2P)) (= arg1 arg3P)) (= arg5 arg4P)) (= arg6 arg5P)))
    (cfg_trans2 pc f686_0_main_InvokeMethod pc1 f744_0_getFirst_NONNULL (and (and (and (and (and (<= arg1P arg2) (> arg1 0)) (> arg2 0)) (> arg1P 0)) (> arg2P (- 1))) (<= (+ arg3P 2) arg2)))
    (cfg_trans2 pc f744_0_getFirst_NONNULL pc1 f744_0_getFirst_NONNULL (and (and (and (and (> arg1 2) (> arg2 0)) (> arg1P 0)) (> arg2P (- 1))) (<= (+ arg3 2) arg1)))
    (cfg_trans2 pc f686_0_main_InvokeMethod pc1 f1184_0_copyR_NULL (and (and (and (and (and (and (<= (+ arg3P 1) arg1) (<= (+ arg3P 1) arg2)) (> arg1 0)) (> arg2 0)) (> arg1P 1)) (> arg2P 1)) (> arg3P (- 1))))
    (cfg_trans2 pc f1184_0_copyR_NULL pc1 f1184_0_copyR_NULL (and (and (and (and (and (and (and (and (<= (+ arg3P 1) arg1) (<= arg3P arg2)) (<= (- arg3P 2) arg3)) (> arg1 2)) (> arg2 1)) (> arg3 (- 1))) (> arg1P 0)) (> arg2P 1)) (> arg3P 1)))
    (cfg_trans2 pc f1184_0_copyR_NULL pc1 f1184_0_copyR_NULL (and (and (and (and (and (> arg1 2) (> arg2 2)) (> arg3 0)) (> arg1P 0)) (> arg2P 1)) (> arg3P 4)))
    (cfg_trans2 pc __init pc1 f1_0_main_Load true)
  )
)
