(declare-sort Loc 0)
(declare-const f1_0_main_Load Loc)
(declare-const f850_0_main_LE Loc)
(declare-const f1962_0_flatten_NONNULL Loc)
(declare-const f1367_0_createTree_Return Loc)
(declare-const f2618_0_createTree_LE Loc)
(declare-const __init Loc)
(assert (distinct f1_0_main_Load f850_0_main_LE f1962_0_flatten_NONNULL f1367_0_createTree_Return f2618_0_createTree_LE __init ))

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
    (cfg_trans2 pc f1_0_main_Load pc1 f850_0_main_LE (and (and (and (and (and (and (and (> arg2 0) (> arg3P (- 1))) (<= arg1P arg1)) (<= (+ arg2P 1) arg1)) (> arg1 0)) (> arg1P 0)) (> arg2P (- 1))) (= 1 arg4P)))
    (cfg_trans2 pc f850_0_main_LE pc1 f1962_0_flatten_NONNULL (exists ((x5 Int)) (and (and (and (and (and (<= arg1P arg2) (> x5 0)) (> arg1 0)) (> arg2 (- 1))) (> arg1P (- 1))) (= 0 arg3))))
    (cfg_trans2 pc f850_0_main_LE pc1 f850_0_main_LE (exists ((x10 Int)) (and (and (and (and (and (and (and (and (and (> arg3 0) (> x10 0)) (<= arg1P arg1)) (<= (- arg1P 1) arg2)) (<= (- arg2P 2) arg2)) (> arg1 0)) (> arg2 (- 1))) (> arg1P 0)) (> arg2P 1)) (= (- arg3 1) arg3P))))
    (cfg_trans2 pc f850_0_main_LE pc1 f850_0_main_LE (exists ((x18 Int)) (and (and (and (and (and (and (and (and (> arg3 0) (> x18 0)) (<= arg1P arg1)) (<= (- arg1P 1) arg2)) (> arg1 0)) (> arg2 (- 1))) (> arg1P 0)) (> arg2P 4)) (= (- arg3 1) arg3P))))
    (cfg_trans2 pc f1367_0_createTree_Return pc1 f850_0_main_LE (and (and (and (and (and (and (and (and (<= arg1P arg1) (<= (+ arg1P 2) arg4)) (> arg1 0)) (> arg4 2)) (> arg1P 0)) (> arg2P 4)) (<= (+ arg6 2) arg4)) (= (- arg3 1) arg3P)) (= arg5 arg4P)))
    (cfg_trans2 pc f1962_0_flatten_NONNULL pc1 f1962_0_flatten_NONNULL (and (and (<= (+ arg1P 2) arg1) (> arg1 1)) (> arg1P (- 1))))
    (cfg_trans2 pc f1962_0_flatten_NONNULL pc1 f1962_0_flatten_NONNULL (and (and (<= (- arg1P 2) arg1) (> arg1 2)) (> arg1P 2)))
    (cfg_trans2 pc f850_0_main_LE pc1 f2618_0_createTree_LE (and (and (and (and (and (and (and (and (and (and (and (and (and (> arg3P 0) (> arg4P 0)) (> arg3 0)) (< arg4 arg4P)) (> arg4 (- 1))) (<= (- arg1P 2) arg1)) (<= (- arg1P 3) arg2)) (<= (- arg2P 2) arg1)) (<= (- arg2P 3) arg2)) (> arg1 0)) (> arg2 (- 1))) (> arg1P 2)) (> arg2P 2)) (= (+ arg4 1) arg5P)))
    (cfg_trans2 pc f2618_0_createTree_LE pc1 f2618_0_createTree_LE (and (and (and (and (and (and (and (and (and (and (and (> arg3 0) (> arg5 (- 1))) (< arg5 arg4)) (<= arg1P arg1)) (<= (+ arg2P 2) arg2)) (> arg1 2)) (> arg2 2)) (> arg1P 2)) (> arg2P 0)) (= (- arg3 1) arg3P)) (= arg4 arg4P)) (= (+ arg5 1) arg5P)))
    (cfg_trans2 pc f2618_0_createTree_LE pc1 f2618_0_createTree_LE (exists ((x63 Int)) (and (and (and (and (and (and (and (and (and (and (and (and (> arg5 (- 1)) (> x63 0)) (> arg3 0)) (< arg5 arg4)) (<= arg1P arg1)) (<= (+ arg2P 2) arg2)) (> arg1 2)) (> arg2 2)) (> arg1P 2)) (> arg2P 0)) (= (- arg3 1) arg3P)) (= arg4 arg4P)) (= (+ arg5 1) arg5P))))
    (cfg_trans2 pc f2618_0_createTree_LE pc1 f2618_0_createTree_LE (exists ((x71 Int)) (and (and (and (and (and (and (and (and (and (and (> arg5 (- 1)) (> x71 0)) (> arg3 0)) (< arg5 arg4)) (> arg1 2)) (> arg2 1)) (> arg1P 2)) (> arg2P 2)) (= (- arg3 1) arg3P)) (= arg4 arg4P)) (= (+ arg5 1) arg5P))))
    (cfg_trans2 pc f2618_0_createTree_LE pc1 f2618_0_createTree_LE (and (and (and (and (and (and (and (and (and (> arg3 0) (> arg5 (- 1))) (< arg5 arg4)) (> arg1 2)) (> arg2 1)) (> arg1P 2)) (> arg2P 2)) (= (- arg3 1) arg3P)) (= arg4 arg4P)) (= (+ arg5 1) arg5P)))
    (cfg_trans2 pc f2618_0_createTree_LE pc1 f2618_0_createTree_LE (and (and (and (and (and (and (and (and (and (and (and (and (and (> arg3 0) (> arg5 (- 1))) (< arg5 arg4)) (<= (- arg1P 2) arg1)) (<= (- arg1P 2) arg2)) (<= (- arg2P 2) arg1)) (<= (- arg2P 2) arg2)) (> arg1 2)) (> arg2 2)) (> arg1P 4)) (> arg2P 4)) (= (- arg3 1) arg3P)) (= arg4 arg4P)) (= (+ arg5 1) arg5P)))
    (cfg_trans2 pc f2618_0_createTree_LE pc1 f2618_0_createTree_LE (exists ((x93 Int)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (> arg5 (- 1)) (> x93 0)) (> arg3 0)) (< arg5 arg4)) (<= (- arg1P 2) arg1)) (<= (- arg1P 2) arg2)) (<= (- arg2P 2) arg1)) (<= (- arg2P 2) arg2)) (> arg1 2)) (> arg2 2)) (> arg1P 4)) (> arg2P 4)) (= (- arg3 1) arg3P)) (= arg4 arg4P)) (= (+ arg5 1) arg5P))))
    (cfg_trans2 pc __init pc1 f1_0_main_Load true)
  )
)
