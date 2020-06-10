(declare-sort Loc 0)
(declare-const f1_0_main_Load Loc)
(declare-const f811_0_main_LE Loc)
(declare-const f1404_0_flatten_NULL Loc)
(declare-const f1282_0_createTree_Return Loc)
(declare-const f2226_0_createTree_LE Loc)
(declare-const __init Loc)
(assert (distinct f1_0_main_Load f811_0_main_LE f1404_0_flatten_NULL f1282_0_createTree_Return f2226_0_createTree_LE __init ))

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
    (cfg_trans2 pc f1_0_main_Load pc1 f811_0_main_LE (and (and (and (and (and (and (and (> arg2 (- 1)) (> arg3P (- 1))) (<= arg1P arg1)) (<= (+ arg2P 1) arg1)) (> arg1 0)) (> arg1P 0)) (> arg2P (- 1))) (= 1 arg4P)))
    (cfg_trans2 pc f811_0_main_LE pc1 f811_0_main_LE (exists ((x5 Int)) (and (and (and (and (and (and (and (and (and (> arg3 0) (> x5 0)) (>= arg1 arg1P)) (>= arg2 (- arg1P 1))) (>= arg2 (- arg2P 2))) (> arg1 0)) (> arg2 (- 1))) (> arg1P 0)) (> arg2P 1)) (= (- arg3 1) arg3P))))
    (cfg_trans2 pc f811_0_main_LE pc1 f1404_0_flatten_NULL (and (and (and (and (<= arg1P arg2) (> arg1 0)) (> arg2 (- 1))) (> arg1P (- 1))) (= 0 arg3)))
    (cfg_trans2 pc f1404_0_flatten_NULL pc1 f1404_0_flatten_NULL (and (and (<= (+ arg1P 2) arg1) (> arg1 1)) (> arg1P (- 1))))
    (cfg_trans2 pc f1404_0_flatten_NULL pc1 f1404_0_flatten_NULL (and (and (<= (- arg1P 2) arg1) (> arg1 2)) (> arg1P 2)))
    (cfg_trans2 pc f811_0_main_LE pc1 f811_0_main_LE (exists ((x22 Int)) (and (and (and (and (and (and (and (and (> arg3 0) (> x22 0)) (<= arg1P arg1)) (<= (- arg1P 1) arg2)) (> arg1 0)) (> arg2 (- 1))) (> arg1P 0)) (> arg2P 4)) (= (- arg3 1) arg3P))))
    (cfg_trans2 pc f1282_0_createTree_Return pc1 f811_0_main_LE (and (and (and (and (and (and (and (and (<= arg1P arg1) (<= (+ arg1P 2) arg4)) (> arg1 0)) (> arg4 2)) (> arg1P 0)) (> arg2P 4)) (<= (+ arg6 2) arg4)) (= (- arg3 1) arg3P)) (= arg5 arg4P)))
    (cfg_trans2 pc f811_0_main_LE pc1 f2226_0_createTree_LE (exists ((x39 Int)) (and (and (and (and (and (and (and (and (and (and (and (and (> arg3P 0) (> x39 0)) (> arg3 0)) (> arg4 (- 1))) (<= (- arg1P 2) arg1)) (<= (- arg1P 3) arg2)) (<= (- arg2P 2) arg1)) (<= (- arg2P 3) arg2)) (> arg1 0)) (> arg2 (- 1))) (> arg1P 2)) (> arg2P 2)) (= (+ arg4 1) arg4P))))
    (cfg_trans2 pc f2226_0_createTree_LE pc1 f2226_0_createTree_LE (and (and (and (and (and (and (and (and (and (> arg4 (- 1)) (> arg3 0)) (<= arg1P arg1)) (<= (+ arg2P 2) arg2)) (> arg1 2)) (> arg2 2)) (> arg1P 2)) (> arg2P 0)) (= (- arg3 1) arg3P)) (= (+ arg4 1) arg4P)))
    (cfg_trans2 pc f2226_0_createTree_LE pc1 f2226_0_createTree_LE (exists ((x59 Int)) (and (and (and (and (and (and (and (and (and (and (> arg3 0) (> x59 0)) (> arg4 (- 1))) (<= arg1P arg1)) (<= (+ arg2P 2) arg2)) (> arg1 2)) (> arg2 2)) (> arg1P 2)) (> arg2P 0)) (= (- arg3 1) arg3P)) (= (+ arg4 1) arg4P))))
    (cfg_trans2 pc f2226_0_createTree_LE pc1 f2226_0_createTree_LE (exists ((x66 Int)) (and (and (and (and (and (and (and (and (> arg3 0) (> x66 0)) (> arg4 (- 1))) (> arg1 2)) (> arg2 1)) (> arg1P 2)) (> arg2P 2)) (= (- arg3 1) arg3P)) (= (+ arg4 1) arg4P))))
    (cfg_trans2 pc f2226_0_createTree_LE pc1 f2226_0_createTree_LE (and (and (and (and (and (and (and (> arg4 (- 1)) (> arg3 0)) (> arg1 2)) (> arg2 1)) (> arg1P 2)) (> arg2P 2)) (= (- arg3 1) arg3P)) (= (+ arg4 1) arg4P)))
    (cfg_trans2 pc f2226_0_createTree_LE pc1 f2226_0_createTree_LE (and (and (and (and (and (and (and (and (and (and (and (> arg4 (- 1)) (> arg3 0)) (<= (- arg1P 2) arg1)) (<= (- arg1P 2) arg2)) (<= (- arg2P 2) arg1)) (<= (- arg2P 2) arg2)) (> arg1 2)) (> arg2 2)) (> arg1P 4)) (> arg2P 4)) (= (- arg3 1) arg3P)) (= (+ arg4 1) arg4P)))
    (cfg_trans2 pc f2226_0_createTree_LE pc1 f2226_0_createTree_LE (exists ((x85 Int)) (and (and (and (and (and (and (and (and (and (and (and (and (> arg3 0) (> x85 0)) (> arg4 (- 1))) (<= (- arg1P 2) arg1)) (<= (- arg1P 2) arg2)) (<= (- arg2P 2) arg1)) (<= (- arg2P 2) arg2)) (> arg1 2)) (> arg2 2)) (> arg1P 4)) (> arg2P 4)) (= (- arg3 1) arg3P)) (= (+ arg4 1) arg4P))))
    (cfg_trans2 pc __init pc1 f1_0_main_Load true)
  )
)
