(declare-sort Loc 0)
(declare-const f252_0_createIntList_Return Loc)
(declare-const f1489_0_max_NULL Loc)
(declare-const f1_0_main_Load Loc)
(declare-const f605_0_createIntList_LE Loc)
(declare-const f1214_0_member_NULL Loc)
(declare-const __init Loc)
(assert (distinct f252_0_createIntList_Return f1489_0_max_NULL f1_0_main_Load f605_0_createIntList_LE f1214_0_member_NULL __init ))

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
    (cfg_trans2 pc f252_0_createIntList_Return pc1 f1489_0_max_NULL (and (and (and (and (and (and (and (and (and (and (and (and (<= arg1P arg1) (<= (- arg1P 1) arg2)) (<= arg3P arg2)) (<= arg4P arg2)) (<= arg6P arg2)) (> arg1 0)) (> arg2 (- 1))) (> arg1P 0)) (> arg3P (- 1))) (> arg4P (- 1))) (> arg6P (- 1))) (= 0 arg2P)) (= 0 arg5P)))
    (cfg_trans2 pc f1_0_main_Load pc1 f1489_0_max_NULL (and (and (and (and (and (and (and (<= arg1P arg1) (> arg1 0)) (> arg1P 0)) (> arg3P (- 1))) (> arg4P (- 1))) (> arg6P (- 1))) (= 0 arg2P)) (= 0 arg5P)))
    (cfg_trans2 pc f1489_0_max_NULL pc1 f1489_0_max_NULL (exists ((x24 Int)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (<= arg1P arg1) (<= x24 arg5)) (<= (- arg1P 1) arg3)) (<= arg1P arg4)) (<= arg1P arg6)) (<= arg3P arg3)) (<= (+ arg4P 1) arg4)) (<= (+ arg4P 1) arg6)) (<= (+ arg6P 1) arg4)) (<= (+ arg6P 1) arg6)) (> arg1 0)) (> arg3 (- 1))) (> arg4 0)) (> arg6 0)) (> arg1P 0)) (> arg3P (- 1))) (> arg4P (- 1))) (> arg6P (- 1))) (= arg2 arg2P)) (= arg5 arg5P))))
    (cfg_trans2 pc f1489_0_max_NULL pc1 f1489_0_max_NULL (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (<= arg1P arg1) (> arg5P arg5)) (<= (- arg1P 1) arg3)) (<= arg1P arg4)) (<= arg1P arg6)) (<= arg3P arg3)) (<= (+ arg4P 1) arg4)) (<= (+ arg4P 1) arg6)) (<= (+ arg6P 1) arg4)) (<= (+ arg6P 1) arg6)) (> arg1 0)) (> arg3 (- 1))) (> arg4 0)) (> arg6 0)) (> arg1P 0)) (> arg3P (- 1))) (> arg4P (- 1))) (> arg6P (- 1))) (<= (+ arg5P 2) arg4)) (<= (+ arg5P 2) arg6)) (= arg2 arg2P)))
    (cfg_trans2 pc f1489_0_max_NULL pc1 f1489_0_max_NULL (exists ((x37 Int) (x48 Int)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (>= arg5 arg2) (> x37 0)) (> x48 0)) (<= arg1P arg1)) (<= (- arg1P 1) arg3)) (<= (- arg1P 1) arg4)) (<= (- arg1P 1) arg6)) (<= arg3P arg3)) (<= arg4P arg3)) (<= arg6P arg3)) (> arg1 0)) (> arg3 (- 1))) (> arg4 (- 1))) (> arg6 (- 1))) (> arg1P 0)) (> arg3P (- 1))) (> arg4P (- 1))) (> arg6P (- 1))) (= (+ arg2 1) arg2P)) (= 0 arg5P))))
    (cfg_trans2 pc f1_0_main_Load pc1 f605_0_createIntList_LE (and (and (and (> arg2 (- 1)) (> arg1P (- 1))) (> arg1 0)) (= 1 arg2P)))
    (cfg_trans2 pc f605_0_createIntList_LE pc1 f605_0_createIntList_LE (and (and (and (> arg1 0) (> arg2 0)) (= (- arg1 1) arg1P)) (= (+ arg2 1) arg2P)))
    (cfg_trans2 pc f1489_0_max_NULL pc1 f1214_0_member_NULL (exists ((x54 Int) (x63 Int)) (and (and (and (and (and (and (and (and (and (and (and (>= arg5 arg2) (> x54 0)) (> x63 0)) (<= arg2P arg3)) (<= arg3P arg3)) (> arg1 0)) (> arg3 (- 1))) (> arg4 (- 1))) (> arg6 (- 1))) (> arg2P (- 1))) (> arg3P (- 1))) (= arg2 arg1P))))
    (cfg_trans2 pc f1214_0_member_NULL pc1 f1214_0_member_NULL (exists ((x70 Int)) (and (and (and (and (and (and (and (and (and (<= (+ arg2P 1) arg2) (< x70 arg1)) (<= (+ arg2P 1) arg3)) (<= (+ arg3P 1) arg2)) (<= (+ arg3P 1) arg3)) (> arg2 0)) (> arg3 0)) (> arg2P (- 1))) (> arg3P (- 1))) (= arg1 arg1P))))
    (cfg_trans2 pc f1214_0_member_NULL pc1 f1214_0_member_NULL (exists ((x72 Int)) (and (and (and (and (and (and (and (and (and (<= (+ arg2P 1) arg2) (> x72 arg1)) (<= (+ arg2P 1) arg3)) (<= (+ arg3P 1) arg2)) (<= (+ arg3P 1) arg3)) (> arg2 0)) (> arg3 0)) (> arg2P (- 1))) (> arg3P (- 1))) (= arg1 arg1P))))
    (cfg_trans2 pc __init pc1 f1_0_main_Load true)
  )
)
