(declare-sort Loc 0)
(declare-const f1_0_main_Load Loc)
(declare-const f1612_0_main_NULL Loc)
(declare-const f408_0_createTree_Return Loc)
(declare-const f1301_0_createTree_LE Loc)
(declare-const __init Loc)
(assert (distinct f1_0_main_Load f1612_0_main_NULL f408_0_createTree_Return f1301_0_createTree_LE __init ))

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

(define-fun init_main ( (pc Loc) (arg1 Int) (arg2 Int) (arg3 Int) (arg4 Int) (arg5 Int) ) Bool
  (cfg_init pc __init true))

(define-fun next_main (
                 (pc Loc) (arg1 Int) (arg2 Int) (arg3 Int) (arg4 Int) (arg5 Int)
                 (pc1 Loc) (arg1P Int) (arg2P Int) (arg3P Int) (arg4P Int) (arg5P Int)
             ) Bool
  (or
    (cfg_trans2 pc f1_0_main_Load pc1 f1612_0_main_NULL (and (and (> arg1 0) (> arg1P 0)) (> arg2P (- 1))))
    (cfg_trans2 pc f408_0_createTree_Return pc1 f1612_0_main_NULL (and (and (and (and (and (<= arg1P arg1) (<= (+ arg2P 2) arg1)) (> arg1 1)) (> arg1P 1)) (> arg2P (- 1))) (<= (+ arg2 2) arg1)))
    (cfg_trans2 pc f1612_0_main_NULL pc1 f1612_0_main_NULL (and (and (and (and (and (and (>= arg1 (- arg1P 2)) (>= arg1 (+ arg2P 3))) (>= arg2 (+ arg2P 1))) (> arg1 2)) (> arg2 0)) (> arg1P 2)) (> arg2P (- 1))))
    (cfg_trans2 pc f1_0_main_Load pc1 f1301_0_createTree_LE (and (and (and (and (and (and (and (and (> arg2 0) (> arg3P 0)) (<= (- arg1P 1) arg1)) (<= (- arg2P 1) arg1)) (> arg1 0)) (> arg1P 1)) (> arg2P 1)) (= arg2 arg4P)) (= 1 arg5P)))
    (cfg_trans2 pc f1301_0_createTree_LE pc1 f1301_0_createTree_LE (and (and (and (and (and (and (and (and (and (and (and (> arg3 0) (> arg5 (- 1))) (< arg5 arg4)) (<= arg1P arg1)) (<= (+ arg2P 2) arg2)) (> arg1 0)) (> arg2 2)) (> arg1P 0)) (> arg2P 0)) (= (- arg3 1) arg3P)) (= arg4 arg4P)) (= (+ arg5 1) arg5P)))
    (cfg_trans2 pc f1301_0_createTree_LE pc1 f1301_0_createTree_LE (exists ((x31 Int)) (and (and (and (and (and (and (and (and (and (and (and (and (> arg5 (- 1)) (> x31 0)) (> arg3 0)) (< arg5 arg4)) (<= arg1P arg1)) (<= (+ arg2P 2) arg2)) (> arg1 0)) (> arg2 2)) (> arg1P 0)) (> arg2P 0)) (= (- arg3 1) arg3P)) (= arg4 arg4P)) (= (+ arg5 1) arg5P))))
    (cfg_trans2 pc f1301_0_createTree_LE pc1 f1301_0_createTree_LE (exists ((x39 Int)) (and (and (and (and (and (and (and (and (and (and (> arg5 (- 1)) (> x39 0)) (> arg3 0)) (< arg5 arg4)) (> arg1 0)) (> arg2 1)) (> arg1P 0)) (> arg2P 0)) (= (- arg3 1) arg3P)) (= arg4 arg4P)) (= (+ arg5 1) arg5P))))
    (cfg_trans2 pc f1301_0_createTree_LE pc1 f1301_0_createTree_LE (and (and (and (and (and (and (and (and (and (> arg3 0) (> arg5 (- 1))) (< arg5 arg4)) (> arg1 0)) (> arg2 1)) (> arg1P 0)) (> arg2P 0)) (= (- arg3 1) arg3P)) (= arg4 arg4P)) (= (+ arg5 1) arg5P)))
    (cfg_trans2 pc f1301_0_createTree_LE pc1 f1301_0_createTree_LE (and (and (and (and (and (and (and (and (and (and (and (and (and (> arg3 0) (> arg5 (- 1))) (< arg5 arg4)) (<= (- arg1P 2) arg1)) (<= (- arg1P 2) arg2)) (<= (- arg2P 2) arg1)) (<= (- arg2P 2) arg2)) (> arg1 1)) (> arg2 1)) (> arg1P 3)) (> arg2P 3)) (= (- arg3 1) arg3P)) (= arg4 arg4P)) (= (+ arg5 1) arg5P)))
    (cfg_trans2 pc f1301_0_createTree_LE pc1 f1301_0_createTree_LE (exists ((x61 Int)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (> arg5 (- 1)) (> x61 0)) (> arg3 0)) (< arg5 arg4)) (<= (- arg1P 2) arg1)) (<= (- arg1P 2) arg2)) (<= (- arg2P 2) arg1)) (<= (- arg2P 2) arg2)) (> arg1 1)) (> arg2 1)) (> arg1P 3)) (> arg2P 3)) (= (- arg3 1) arg3P)) (= arg4 arg4P)) (= (+ arg5 1) arg5P))))
    (cfg_trans2 pc __init pc1 f1_0_main_Load true)
  )
)
