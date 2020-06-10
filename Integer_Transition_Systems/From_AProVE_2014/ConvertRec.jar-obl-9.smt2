(declare-sort Loc 0)
(declare-const f1_0_main_Load Loc)
(declare-const f541_0_createList_GT Loc)
(declare-const f88_0_main_InvokeMethod Loc)
(declare-const f257_0_main_InvokeMethod Loc)
(declare-const f1347_0_convert_NONNULL Loc)
(declare-const f972_0_random_GT Loc)
(declare-const f1127_0_main_InvokeMethod Loc)
(declare-const f736_0_createList_InvokeMethod Loc)
(declare-const __init Loc)
(assert (distinct f1_0_main_Load f541_0_createList_GT f88_0_main_InvokeMethod f257_0_main_InvokeMethod f1347_0_convert_NONNULL f972_0_random_GT f1127_0_main_InvokeMethod f736_0_createList_InvokeMethod __init ))

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
    (cfg_trans2 pc f1_0_main_Load pc1 f541_0_createList_GT (and (and (and (and (> arg1 0) (= 0 arg2)) (= 0 arg1P)) (= 0 arg2P)) (= 0 arg3P)))
    (cfg_trans2 pc f1_0_main_Load pc1 f88_0_main_InvokeMethod (and (and (and (and (<= arg1P arg1) (> arg2 0)) (> arg1 0)) (> arg1P 0)) (= 0 arg2P)))
    (cfg_trans2 pc f1_0_main_Load pc1 f88_0_main_InvokeMethod (and (and (and (and (> arg2P (- 1)) (> arg2 0)) (<= arg1P arg1)) (> arg1 0)) (> arg1P 0)))
    (cfg_trans2 pc f88_0_main_InvokeMethod pc1 f541_0_createList_GT (and (and (and (> arg1 0) (> arg2P 0)) (= arg2 arg1P)) (= 1 arg3P)))
    (cfg_trans2 pc f257_0_main_InvokeMethod pc1 f1347_0_convert_NONNULL (exists ((x11 Int)) (and (and (and (<= (+ arg1P 1) arg1) (> x11 1)) (> arg1 0)) (> arg1P (- 1)))))
    (cfg_trans2 pc f1_0_main_Load pc1 f1347_0_convert_NONNULL (and (and (and (<= (+ arg1P 1) arg1) (> arg1 0)) (> arg1P (- 1))) (= 0 arg2)))
    (cfg_trans2 pc f88_0_main_InvokeMethod pc1 f1347_0_convert_NONNULL (and (and (and (<= (+ arg1P 1) arg1) (> arg1 0)) (> arg1P (- 1))) (= 0 arg2)))
    (cfg_trans2 pc f88_0_main_InvokeMethod pc1 f257_0_main_InvokeMethod (exists ((x110 Int)) (and (and (and (and (<= arg1P arg1) (> x110 1)) (> arg1 0)) (> arg1P 0)) (= 0 arg2))))
    (cfg_trans2 pc f88_0_main_InvokeMethod pc1 f257_0_main_InvokeMethod (exists ((x114 Int) (x115 Int)) (and (and (and (and (and (> x114 (- 1)) (> x115 1)) (<= arg1P arg1)) (> arg1 0)) (> arg1P 0)) (= 0 arg2))))
    (cfg_trans2 pc f1_0_main_Load pc1 f1347_0_convert_NONNULL (and (and (and (<= (- arg1P 1) arg1) (> arg1 0)) (> arg1P 1)) (= 0 arg2)))
    (cfg_trans2 pc f88_0_main_InvokeMethod pc1 f972_0_random_GT (exists ((x27 Int)) (and (and (and (and (and (<= arg1P arg1) (> x27 0)) (> arg1 0)) (> arg1P 0)) (> arg2P 2)) (= 0 arg3P))))
    (cfg_trans2 pc f88_0_main_InvokeMethod pc1 f972_0_random_GT (exists ((x33 Int)) (and (and (and (and (<= arg1P arg1) (> x33 0)) (> arg1 0)) (> arg1P 0)) (> arg2P 2))))
    (cfg_trans2 pc f88_0_main_InvokeMethod pc1 f972_0_random_GT (exists ((x40 Int)) (and (and (and (and (<= arg1P arg1) (> x40 0)) (> arg1 0)) (> arg1P 0)) (> arg2P 1))))
    (cfg_trans2 pc f88_0_main_InvokeMethod pc1 f972_0_random_GT (exists ((x47 Int)) (and (and (and (and (and (and (<= arg1P arg1) (> x47 0)) (<= (- arg2P 1) arg1)) (> arg1 0)) (> arg1P 0)) (> arg2P 1)) (= 0 arg3P))))
    (cfg_trans2 pc f972_0_random_GT pc1 f1127_0_main_InvokeMethod (exists ((x52 Int)) (and (and (and (and (and (and (and (and (and (and (<= arg1P arg1) (>= arg3P x52)) (<= arg1P arg2)) (<= arg2P arg2)) (> arg1 0)) (> arg2 0)) (> arg1P 0)) (> arg2P 0)) (<= (+ arg5P 2) arg2)) (<= (+ arg3 2) arg2)) (= arg3 arg4P))))
    (cfg_trans2 pc f972_0_random_GT pc1 f1127_0_main_InvokeMethod (exists ((x61 Int) (x60 Int)) (and (and (and (and (and (and (and (and (and (and (and (and (< x61 x60) (> x61 (- 1))) (<= arg1P arg1)) (<= arg1P arg2)) (<= arg2P arg2)) (> arg1 0)) (> arg2 0)) (> arg1P 0)) (> arg2P 0)) (<= (+ arg5P 2) arg2)) (<= (+ arg3 2) arg2)) (= (+ x61 1) arg3P)) (= arg3 arg4P))))
    (cfg_trans2 pc f972_0_random_GT pc1 f1127_0_main_InvokeMethod (exists ((x69 Int) (x68 Int) (x76 Int)) (and (and (and (and (and (and (and (and (and (and (and (and (and (< x69 x68) (> x69 (- 1))) (> x76 (- 1))) (<= arg1P arg1)) (<= arg1P arg2)) (<= arg2P arg2)) (> arg1 0)) (> arg2 0)) (> arg1P 0)) (> arg2P 0)) (<= (+ arg5P 2) arg2)) (<= (+ arg3 2) arg2)) (= (+ x69 1) arg3P)) (= arg3 arg4P))))
    (cfg_trans2 pc f1127_0_main_InvokeMethod pc1 f1347_0_convert_NONNULL (exists ((x77 Int)) (and (and (and (and (and (and (and (> x77 0) (> arg3 0)) (<= arg1P arg2)) (> arg1 0)) (> arg2 0)) (> arg1P 0)) (<= (+ arg5 2) arg2)) (<= (+ arg4 2) arg2))))
    (cfg_trans2 pc f541_0_createList_GT pc1 f541_0_createList_GT (and (and (and (and (and (and (> arg1 0) (> arg2 (- 1))) (< (- arg1 1) arg1)) (>= arg3 arg2)) (= (- arg1 1) arg1P)) (= arg2 arg2P)) (= arg3 arg3P)))
    (cfg_trans2 pc f541_0_createList_GT pc1 f736_0_createList_InvokeMethod (and (and (and (and (and (and (and (> arg1 0) (> arg2 (- 1))) (> arg3 (- 1))) (< arg3 arg2)) (= arg1 arg1P)) (= (- arg1 1) arg2P)) (= arg2 arg3P)) (= (+ arg3 1) arg4P)))
    (cfg_trans2 pc f541_0_createList_GT pc1 f736_0_createList_InvokeMethod (exists ((x93 Int)) (and (and (and (and (and (and (and (and (> arg1 0) (> arg2 (- 1))) (< arg3 arg2)) (> x93 (- 1))) (> arg3 (- 1))) (= arg1 arg1P)) (= (- arg1 1) arg2P)) (= arg2 arg3P)) (= (+ arg3 1) arg4P))))
    (cfg_trans2 pc f736_0_createList_InvokeMethod pc1 f541_0_createList_GT (and (and (and (and (and (and (and (> arg1 0) (> arg4 0)) (> arg3 0)) (<= arg4 arg3)) (< arg2 arg1)) (= arg2 arg1P)) (= arg3 arg2P)) (= arg4 arg3P)))
    (cfg_trans2 pc f1347_0_convert_NONNULL pc1 f1347_0_convert_NONNULL (exists ((x101 Int)) (and (and (and (>= arg1 (+ arg1P 1)) (< x101 1)) (> arg1 0)) (> arg1P (- 1)))))
    (cfg_trans2 pc f1347_0_convert_NONNULL pc1 f1347_0_convert_NONNULL (exists ((x105 Int)) (and (and (and (and (< (- x105 1) x105) (> x105 0)) (<= arg1P arg1)) (> arg1 0)) (> arg1P 0))))
    (cfg_trans2 pc __init pc1 f1_0_main_Load true)
  )
)
