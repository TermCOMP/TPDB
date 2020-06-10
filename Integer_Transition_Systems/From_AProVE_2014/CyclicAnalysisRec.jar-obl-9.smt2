(declare-sort Loc 0)
(declare-const f1_0_main_Load Loc)
(declare-const f177_0_appendNewList_Return Loc)
(declare-const f415_0_main_InvokeMethod Loc)
(declare-const f480_0_main_InvokeMethod Loc)
(declare-const f343_0_appendNewList_GT Loc)
(declare-const f519_0_length_NONNULL Loc)
(declare-const __init Loc)
(assert (distinct f1_0_main_Load f177_0_appendNewList_Return f415_0_main_InvokeMethod f480_0_main_InvokeMethod f343_0_appendNewList_GT f519_0_length_NONNULL __init ))

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
    (cfg_trans2 pc f1_0_main_Load pc1 f177_0_appendNewList_Return (exists ((x5 Int)) (and (and (and (and (and (and (and (and (and (> x5 (- 1)) (> arg2 0)) (<= arg1P arg1)) (<= (- arg2P 7) arg1)) (<= (- arg3P 5) arg1)) (> arg1 0)) (> arg1P 0)) (> arg2P 7)) (> arg3P 5)) (= 0 arg4P))))
    (cfg_trans2 pc f1_0_main_Load pc1 f177_0_appendNewList_Return (exists ((x12 Int)) (and (and (and (and (and (and (> x12 (- 1)) (> arg2 0)) (<= arg1P arg1)) (> arg1 0)) (> arg1P 0)) (> arg2P 8)) (> arg3P 6))))
    (cfg_trans2 pc f177_0_appendNewList_Return pc1 f415_0_main_InvokeMethod (exists ((x19 Int) (x13 Int)) (and (and (and (and (and (and (and (and (> x19 (- 1)) (> x13 1)) (<= arg1P arg1)) (<= (+ arg1P 7) arg2)) (<= (+ arg1P 5) arg3)) (> arg1 0)) (> arg2 7)) (> arg3 5)) (> arg1P 0))))
    (cfg_trans2 pc f177_0_appendNewList_Return pc1 f415_0_main_InvokeMethod (exists ((x26 Int) (x27 Int) (x28 Int) (x20 Int) (x29 Int)) (and (and (and (and (and (and (and (and (and (and (and (and (> x26 arg4) (> arg4 0)) (> x27 arg4)) (> x28 arg4)) (> x20 1)) (> x29 (- 1))) (<= arg1P arg1)) (<= (+ arg1P 6) arg2)) (<= (+ arg1P 4) arg3)) (> arg1 0)) (> arg2 6)) (> arg3 4)) (> arg1P 0))))
    (cfg_trans2 pc f1_0_main_Load pc1 f415_0_main_InvokeMethod (exists ((x33 Int) (x34 Int)) (and (and (and (and (and (> x33 (- 1)) (> arg2 1)) (> x34 (- 1))) (<= arg1P arg1)) (> arg1 0)) (> arg1P 0))))
    (cfg_trans2 pc f177_0_appendNewList_Return pc1 f480_0_main_InvokeMethod (exists ((x42 Int) (x43 Int) (x44 Int) (x35 Int) (x45 Int)) (and (and (and (and (and (and (and (and (and (and (and (and (and (> x42 arg4) (> arg4 0)) (> x43 arg4)) (> x44 arg4)) (> x35 1)) (> x45 (- 1))) (<= arg1P arg1)) (<= (+ arg1P 6) arg2)) (<= (+ arg1P 4) arg3)) (> arg1 0)) (> arg2 6)) (> arg3 4)) (> arg1P 0)) (> arg2P 6))))
    (cfg_trans2 pc f177_0_appendNewList_Return pc1 f480_0_main_InvokeMethod (exists ((x53 Int) (x46 Int)) (and (and (and (and (and (and (and (and (and (and (and (and (> x53 (- 1)) (> x46 1)) (<= arg1P arg1)) (<= (+ arg1P 7) arg2)) (<= (+ arg1P 5) arg3)) (<= (- arg2P 5) arg1)) (<= (+ arg2P 2) arg2)) (<= arg2P arg3)) (> arg1 0)) (> arg2 7)) (> arg3 5)) (> arg1P 0)) (> arg2P 5))))
    (cfg_trans2 pc f177_0_appendNewList_Return pc1 f480_0_main_InvokeMethod (exists ((x61 Int) (x54 Int)) (and (and (and (and (and (and (and (and (and (> x61 (- 1)) (> x54 1)) (<= arg1P arg1)) (<= (+ arg1P 7) arg2)) (<= (+ arg1P 5) arg3)) (> arg1 0)) (> arg2 7)) (> arg3 5)) (> arg1P 0)) (> arg2P 6))))
    (cfg_trans2 pc f1_0_main_Load pc1 f480_0_main_InvokeMethod (exists ((x66 Int) (x67 Int)) (and (and (and (and (and (and (> x66 (- 1)) (> arg2 1)) (> x67 (- 1))) (<= arg1P arg1)) (> arg1 0)) (> arg1P 0)) (> arg2P 6))))
    (cfg_trans2 pc f177_0_appendNewList_Return pc1 f480_0_main_InvokeMethod (exists ((x75 Int) (x76 Int) (x77 Int) (x68 Int) (x78 Int)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (> x75 arg4) (> arg4 0)) (> x76 arg4)) (> x77 arg4)) (> x68 1)) (> x78 (- 1))) (<= arg1P arg1)) (<= (+ arg1P 6) arg2)) (<= (+ arg1P 4) arg3)) (<= (- arg2P 5) arg1)) (<= (+ arg2P 1) arg2)) (<= (- arg2P 1) arg3)) (> arg1 0)) (> arg2 6)) (> arg3 4)) (> arg1P 0)) (> arg2P 5))))
    (cfg_trans2 pc f1_0_main_Load pc1 f480_0_main_InvokeMethod (exists ((x83 Int) (x84 Int)) (and (and (and (and (and (and (and (> x83 (- 1)) (> arg2 1)) (> x84 (- 1))) (<= arg1P arg1)) (<= (- arg2P 5) arg1)) (> arg1 0)) (> arg1P 0)) (> arg2P 5))))
    (cfg_trans2 pc f1_0_main_Load pc1 f343_0_appendNewList_GT (and (and (and (> arg1P (- 1)) (> arg2 0)) (> arg1 0)) (= 1 arg2P)))
    (cfg_trans2 pc f177_0_appendNewList_Return pc1 f343_0_appendNewList_GT (exists ((x94 Int) (x95 Int) (x96 Int) (x88 Int)) (and (and (and (and (and (and (and (and (and (> x94 arg4) (> arg4 0)) (> x95 arg4)) (> x96 arg4)) (> x88 1)) (> arg1P (- 1))) (> arg1 0)) (> arg2 6)) (> arg3 4)) (= 2 arg2P))))
    (cfg_trans2 pc f177_0_appendNewList_Return pc1 f343_0_appendNewList_GT (exists ((x97 Int)) (and (and (and (and (and (> arg1P (- 1)) (> x97 1)) (> arg1 0)) (> arg2 7)) (> arg3 5)) (= 2 arg2P))))
    (cfg_trans2 pc f1_0_main_Load pc1 f343_0_appendNewList_GT (exists ((x106 Int)) (and (and (and (and (> x106 (- 1)) (> arg2 1)) (> arg1P (- 1))) (> arg1 0)) (= 2 arg2P))))
    (cfg_trans2 pc f343_0_appendNewList_GT pc1 f343_0_appendNewList_GT (and (and (and (and (< (- arg1 1) arg1) (> arg2 0)) (> arg1 1)) (= (- arg1 1) arg1P)) (= arg2 arg2P)))
    (cfg_trans2 pc f415_0_main_InvokeMethod pc1 f519_0_length_NONNULL (exists ((x110 Int)) (and (and (and (and (and (<= (- arg1P 3) arg1) (> x110 1)) (<= (- arg2P 1) arg1)) (> arg1 0)) (> arg1P 3)) (> arg2P 1))))
    (cfg_trans2 pc f480_0_main_InvokeMethod pc1 f519_0_length_NONNULL (exists ((x114 Int)) (and (and (and (and (and (and (<= arg1P arg2) (> x114 1)) (<= (+ arg2P 2) arg2)) (> arg1 0)) (> arg2 4)) (> arg1P 4)) (> arg2P 2))))
    (cfg_trans2 pc f519_0_length_NONNULL pc1 f519_0_length_NONNULL (and (and (and (and (and (and (and (<= (+ arg1P 2) arg1) (<= arg1P arg2)) (<= (+ arg2P 3) arg1)) (<= (+ arg2P 1) arg2)) (> arg1 2)) (> arg2 0)) (> arg1P 0)) (> arg2P (- 1))))
    (cfg_trans2 pc __init pc1 f1_0_main_Load true)
  )
)
