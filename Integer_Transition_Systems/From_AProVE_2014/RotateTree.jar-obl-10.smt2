(declare-sort Loc 0)
(declare-const f1_0_main_Load Loc)
(declare-const f1007_0_main_InvokeMethod Loc)
(declare-const f358_0_createTree_Return Loc)
(declare-const f1332_0_rotateEachNode_FieldAccess Loc)
(declare-const f972_0_createTree_GE Loc)
(declare-const f1142_0_insert_GT Loc)
(declare-const __init Loc)
(assert (distinct f1_0_main_Load f1007_0_main_InvokeMethod f358_0_createTree_Return f1332_0_rotateEachNode_FieldAccess f972_0_createTree_GE f1142_0_insert_GT __init ))

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
    (cfg_trans2 pc f1_0_main_Load pc1 f1007_0_main_InvokeMethod (exists ((x7 Int)) (and (and (and (and (and (> x7 (- 1)) (> arg2 0)) (<= arg1P arg1)) (> arg1 0)) (> arg1P 0)) (> arg2P 0))))
    (cfg_trans2 pc f358_0_createTree_Return pc1 f1007_0_main_InvokeMethod (and (and (and (and (and (and (and (and (and (and (and (and (>= arg1 arg1P) (<= arg1P arg2)) (<= arg2P arg2)) (> arg1 0)) (> arg2 0)) (> arg1P 0)) (> arg2P 0)) (<= (+ arg3 2) arg2)) (<= (+ arg5 2) arg2)) (<= (+ arg4 2) arg2)) (= arg3 arg3P)) (= arg4 arg4P)) (= arg5 arg5P)))
    (cfg_trans2 pc f1007_0_main_InvokeMethod pc1 f1332_0_rotateEachNode_FieldAccess (exists ((x16 Int)) (and (and (and (and (and (and (and (and (and (<= arg1P arg2) (> x16 1)) (<= arg2P arg2)) (> arg1 0)) (> arg2 0)) (> arg1P 0)) (> arg2P 0)) (<= (+ arg3 2) arg2)) (<= (+ arg5 2) arg2)) (<= (+ arg4 2) arg2))))
    (cfg_trans2 pc f1_0_main_Load pc1 f972_0_createTree_GE (and (and (and (and (and (and (and (> arg6P (- 1)) (> arg2 1)) (> arg3P (- 1))) (> arg1 0)) (> arg1P 1)) (= 0 arg2P)) (= arg2 arg4P)) (= 2 arg5P)))
    (cfg_trans2 pc f972_0_createTree_GE pc1 f972_0_createTree_GE (exists ((x37 Int)) (and (and (and (and (and (and (and (and (and (and (and (and (> arg5 (- 1)) (> arg3 arg2)) (> arg3 0)) (> arg4 1)) (> x37 (- 1))) (< arg5 arg4)) (> arg1 0)) (> arg1P 3)) (<= (+ arg6 2) arg1)) (= (+ arg2 1) arg2P)) (= arg3 arg3P)) (= arg4 arg4P)) (= (+ arg5 1) arg5P))))
    (cfg_trans2 pc f972_0_createTree_GE pc1 f972_0_createTree_GE (exists ((x46 Int)) (and (and (and (and (and (and (and (and (and (and (and (and (> arg5 (- 1)) (> arg3 arg2)) (> arg3 0)) (> arg4 1)) (> x46 (- 1))) (< arg5 arg4)) (> arg1 0)) (> arg1P 3)) (<= (+ arg6 2) arg1)) (= (+ arg2 1) arg2P)) (= arg3 arg3P)) (= arg4 arg4P)) (= (+ arg5 1) arg5P))))
    (cfg_trans2 pc f972_0_createTree_GE pc1 f972_0_createTree_GE (exists ((x55 Int)) (and (and (and (and (and (and (and (and (and (and (and (and (> arg5 (- 1)) (> arg3 arg2)) (> arg3 0)) (> arg4 1)) (> x55 (- 1))) (< arg5 arg4)) (> arg1 0)) (> arg1P 2)) (<= (+ arg6 2) arg1)) (= (+ arg2 1) arg2P)) (= arg3 arg3P)) (= arg4 arg4P)) (= (+ arg5 1) arg5P))))
    (cfg_trans2 pc f972_0_createTree_GE pc1 f972_0_createTree_GE (exists ((x64 Int)) (and (and (and (and (and (and (and (and (and (and (and (and (> arg5 (- 1)) (> arg3 arg2)) (> arg3 0)) (> arg4 1)) (> x64 (- 1))) (< arg5 arg4)) (> arg1 0)) (> arg1P 2)) (<= (+ arg6 2) arg1)) (= (+ arg2 1) arg2P)) (= arg3 arg3P)) (= arg4 arg4P)) (= (+ arg5 1) arg5P))))
    (cfg_trans2 pc f1332_0_rotateEachNode_FieldAccess pc1 f1332_0_rotateEachNode_FieldAccess (and (and (and (and (and (and (and (<= (+ arg1P 3) arg1) (<= (+ arg1P 3) arg2)) (<= (+ arg2P 3) arg1)) (<= (+ arg2P 3) arg2)) (> arg1 2)) (> arg2 2)) (> arg1P (- 1))) (> arg2P (- 1))))
    (cfg_trans2 pc f1332_0_rotateEachNode_FieldAccess pc1 f1332_0_rotateEachNode_FieldAccess (and (and (and (and (and (and (and (<= (+ arg1P 2) arg1) (<= (+ arg1P 2) arg2)) (<= (+ arg2P 2) arg1)) (<= (+ arg2P 2) arg2)) (> arg1 2)) (> arg2 2)) (> arg1P (- 1))) (> arg2P (- 1))))
    (cfg_trans2 pc f972_0_createTree_GE pc1 f1142_0_insert_GT (and (and (and (and (and (and (and (and (and (and (and (> arg5 (- 1)) (> arg3 arg2)) (> arg3 0)) (> arg4 1)) (> arg2P (- 1))) (< arg5 arg4)) (<= arg1P arg1)) (> arg1 0)) (> arg1P 0)) (<= (+ arg6 2) arg1)) (= arg4 arg3P)) (= arg6 arg4P)))
    (cfg_trans2 pc f1142_0_insert_GT pc1 f1142_0_insert_GT (and (and (and (and (and (and (and (and (> arg3 1) (< arg4 arg2)) (<= (+ arg1P 2) arg1)) (> arg1 2)) (> arg1P 0)) (<= (+ arg4 2) arg1)) (<= (+ arg4P 4) arg1)) (= arg2 arg2P)) (= arg3 arg3P)))
    (cfg_trans2 pc f1142_0_insert_GT pc1 f1142_0_insert_GT (and (and (and (and (and (and (and (and (> arg3 1) (>= arg4 arg2)) (<= (+ arg1P 2) arg1)) (> arg1 2)) (> arg1P 0)) (<= (+ arg4 2) arg1)) (<= (+ arg4P 4) arg1)) (= arg2 arg2P)) (= arg3 arg3P)))
    (cfg_trans2 pc __init pc1 f1_0_main_Load true)
  )
)
