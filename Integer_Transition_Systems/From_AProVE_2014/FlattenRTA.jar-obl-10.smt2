(declare-sort Loc 0)
(declare-const f1_0_main_Load Loc)
(declare-const f962_0_main_LE Loc)
(declare-const f1714_0_createTree_Return Loc)
(declare-const f1548_0_flatten_NULL Loc)
(declare-const f2482_0_createTree_LE Loc)
(declare-const f1223_0_random_ArrayAccess Loc)
(declare-const __init Loc)
(assert (distinct f1_0_main_Load f962_0_main_LE f1714_0_createTree_Return f1548_0_flatten_NULL f2482_0_createTree_LE f1223_0_random_ArrayAccess __init ))

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
    (cfg_trans2 pc f1_0_main_Load pc1 f962_0_main_LE (and (and (and (and (and (and (and (> arg2 (- 1)) (> arg3P (- 1))) (<= arg1P arg1)) (<= (+ arg2P 1) arg1)) (> arg1 0)) (> arg1P 0)) (> arg2P (- 1))) (= 1 arg4P)))
    (cfg_trans2 pc f962_0_main_LE pc1 f962_0_main_LE (exists ((x5 Int)) (and (and (and (and (and (and (and (and (and (> arg3 0) (> x5 0)) (>= arg1 arg1P)) (>= arg2 (- arg1P 1))) (>= arg2 (- arg2P 2))) (> arg1 0)) (> arg2 (- 1))) (> arg1P 0)) (> arg2P 1)) (= (- arg3 1) arg3P))))
    (cfg_trans2 pc f962_0_main_LE pc1 f962_0_main_LE (exists ((x13 Int)) (and (and (and (and (and (and (and (and (> arg3 0) (> x13 0)) (<= arg1P arg1)) (<= (- arg1P 1) arg2)) (> arg1 0)) (> arg2 (- 1))) (> arg1P 0)) (> arg2P 2)) (= (- arg3 1) arg3P))))
    (cfg_trans2 pc f1714_0_createTree_Return pc1 f962_0_main_LE (and (and (and (and (and (and (and (and (<= arg1P arg1) (<= (+ arg1P 1) arg4)) (> arg1 0)) (> arg4 1)) (> arg1P 0)) (> arg2P 3)) (<= (+ arg6 2) arg4)) (= (- arg3 1) arg3P)) (= arg5 arg4P)))
    (cfg_trans2 pc f962_0_main_LE pc1 f1548_0_flatten_NULL (exists ((x30 Int)) (and (and (and (and (and (and (and (<= arg1P arg2) (> x30 0)) (<= arg2P arg2)) (> arg1 0)) (> arg2 (- 1))) (> arg1P (- 1))) (> arg2P (- 1))) (= 0 arg3))))
    (cfg_trans2 pc f1548_0_flatten_NULL pc1 f1548_0_flatten_NULL (and (and (and (and (and (and (and (<= (+ arg1P 2) arg1) (<= (+ arg1P 2) arg2)) (<= (+ arg2P 2) arg1)) (<= (+ arg2P 2) arg2)) (> arg1 1)) (> arg2 1)) (> arg1P (- 1))) (> arg2P (- 1))))
    (cfg_trans2 pc f1548_0_flatten_NULL pc1 f1548_0_flatten_NULL (and (and (and (and (and (and (and (<= (- arg1P 2) arg1) (<= (- arg1P 2) arg2)) (<= (- arg2P 2) arg1)) (<= (- arg2P 2) arg2)) (> arg1 2)) (> arg2 2)) (> arg1P 2)) (> arg2P 2)))
    (cfg_trans2 pc f962_0_main_LE pc1 f2482_0_createTree_LE (exists ((x46 Int)) (and (and (and (and (and (and (and (and (and (and (and (> arg3P 0) (> x46 0)) (> arg3 0)) (> arg4 (- 1))) (<= (- arg1P 1) arg1)) (<= (- arg1P 2) arg2)) (<= (- arg2P 1) arg1)) (<= (- arg2P 2) arg2)) (> arg1 0)) (> arg2 (- 1))) (> arg1P 1)) (> arg2P 1))))
    (cfg_trans2 pc f2482_0_createTree_LE pc1 f2482_0_createTree_LE (and (and (and (and (and (and (and (and (and (> arg4 (- 1)) (> arg3 0)) (<= arg1P arg1)) (<= (+ arg2P 2) arg2)) (> arg1 0)) (> arg2 2)) (> arg1P 0)) (> arg2P 0)) (= (- arg3 1) arg3P)) (= (+ arg4 1) arg4P)))
    (cfg_trans2 pc f2482_0_createTree_LE pc1 f2482_0_createTree_LE (exists ((x67 Int)) (and (and (and (and (and (and (and (and (and (and (> arg3 0) (> x67 0)) (> arg4 (- 1))) (<= arg1P arg1)) (<= (+ arg2P 2) arg2)) (> arg1 0)) (> arg2 2)) (> arg1P 0)) (> arg2P 0)) (= (- arg3 1) arg3P)) (= (+ arg4 1) arg4P))))
    (cfg_trans2 pc f2482_0_createTree_LE pc1 f2482_0_createTree_LE (exists ((x75 Int)) (and (and (and (and (and (and (and (> arg4 (- 1)) (> x75 0)) (> arg3 0)) (> arg1 0)) (> arg2 1)) (> arg1P 0)) (> arg2P 0)) (= (- arg3 1) arg3P))))
    (cfg_trans2 pc f2482_0_createTree_LE pc1 f2482_0_createTree_LE (and (and (and (and (and (and (> arg3 0) (> arg4 (- 1))) (> arg1 0)) (> arg2 1)) (> arg1P 0)) (> arg2P 0)) (= (- arg3 1) arg3P)))
    (cfg_trans2 pc f2482_0_createTree_LE pc1 f2482_0_createTree_LE (and (and (and (and (and (and (and (and (and (and (> arg3 0) (> arg4 (- 1))) (<= (- arg1P 2) arg1)) (<= (- arg1P 2) arg2)) (<= (- arg2P 2) arg1)) (<= (- arg2P 2) arg2)) (> arg1 1)) (> arg2 1)) (> arg1P 3)) (> arg2P 3)) (= (- arg3 1) arg3P)))
    (cfg_trans2 pc f2482_0_createTree_LE pc1 f2482_0_createTree_LE (exists ((x97 Int)) (and (and (and (and (and (and (and (and (and (and (and (> arg4 (- 1)) (> x97 0)) (> arg3 0)) (<= (- arg1P 2) arg1)) (<= (- arg1P 2) arg2)) (<= (- arg2P 2) arg1)) (<= (- arg2P 2) arg2)) (> arg1 1)) (> arg2 1)) (> arg1P 3)) (> arg2P 3)) (= (- arg3 1) arg3P))))
    (cfg_trans2 pc f962_0_main_LE pc1 f1223_0_random_ArrayAccess (exists ((x104 Int) (x98 Int)) (and (and (and (and (and (and (and (and (and (> x104 0) (> x98 0)) (> arg3 0)) (> arg4 (- 1))) (<= arg1P arg1)) (<= (- arg1P 1) arg2)) (> arg1 0)) (> arg2 (- 1))) (> arg1P 0)) (= (+ arg4 1) arg2P))))
    (cfg_trans2 pc f2482_0_createTree_LE pc1 f1223_0_random_ArrayAccess (and (and (and (and (and (and (and (> arg3 0) (> arg4 (- 1))) (<= arg1P arg1)) (<= (+ arg1P 1) arg2)) (> arg1 0)) (> arg2 1)) (> arg1P 0)) (= (+ arg4 1) arg2P)))
    (cfg_trans2 pc f2482_0_createTree_LE pc1 f1223_0_random_ArrayAccess (exists ((x117 Int)) (and (and (and (and (and (and (and (and (> arg4 (- 1)) (> x117 0)) (> arg3 0)) (<= arg1P arg1)) (<= (+ arg1P 1) arg2)) (> arg1 0)) (> arg2 1)) (> arg1P 0)) (= (+ arg4 1) arg2P))))
    (cfg_trans2 pc __init pc1 f1_0_main_Load true)
  )
)
