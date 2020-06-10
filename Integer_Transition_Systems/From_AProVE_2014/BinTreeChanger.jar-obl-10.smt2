(declare-sort Loc 0)
(declare-const f1_0_main_Load Loc)
(declare-const f997_0_main_InvokeMethod Loc)
(declare-const f394_0_createTree_Return Loc)
(declare-const f933_0_createTree_GE Loc)
(declare-const f1288_0_applyTreeChanger_NULL Loc)
(declare-const f1294_0_applyTreeChanger_NULL Loc)
(declare-const f1076_0_insert_GT Loc)
(declare-const __init Loc)
(assert (distinct f1_0_main_Load f997_0_main_InvokeMethod f394_0_createTree_Return f933_0_createTree_GE f1288_0_applyTreeChanger_NULL f1294_0_applyTreeChanger_NULL f1076_0_insert_GT __init ))

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
    (cfg_trans2 pc f1_0_main_Load pc1 f997_0_main_InvokeMethod (exists ((x7 Int)) (and (and (and (and (and (and (and (> x7 (- 1)) (> arg2 0)) (<= arg1P arg1)) (> arg1 0)) (> arg1P 0)) (> arg2P 0)) (> arg3P (- 1))) (> arg4P (- 1)))))
    (cfg_trans2 pc f394_0_createTree_Return pc1 f997_0_main_InvokeMethod (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (>= arg1 arg1P) (<= arg1P arg2)) (<= (- arg1P 1) arg3)) (<= (- arg1P 1) arg4)) (<= arg2P arg2)) (<= (+ arg3P 1) arg2)) (<= arg3P arg3)) (<= (+ arg4P 1) arg2)) (<= arg4P arg4)) (> arg1 0)) (> arg2 0)) (> arg3 (- 1))) (> arg4 (- 1))) (> arg1P 0)) (> arg2P 0)) (> arg3P (- 1))) (> arg4P (- 1))) (<= (+ arg5 2) arg2)) (= arg5 arg5P)))
    (cfg_trans2 pc f1_0_main_Load pc1 f933_0_createTree_GE (and (and (and (and (and (and (and (> arg6P (- 1)) (> arg2 1)) (> arg3P (- 1))) (> arg1 0)) (> arg1P 1)) (= 0 arg2P)) (= arg2 arg4P)) (= 2 arg5P)))
    (cfg_trans2 pc f933_0_createTree_GE pc1 f933_0_createTree_GE (exists ((x31 Int)) (and (and (and (and (and (and (and (and (and (and (and (and (> arg5 (- 1)) (> arg3 arg2)) (> arg3 0)) (> arg4 1)) (> x31 (- 1))) (< arg5 arg4)) (> arg1 0)) (> arg1P 3)) (<= (+ arg6 2) arg1)) (= (+ arg2 1) arg2P)) (= arg3 arg3P)) (= arg4 arg4P)) (= (+ arg5 1) arg5P))))
    (cfg_trans2 pc f933_0_createTree_GE pc1 f933_0_createTree_GE (exists ((x40 Int)) (and (and (and (and (and (and (and (and (and (and (and (and (> arg5 (- 1)) (> arg3 arg2)) (> arg3 0)) (> arg4 1)) (> x40 (- 1))) (< arg5 arg4)) (> arg1 0)) (> arg1P 3)) (<= (+ arg6 2) arg1)) (= (+ arg2 1) arg2P)) (= arg3 arg3P)) (= arg4 arg4P)) (= (+ arg5 1) arg5P))))
    (cfg_trans2 pc f933_0_createTree_GE pc1 f933_0_createTree_GE (exists ((x49 Int)) (and (and (and (and (and (and (and (and (and (and (and (and (> arg5 (- 1)) (> arg3 arg2)) (> arg3 0)) (> arg4 1)) (> x49 (- 1))) (< arg5 arg4)) (> arg1 0)) (> arg1P 2)) (<= (+ arg6 2) arg1)) (= (+ arg2 1) arg2P)) (= arg3 arg3P)) (= arg4 arg4P)) (= (+ arg5 1) arg5P))))
    (cfg_trans2 pc f933_0_createTree_GE pc1 f933_0_createTree_GE (exists ((x58 Int)) (and (and (and (and (and (and (and (and (and (and (and (and (> arg5 (- 1)) (> arg3 arg2)) (> arg3 0)) (> arg4 1)) (> x58 (- 1))) (< arg5 arg4)) (> arg1 0)) (> arg1P 2)) (<= (+ arg6 2) arg1)) (= (+ arg2 1) arg2P)) (= arg3 arg3P)) (= arg4 arg4P)) (= (+ arg5 1) arg5P))))
    (cfg_trans2 pc f997_0_main_InvokeMethod pc1 f1288_0_applyTreeChanger_NULL (exists ((x59 Int)) (and (and (and (and (and (and (and (and (and (and (and (<= (+ arg1P 1) arg2) (> x59 1)) (<= arg1P arg4)) (<= (+ arg2P 1) arg2)) (<= arg2P arg3)) (> arg1 0)) (> arg2 0)) (> arg3 (- 1))) (> arg4 (- 1))) (> arg1P (- 1))) (> arg2P (- 1))) (<= (+ arg5 2) arg2))))
    (cfg_trans2 pc f1288_0_applyTreeChanger_NULL pc1 f1294_0_applyTreeChanger_NULL (and (and (and (<= arg1P arg1) (> arg1 (- 1))) (> arg2 (- 1))) (> arg1P (- 1))))
    (cfg_trans2 pc f1288_0_applyTreeChanger_NULL pc1 f1288_0_applyTreeChanger_NULL (and (and (and (and (and (<= (+ arg1P 1) arg2) (<= (+ arg2P 1) arg2)) (> arg1 (- 1))) (> arg2 0)) (> arg1P (- 1))) (> arg2P (- 1))))
    (cfg_trans2 pc f1294_0_applyTreeChanger_NULL pc1 f1288_0_applyTreeChanger_NULL (and (and (and (and (<= (+ arg1P 1) arg1) (<= (+ arg2P 1) arg1)) (> arg1 0)) (> arg1P (- 1))) (> arg2P (- 1))))
    (cfg_trans2 pc f1288_0_applyTreeChanger_NULL pc1 f1294_0_applyTreeChanger_NULL (and (and (and (<= arg1P arg1) (> arg1 (- 1))) (> arg2 0)) (> arg1P (- 1))))
    (cfg_trans2 pc f933_0_createTree_GE pc1 f1076_0_insert_GT (and (and (and (and (and (and (and (and (and (and (and (> arg5 (- 1)) (> arg3 arg2)) (> arg3 0)) (> arg4 1)) (> arg2P (- 1))) (< arg5 arg4)) (<= arg1P arg1)) (> arg1 0)) (> arg1P 0)) (<= (+ arg6 2) arg1)) (= arg4 arg3P)) (= arg6 arg4P)))
    (cfg_trans2 pc f1076_0_insert_GT pc1 f1076_0_insert_GT (and (and (and (and (and (and (and (and (> arg3 1) (< arg4 arg2)) (<= (+ arg1P 2) arg1)) (> arg1 2)) (> arg1P 0)) (<= (+ arg4 2) arg1)) (<= (+ arg4P 4) arg1)) (= arg2 arg2P)) (= arg3 arg3P)))
    (cfg_trans2 pc f1076_0_insert_GT pc1 f1076_0_insert_GT (and (and (and (and (and (and (and (and (> arg3 1) (>= arg4 arg2)) (>= arg1 (+ arg1P 2))) (> arg1 2)) (> arg1P 0)) (>= arg1 (+ arg4 2))) (>= arg1 (+ arg4P 4))) (= arg2 arg2P)) (= arg3 arg3P)))
    (cfg_trans2 pc __init pc1 f1_0_main_Load true)
  )
)
