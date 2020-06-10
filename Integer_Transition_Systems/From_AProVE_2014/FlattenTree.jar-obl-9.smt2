(declare-sort Loc 0)
(declare-const f1_0_main_Load Loc)
(declare-const f1761_0_main_InvokeMethod Loc)
(declare-const f459_0_createTree_Return Loc)
(declare-const f1733_0_createTree_LE Loc)
(declare-const f1830_0_flatten_NULL Loc)
(declare-const __init Loc)
(assert (distinct f1_0_main_Load f1761_0_main_InvokeMethod f459_0_createTree_Return f1733_0_createTree_LE f1830_0_flatten_NULL __init ))

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
    (cfg_trans2 pc f1_0_main_Load pc1 f1761_0_main_InvokeMethod (and (and (and (<= arg1P arg1) (> arg1 0)) (> arg1P 0)) (> arg2P 0)))
    (cfg_trans2 pc f459_0_createTree_Return pc1 f1761_0_main_InvokeMethod (and (and (and (and (and (and (and (and (<= arg1P arg1) (<= (+ arg1P 1) arg2)) (>= arg2 arg2P)) (> arg1 0)) (> arg2 1)) (> arg1P 0)) (> arg2P 1)) (<= (+ arg3 2) arg2)) (= arg3 arg3P)))
    (cfg_trans2 pc f1_0_main_Load pc1 f1733_0_createTree_LE (and (and (and (and (and (and (and (> arg3P 0) (> arg2 (- 1))) (<= (- arg1P 1) arg1)) (<= (- arg2P 1) arg1)) (> arg1 0)) (> arg1P 1)) (> arg2P 1)) (= 1 arg4P)))
    (cfg_trans2 pc f1733_0_createTree_LE pc1 f1733_0_createTree_LE (and (and (and (and (and (and (and (and (and (> arg4 (- 1)) (> arg3 0)) (<= arg1P arg1)) (<= (+ arg2P 2) arg2)) (> arg1 0)) (> arg2 2)) (> arg1P 0)) (> arg2P 0)) (= (- arg3 1) arg3P)) (= (+ arg4 1) arg4P)))
    (cfg_trans2 pc f1733_0_createTree_LE pc1 f1733_0_createTree_LE (exists ((x28 Int)) (and (and (and (and (and (and (and (and (and (and (> arg3 0) (> x28 0)) (> arg4 (- 1))) (<= arg1P arg1)) (<= (+ arg2P 2) arg2)) (> arg1 0)) (> arg2 2)) (> arg1P 0)) (> arg2P 0)) (= (- arg3 1) arg3P)) (= (+ arg4 1) arg4P))))
    (cfg_trans2 pc f1733_0_createTree_LE pc1 f1733_0_createTree_LE (exists ((x35 Int)) (and (and (and (and (and (and (and (and (> arg3 0) (> x35 0)) (> arg4 (- 1))) (> arg1 0)) (> arg2 1)) (> arg1P 0)) (> arg2P 0)) (= (- arg3 1) arg3P)) (= (+ arg4 1) arg4P))))
    (cfg_trans2 pc f1733_0_createTree_LE pc1 f1733_0_createTree_LE (and (and (and (and (and (and (and (> arg4 (- 1)) (> arg3 0)) (> arg1 0)) (> arg2 1)) (> arg1P 0)) (> arg2P 0)) (= (- arg3 1) arg3P)) (= (+ arg4 1) arg4P)))
    (cfg_trans2 pc f1733_0_createTree_LE pc1 f1733_0_createTree_LE (and (and (and (and (and (and (and (and (and (and (and (> arg4 (- 1)) (> arg3 0)) (<= (- arg1P 2) arg1)) (<= (- arg1P 2) arg2)) (<= (- arg2P 2) arg1)) (<= (- arg2P 2) arg2)) (> arg1 1)) (> arg2 1)) (> arg1P 3)) (> arg2P 3)) (= (- arg3 1) arg3P)) (= (+ arg4 1) arg4P)))
    (cfg_trans2 pc f1733_0_createTree_LE pc1 f1733_0_createTree_LE (exists ((x54 Int)) (and (and (and (and (and (and (and (and (and (and (and (and (> arg3 0) (> x54 0)) (> arg4 (- 1))) (<= (- arg1P 2) arg1)) (<= (- arg1P 2) arg2)) (<= (- arg2P 2) arg1)) (<= (- arg2P 2) arg2)) (> arg1 1)) (> arg2 1)) (> arg1P 3)) (> arg2P 3)) (= (- arg3 1) arg3P)) (= (+ arg4 1) arg4P))))
    (cfg_trans2 pc f1_0_main_Load pc1 f1830_0_flatten_NULL (and (and (and (and (and (<= (+ arg1P 1) arg1) (> arg2 0)) (<= (+ arg2P 1) arg1)) (> arg1 0)) (> arg1P (- 1))) (> arg2P (- 1))))
    (cfg_trans2 pc f1761_0_main_InvokeMethod pc1 f1830_0_flatten_NULL (exists ((x59 Int)) (and (and (and (and (and (and (and (<= arg1P arg2) (> x59 0)) (<= arg2P arg2)) (> arg1 0)) (> arg2 0)) (> arg1P 0)) (> arg2P 0)) (<= (+ arg3 2) arg2))))
    (cfg_trans2 pc f1830_0_flatten_NULL pc1 f1830_0_flatten_NULL (and (and (and (and (and (and (and (<= (+ arg1P 2) arg1) (<= (+ arg1P 2) arg2)) (<= (+ arg2P 2) arg1)) (<= (+ arg2P 2) arg2)) (> arg1 1)) (> arg2 1)) (> arg1P (- 1))) (> arg2P (- 1))))
    (cfg_trans2 pc f1830_0_flatten_NULL pc1 f1830_0_flatten_NULL (and (and (and (and (and (and (and (<= (- arg1P 2) arg1) (<= (- arg1P 2) arg2)) (<= (- arg2P 2) arg1)) (<= (- arg2P 2) arg2)) (> arg1 2)) (> arg2 2)) (> arg1P 2)) (> arg2P 2)))
    (cfg_trans2 pc __init pc1 f1_0_main_Load true)
  )
)
