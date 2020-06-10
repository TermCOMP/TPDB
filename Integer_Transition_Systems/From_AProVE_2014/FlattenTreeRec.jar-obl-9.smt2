(declare-sort Loc 0)
(declare-const f1_0_main_Load Loc)
(declare-const f2097_0_flatten_NULL Loc)
(declare-const f1795_0_main_InvokeMethod Loc)
(declare-const f456_0_createTree_Return Loc)
(declare-const f1759_0_createTree_LE Loc)
(declare-const __init Loc)
(assert (distinct f1_0_main_Load f2097_0_flatten_NULL f1795_0_main_InvokeMethod f456_0_createTree_Return f1759_0_createTree_LE __init ))

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
    (cfg_trans2 pc f1_0_main_Load pc1 f2097_0_flatten_NULL (and (and (and (<= (+ arg1P 1) arg1) (> arg2 0)) (> arg1 0)) (> arg1P (- 1))))
    (cfg_trans2 pc f1_0_main_Load pc1 f1795_0_main_InvokeMethod (and (and (and (<= arg1P arg1) (> arg1 0)) (> arg1P 0)) (> arg2P 2)))
    (cfg_trans2 pc f456_0_createTree_Return pc1 f1795_0_main_InvokeMethod (and (and (and (and (and (and (and (and (>= arg1 arg1P) (<= (+ arg1P 2) arg2)) (<= arg2P arg2)) (> arg1 0)) (> arg2 2)) (> arg1P 0)) (> arg2P 2)) (<= (+ arg3 2) arg2)) (= arg3 arg3P)))
    (cfg_trans2 pc f1795_0_main_InvokeMethod pc1 f2097_0_flatten_NULL (exists ((x14 Int)) (and (and (and (and (and (<= arg1P arg2) (> x14 0)) (> arg1 0)) (> arg2 2)) (> arg1P 2)) (<= (+ arg3 2) arg2))))
    (cfg_trans2 pc f1_0_main_Load pc1 f1759_0_createTree_LE (and (and (and (and (and (and (and (> arg3P 0) (> arg2 (- 1))) (<= (- arg1P 2) arg1)) (<= (- arg2P 2) arg1)) (> arg1 0)) (> arg1P 2)) (> arg2P 2)) (= 1 arg4P)))
    (cfg_trans2 pc f1759_0_createTree_LE pc1 f1759_0_createTree_LE (and (and (and (and (and (and (and (and (and (> arg4 (- 1)) (> arg3 0)) (<= arg1P arg1)) (<= (+ arg2P 2) arg2)) (> arg1 2)) (> arg2 2)) (> arg1P 2)) (> arg2P 0)) (= (- arg3 1) arg3P)) (= (+ arg4 1) arg4P)))
    (cfg_trans2 pc f1759_0_createTree_LE pc1 f1759_0_createTree_LE (exists ((x36 Int)) (and (and (and (and (and (and (and (and (and (and (> arg3 0) (> x36 0)) (> arg4 (- 1))) (<= arg1P arg1)) (<= (+ arg2P 2) arg2)) (> arg1 2)) (> arg2 2)) (> arg1P 2)) (> arg2P 0)) (= (- arg3 1) arg3P)) (= (+ arg4 1) arg4P))))
    (cfg_trans2 pc f1759_0_createTree_LE pc1 f1759_0_createTree_LE (exists ((x43 Int)) (and (and (and (and (and (and (and (and (> arg3 0) (> x43 0)) (> arg4 (- 1))) (> arg1 2)) (> arg2 1)) (> arg1P 2)) (> arg2P 2)) (= (- arg3 1) arg3P)) (= (+ arg4 1) arg4P))))
    (cfg_trans2 pc f1759_0_createTree_LE pc1 f1759_0_createTree_LE (and (and (and (and (and (and (and (> arg4 (- 1)) (> arg3 0)) (> arg1 2)) (> arg2 1)) (> arg1P 2)) (> arg2P 2)) (= (- arg3 1) arg3P)) (= (+ arg4 1) arg4P)))
    (cfg_trans2 pc f1759_0_createTree_LE pc1 f1759_0_createTree_LE (and (and (and (and (and (and (and (and (and (and (and (> arg4 (- 1)) (> arg3 0)) (<= (- arg1P 2) arg1)) (<= (- arg1P 2) arg2)) (<= (- arg2P 2) arg1)) (<= (- arg2P 2) arg2)) (> arg1 2)) (> arg2 2)) (> arg1P 4)) (> arg2P 4)) (= (- arg3 1) arg3P)) (= (+ arg4 1) arg4P)))
    (cfg_trans2 pc f1759_0_createTree_LE pc1 f1759_0_createTree_LE (exists ((x62 Int)) (and (and (and (and (and (and (and (and (and (and (and (and (> arg3 0) (> x62 0)) (> arg4 (- 1))) (<= (- arg1P 2) arg1)) (<= (- arg1P 2) arg2)) (<= (- arg2P 2) arg1)) (<= (- arg2P 2) arg2)) (> arg1 2)) (> arg2 2)) (> arg1P 4)) (> arg2P 4)) (= (- arg3 1) arg3P)) (= (+ arg4 1) arg4P))))
    (cfg_trans2 pc f2097_0_flatten_NULL pc1 f2097_0_flatten_NULL (and (and (<= (+ arg1P 2) arg1) (> arg1 1)) (> arg1P (- 1))))
    (cfg_trans2 pc f2097_0_flatten_NULL pc1 f2097_0_flatten_NULL (and (and (<= (- arg1P 2) arg1) (> arg1 2)) (> arg1P 2)))
    (cfg_trans2 pc __init pc1 f1_0_main_Load true)
  )
)
