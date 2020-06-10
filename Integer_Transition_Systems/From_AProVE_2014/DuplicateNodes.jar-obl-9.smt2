(declare-sort Loc 0)
(declare-const f1_0_main_Load Loc)
(declare-const f1843_0_main_InvokeMethod Loc)
(declare-const f323_0_createTree_Return Loc)
(declare-const f521_0_createNode_Return Loc)
(declare-const f931_0_random_ArrayAccess Loc)
(declare-const f588_0_createNode_Return Loc)
(declare-const f977_0_random_ArrayAccess Loc)
(declare-const f2251_0_createTree_LE Loc)
(declare-const f1257_0_random_ArrayAccess Loc)
(declare-const f2233_0_randomlyDuplicate_NULL Loc)
(declare-const __init Loc)
(assert (distinct f1_0_main_Load f1843_0_main_InvokeMethod f323_0_createTree_Return f521_0_createNode_Return f931_0_random_ArrayAccess f588_0_createNode_Return f977_0_random_ArrayAccess f2251_0_createTree_LE f1257_0_random_ArrayAccess f2233_0_randomlyDuplicate_NULL __init ))

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

(define-fun init_main ( (pc Loc) (arg1 Int) (arg2 Int) (arg3 Int) (arg4 Int) ) Bool
  (cfg_init pc __init true))

(define-fun next_main (
                 (pc Loc) (arg1 Int) (arg2 Int) (arg3 Int) (arg4 Int)
                 (pc1 Loc) (arg1P Int) (arg2P Int) (arg3P Int) (arg4P Int)
             ) Bool
  (or
    (cfg_trans2 pc f1_0_main_Load pc1 f1843_0_main_InvokeMethod (and (and (and (<= arg1P arg1) (> arg1 0)) (> arg1P 0)) (> arg2P (- 1))))
    (cfg_trans2 pc f323_0_createTree_Return pc1 f1843_0_main_InvokeMethod (and (and (and (and (and (and (and (<= arg1P arg1) (<= (- arg1P 1) arg2)) (<= arg2P arg2)) (> arg1 0)) (> arg2 (- 1))) (> arg1P 0)) (> arg2P (- 1))) (= 2 arg3P)))
    (cfg_trans2 pc f521_0_createNode_Return pc1 f931_0_random_ArrayAccess (> arg1P 0))
    (cfg_trans2 pc f1_0_main_Load pc1 f931_0_random_ArrayAccess (and (and (<= arg1P arg1) (> arg1 0)) (> arg1P 0)))
    (cfg_trans2 pc f588_0_createNode_Return pc1 f977_0_random_ArrayAccess (> arg1P 0))
    (cfg_trans2 pc f1_0_main_Load pc1 f977_0_random_ArrayAccess (and (and (<= arg1P arg1) (> arg1 0)) (> arg1P 0)))
    (cfg_trans2 pc f977_0_random_ArrayAccess pc1 f2251_0_createTree_LE (exists ((x25 Int)) (and (and (and (and (and (> x25 0) (> arg2P (- 1))) (<= (- arg1P 3) arg1)) (> arg1 0)) (> arg1P 3)) (= (+ x25 1) arg4P))))
    (cfg_trans2 pc f931_0_random_ArrayAccess pc1 f2251_0_createTree_LE (exists ((x30 Int)) (and (and (and (and (and (> x30 0) (> arg2P (- 1))) (<= (- arg1P 1) arg1)) (> arg1 0)) (> arg1P 1)) (= (+ x30 1) arg4P))))
    (cfg_trans2 pc f2251_0_createTree_LE pc1 f2251_0_createTree_LE (and (and (and (and (and (and (<= (+ arg1P 2) arg1) (> arg2 0)) (> arg1 1)) (> arg1P (- 1))) (= (- arg2 1) arg2P)) (= arg3 arg3P)) (= arg4 arg4P)))
    (cfg_trans2 pc f2251_0_createTree_LE pc1 f2251_0_createTree_LE (exists ((x45 Int)) (and (and (and (and (and (and (and (> arg2 0) (> arg4 0)) (> x45 0)) (<= (- arg1P 2) arg1)) (> arg1 2)) (> arg1P 3)) (= (- arg2 1) arg2P)) (= arg3 arg3P))))
    (cfg_trans2 pc f2251_0_createTree_LE pc1 f2251_0_createTree_LE (exists ((x52 Int)) (and (and (and (and (and (and (and (> arg2 0) (> arg4 0)) (> x52 0)) (<= (- arg1P 2) arg1)) (> arg1 2)) (> arg1P 3)) (= (- arg2 1) arg2P)) (= arg3 arg3P))))
    (cfg_trans2 pc f2251_0_createTree_LE pc1 f2251_0_createTree_LE (exists ((x59 Int)) (and (and (and (and (and (and (and (> arg2 0) (> arg4 0)) (> x59 0)) (<= (- arg1P 3) arg1)) (> arg1 2)) (> arg1P 5)) (= (- arg2 1) arg2P)) (= arg3 arg3P))))
    (cfg_trans2 pc f2251_0_createTree_LE pc1 f2251_0_createTree_LE (exists ((x66 Int)) (and (and (and (and (and (and (and (> arg2 0) (> arg4 0)) (> x66 0)) (<= (- arg1P 3) arg1)) (> arg1 2)) (> arg1P 5)) (= (- arg2 1) arg2P)) (= arg3 arg3P))))
    (cfg_trans2 pc f1_0_main_Load pc1 f1257_0_random_ArrayAccess (and (and (and (and (and (and (<= arg1P arg1) (> arg2 (- 1))) (<= arg2P arg1)) (> arg1 0)) (> arg1P 0)) (> arg2P 0)) (= 0 arg3P)))
    (cfg_trans2 pc f2251_0_createTree_LE pc1 f1257_0_random_ArrayAccess (and (and (and (and (and (and (> arg2 0) (> arg4 0)) (> arg3 (- 1))) (<= (+ arg2P 2) arg1)) (> arg1 2)) (> arg2P 0)) (= arg4 arg3P)))
    (cfg_trans2 pc f2251_0_createTree_LE pc1 f1257_0_random_ArrayAccess (and (and (and (and (and (and (> arg2 0) (> arg4 0)) (> arg3P 0)) (> arg3 (- 1))) (<= (+ arg2P 2) arg1)) (> arg1 2)) (> arg2P 0)))
    (cfg_trans2 pc f1843_0_main_InvokeMethod pc1 f2233_0_randomlyDuplicate_NULL (and (and (and (and (<= arg1P arg2) (> arg1 0)) (> arg2 (- 1))) (> arg1P (- 1))) (= arg3 arg3P)))
    (cfg_trans2 pc f2233_0_randomlyDuplicate_NULL pc1 f2233_0_randomlyDuplicate_NULL (exists ((x93 Int)) (and (and (and (and (and (and (and (and (> arg2 (- 1)) (> arg3 (- 1))) (< x93 43)) (> x93 (- 1))) (<= (+ arg1P 1) arg1)) (> arg1 0)) (> arg1P (- 1))) (= arg2 arg2P)) (= (+ arg3 1) arg3P))))
    (cfg_trans2 pc f2233_0_randomlyDuplicate_NULL pc1 f2233_0_randomlyDuplicate_NULL (exists ((x98 Int)) (and (and (and (and (and (and (and (> arg2 (- 1)) (> x98 42)) (> arg3 (- 1))) (<= (+ arg1P 1) arg1)) (> arg1 0)) (> arg1P (- 1))) (= arg2 arg2P)) (= (+ arg3 1) arg3P))))
    (cfg_trans2 pc __init pc1 f1_0_main_Load true)
  )
)
