(declare-sort Loc 0)
(declare-const f1_0_main_Load Loc)
(declare-const f480_0_main_InvokeMethod Loc)
(declare-const f481_0_main_InvokeMethod Loc)
(declare-const f482_0_main_InvokeMethod Loc)
(declare-const f193_0__init__LE Loc)
(declare-const f518_0__init__InvokeMethod Loc)
(declare-const f388_0_height_NONNULL Loc)
(declare-const __init Loc)
(assert (distinct f1_0_main_Load f480_0_main_InvokeMethod f481_0_main_InvokeMethod f482_0_main_InvokeMethod f193_0__init__LE f518_0__init__InvokeMethod f388_0_height_NONNULL __init ))

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
    (cfg_trans2 pc f1_0_main_Load pc1 f480_0_main_InvokeMethod (and (and (> arg1 0) (> arg1P 2)) (= 0 arg2)))
    (cfg_trans2 pc f1_0_main_Load pc1 f480_0_main_InvokeMethod (and (and (and (<= (- arg1P 1) arg1) (> arg1 0)) (> arg1P 1)) (= 0 arg2)))
    (cfg_trans2 pc f1_0_main_Load pc1 f481_0_main_InvokeMethod (exists ((x6 Int)) (and (and (and (> arg1 0) (> x6 (- 1))) (> arg1P 2)) (= 1 arg2))))
    (cfg_trans2 pc f1_0_main_Load pc1 f481_0_main_InvokeMethod (exists ((x64 Int)) (and (and (and (and (<= (- arg1P 1) arg1) (> x64 (- 1))) (> arg1 0)) (> arg1P 1)) (= 1 arg2))))
    (cfg_trans2 pc f1_0_main_Load pc1 f482_0_main_InvokeMethod (exists ((x14 Int) (x15 Int)) (and (and (and (and (and (and (and (>= (* x14 x15) 0) (> arg2 1)) (> x15 (- 1))) (> x14 (- 1))) (<= arg1P arg1)) (> arg1 0)) (> arg1P 0)) (> arg2P 2))))
    (cfg_trans2 pc f1_0_main_Load pc1 f482_0_main_InvokeMethod (exists ((x20 Int) (x21 Int)) (and (and (and (and (and (and (and (and (>= (* x20 x21) 0) (> arg2 1)) (> x21 (- 1))) (> x20 (- 1))) (<= arg1P arg1)) (<= (- arg2P 1) arg1)) (> arg1 0)) (> arg1P 0)) (> arg2P 1))))
    (cfg_trans2 pc f1_0_main_Load pc1 f193_0__init__LE (and (and (> arg1 0) (= 0 arg2)) (= 10 arg1P)))
    (cfg_trans2 pc f1_0_main_Load pc1 f193_0__init__LE (exists ((x69 Int)) (and (and (and (> arg1 0) (> x69 (- 1))) (= 1 arg2)) (= 10 arg1P))))
    (cfg_trans2 pc f1_0_main_Load pc1 f193_0__init__LE (exists ((x27 Int) (x28 Int)) (and (and (and (and (and (>= (* x27 x28) 0) (> arg2 1)) (> x28 (- 1))) (> x27 (- 1))) (> arg1 0)) (= (+ (* x27 x28) 10) arg1P))))
    (cfg_trans2 pc f193_0__init__LE pc1 f193_0__init__LE (and (and (> arg1 1) (< (- arg1 1) arg1)) (= (- arg1 1) arg1P)))
    (cfg_trans2 pc f193_0__init__LE pc1 f518_0__init__InvokeMethod (and (and (and (< (- arg1 1) arg1) (> arg1P 4)) (> arg1 1)) (= (- arg1 1) arg2P)))
    (cfg_trans2 pc f193_0__init__LE pc1 f518_0__init__InvokeMethod (and (and (and (< (- arg1 1) arg1) (> arg1P 3)) (> arg1 1)) (= (- arg1 1) arg2P)))
    (cfg_trans2 pc f518_0__init__InvokeMethod pc1 f193_0__init__LE (and (and (> arg1 2) (> arg2 0)) (= arg2 arg1P)))
    (cfg_trans2 pc f480_0_main_InvokeMethod pc1 f388_0_height_NONNULL (and (and (and (and (<= arg1P arg1) (<= (+ arg2P 1) arg1)) (> arg1 0)) (> arg1P 0)) (> arg2P (- 1))))
    (cfg_trans2 pc f481_0_main_InvokeMethod pc1 f388_0_height_NONNULL (and (and (and (and (<= arg1P arg1) (<= (+ arg2P 1) arg1)) (> arg1 0)) (> arg1P 0)) (> arg2P (- 1))))
    (cfg_trans2 pc f482_0_main_InvokeMethod pc1 f388_0_height_NONNULL (exists ((x46 Int)) (and (and (and (and (and (and (<= arg1P arg2) (> x46 1)) (<= (+ arg2P 1) arg2)) (> arg1 0)) (> arg2 0)) (> arg1P 0)) (> arg2P (- 1)))))
    (cfg_trans2 pc f388_0_height_NONNULL pc1 f388_0_height_NONNULL (and (and (and (and (and (and (and (<= (+ arg1P 2) arg1) (<= arg1P arg2)) (<= (+ arg2P 3) arg1)) (<= (+ arg2P 1) arg2)) (> arg1 2)) (> arg2 0)) (> arg1P 0)) (> arg2P (- 1))))
    (cfg_trans2 pc f388_0_height_NONNULL pc1 f388_0_height_NONNULL (and (and (and (and (and (<= (+ arg1P 2) arg1) (<= (+ arg2P 3) arg1)) (> arg1 2)) (> arg2 (- 1))) (> arg1P 0)) (> arg2P (- 1))))
    (cfg_trans2 pc __init pc1 f1_0_main_Load true)
  )
)
