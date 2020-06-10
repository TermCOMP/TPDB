(declare-sort Loc 0)
(declare-const f1_0_main_Load Loc)
(declare-const f499_0_createTree_GT Loc)
(declare-const f1061_0_main_InvokeMethod Loc)
(declare-const f350_0_createTree_Return Loc)
(declare-const f1079_0_mirror_NULL Loc)
(declare-const f1039_0_createTree_GE Loc)
(declare-const f1400_0_mirror_FieldAccess Loc)
(declare-const f1463_0_mirror_FieldAccess Loc)
(declare-const __init Loc)
(assert (distinct f1_0_main_Load f499_0_createTree_GT f1061_0_main_InvokeMethod f350_0_createTree_Return f1079_0_mirror_NULL f1039_0_createTree_GE f1400_0_mirror_FieldAccess f1463_0_mirror_FieldAccess __init ))

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
    (cfg_trans2 pc f1_0_main_Load pc1 f499_0_createTree_GT (and (and (and (and (> arg1P (- 1)) (> arg2 0)) (> arg1 0)) (= arg2 arg2P)) (= 1 arg3P)))
    (cfg_trans2 pc f1_0_main_Load pc1 f1061_0_main_InvokeMethod (exists ((x8 Int)) (and (and (and (and (and (> x8 (- 1)) (> arg2 0)) (<= arg1P arg1)) (> arg1 0)) (> arg1P 0)) (> arg2P (- 1)))))
    (cfg_trans2 pc f350_0_createTree_Return pc1 f1061_0_main_InvokeMethod (and (and (and (and (and (<= arg1P arg1) (<= (+ arg2P 1) arg1)) (> arg1 0)) (> arg1P 0)) (> arg2P (- 1))) (= arg2 arg3P)))
    (cfg_trans2 pc f1061_0_main_InvokeMethod pc1 f1079_0_mirror_NULL (exists ((x14 Int)) (and (and (and (and (and (and (> x14 0) (> arg3 1)) (<= arg1P arg2)) (> arg1 0)) (> arg2 (- 1))) (> arg1P (- 1))) (= arg3 arg2P))))
    (cfg_trans2 pc f499_0_createTree_GT pc1 f1039_0_createTree_GE (and (and (and (and (and (and (and (and (and (> arg2 (- 1)) (> arg1 0)) (> arg3 0)) (< arg3 arg2)) (> arg4P (- 1))) (= arg1 arg1P)) (= (- arg1 1) arg2P)) (= 0 arg3P)) (= arg2 arg5P)) (= (+ arg3 1) arg6P)))
    (cfg_trans2 pc f1039_0_createTree_GE pc1 f499_0_createTree_GT (and (and (and (and (and (and (and (and (and (and (> arg4 0) (> arg4 arg3)) (> arg1 0)) (> arg6 1)) (< arg2 arg1)) (< (- arg2 1) arg1)) (> arg2 (- 1))) (< (- arg2 1) arg2)) (= (- arg2 1) arg1P)) (= arg5 arg2P)) (= arg6 arg3P)))
    (cfg_trans2 pc f1039_0_createTree_GE pc1 f1039_0_createTree_GE (and (and (and (and (and (and (and (and (and (and (and (and (and (> arg4 0) (> arg4 arg3)) (> arg1 0)) (> arg6 1)) (< arg2 arg1)) (< (- arg2 1) arg1)) (> arg2 (- 1))) (< (- arg2 1) arg2)) (= arg1 arg1P)) (= arg2 arg2P)) (= (+ arg3 1) arg3P)) (= arg4 arg4P)) (= arg5 arg5P)) (= arg6 arg6P)))
    (cfg_trans2 pc f1039_0_createTree_GE pc1 f1039_0_createTree_GE (and (and (and (and (and (and (and (and (and (and (and (and (> arg4 0) (> arg4 arg3)) (> arg1 0)) (> arg6 1)) (< arg2 arg1)) (< (- arg2 1) arg1)) (> arg2 (- 1))) (< (- arg2 1) arg2)) (= arg1 arg1P)) (= arg2 arg2P)) (= (+ arg3 1) arg3P)) (= arg4 arg4P)) (= arg5 arg5P)))
    (cfg_trans2 pc f1079_0_mirror_NULL pc1 f1079_0_mirror_NULL (and (and (and (and (<= (+ arg1P 2) arg1) (> arg2 1)) (> arg1 2)) (> arg1P 0)) (= arg2 arg2P)))
    (cfg_trans2 pc f1079_0_mirror_NULL pc1 f1079_0_mirror_NULL (and (and (and (and (<= (+ arg1P 4) arg1) (> arg2 1)) (> arg1 3)) (> arg1P (- 1))) (= arg2 arg2P)))
    (cfg_trans2 pc f1079_0_mirror_NULL pc1 f1400_0_mirror_FieldAccess (and (and (and (and (and (and (and (<= arg1P arg1) (> arg2 1)) (<= (+ arg3P 2) arg1)) (> arg1 2)) (> arg1P 1)) (> arg2P 2)) (> arg3P (- 1))) (= arg2 arg5P)))
    (cfg_trans2 pc f1079_0_mirror_NULL pc1 f1400_0_mirror_FieldAccess (and (and (and (and (and (and (and (<= arg1P arg1) (> arg2 1)) (<= (+ arg3P 2) arg1)) (> arg1 2)) (> arg1P 1)) (> arg2P 5)) (> arg3P (- 1))) (= arg2 arg5P)))
    (cfg_trans2 pc f1400_0_mirror_FieldAccess pc1 f1079_0_mirror_NULL (and (and (and (and (and (and (and (<= (+ arg1P 3) arg1) (> arg5 1)) (<= (+ arg1P 1) arg3)) (> arg1 2)) (> arg2 0)) (> arg3 0)) (> arg1P (- 1))) (= arg5 arg2P)))
    (cfg_trans2 pc f1400_0_mirror_FieldAccess pc1 f1463_0_mirror_FieldAccess (and (and (and (and (and (and (and (and (and (<= arg1P arg2) (> arg5 1)) (<= arg2P arg1)) (<= (- arg2P 3) arg2)) (<= (- arg2P 2) arg3)) (> arg1 3)) (> arg2 0)) (> arg3 1)) (> arg1P 0)) (> arg2P 3)))
    (cfg_trans2 pc f1400_0_mirror_FieldAccess pc1 f1463_0_mirror_FieldAccess (and (and (and (and (and (and (and (and (<= arg1P arg2) (> arg5 1)) (<= arg2P arg1)) (<= (- arg2P 2) arg3)) (> arg1 5)) (> arg2 0)) (> arg3 3)) (> arg1P 0)) (> arg2P 5)))
    (cfg_trans2 pc f1400_0_mirror_FieldAccess pc1 f1463_0_mirror_FieldAccess (and (and (and (and (and (and (<= arg1P arg2) (> arg5 1)) (> arg1 2)) (> arg2 0)) (> arg3 0)) (> arg1P 0)) (> arg2P 5)))
    (cfg_trans2 pc __init pc1 f1_0_main_Load true)
  )
)
