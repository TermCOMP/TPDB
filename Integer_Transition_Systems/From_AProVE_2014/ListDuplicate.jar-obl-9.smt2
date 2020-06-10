(declare-sort Loc 0)
(declare-const f169_0_createList_Return Loc)
(declare-const f236_0_main_InvokeMethod Loc)
(declare-const f1_0_main_Load Loc)
(declare-const f208_0_createList_LE Loc)
(declare-const f358_0_duplicate_NULL Loc)
(declare-const __init Loc)
(assert (distinct f169_0_createList_Return f236_0_main_InvokeMethod f1_0_main_Load f208_0_createList_LE f358_0_duplicate_NULL __init ))

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

(define-fun init_main ( (pc Loc) (arg1 Int) (arg2 Int) (arg3 Int) ) Bool
  (cfg_init pc __init true))

(define-fun next_main (
                 (pc Loc) (arg1 Int) (arg2 Int) (arg3 Int)
                 (pc1 Loc) (arg1P Int) (arg2P Int) (arg3P Int)
             ) Bool
  (or
    (cfg_trans2 pc f169_0_createList_Return pc1 f236_0_main_InvokeMethod (and (and (and (and (and (and (<= arg1P arg1) (<= (- arg1P 1) arg2)) (<= arg2P arg2)) (> arg1 0)) (> arg2 (- 1))) (> arg1P 0)) (> arg2P (- 1))))
    (cfg_trans2 pc f1_0_main_Load pc1 f236_0_main_InvokeMethod (and (and (and (<= arg1P arg1) (> arg1 0)) (> arg1P 0)) (> arg2P (- 1))))
    (cfg_trans2 pc f1_0_main_Load pc1 f208_0_createList_LE (and (and (> arg2 (- 1)) (> arg1P (- 1))) (> arg1 0)))
    (cfg_trans2 pc f208_0_createList_LE pc1 f208_0_createList_LE (and (> arg1 0) (= (- arg1 1) arg1P)))
    (cfg_trans2 pc f236_0_main_InvokeMethod pc1 f358_0_duplicate_NULL (exists ((x13 Int)) (and (and (and (and (and (and (and (<= arg1P arg2) (> x13 0)) (<= arg3P arg2)) (> arg1 0)) (> arg2 (- 1))) (> arg1P (- 1))) (> arg3P (- 1))) (= 1 arg2P))))
    (cfg_trans2 pc f358_0_duplicate_NULL pc1 f358_0_duplicate_NULL (and (and (and (and (and (and (and (and (and (<= (+ arg1P 1) arg1) (<= (+ arg1P 1) arg3)) (<= (+ arg3P 1) arg1)) (<= (+ arg3P 1) arg3)) (> arg1 0)) (> arg3 0)) (> arg1P (- 1))) (> arg3P (- 1))) (= 0 arg2)) (= 1 arg2P)))
    (cfg_trans2 pc f358_0_duplicate_NULL pc1 f358_0_duplicate_NULL (and (and (and (and (and (and (and (and (and (<= arg1P arg1) (<= arg1P arg3)) (<= arg3P arg1)) (<= arg3P arg3)) (> arg1 0)) (> arg3 0)) (> arg1P 0)) (> arg3P 0)) (= 1 arg2)) (= 0 arg2P)))
    (cfg_trans2 pc __init pc1 f1_0_main_Load true)
  )
)
