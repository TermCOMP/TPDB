(declare-sort Loc 0)
(declare-const f1_0_main_New Loc)
(declare-const f155_0_main_ArrayAccess Loc)
(declare-const f201_0_main_InvokeMethod Loc)
(declare-const f69_0__init__GT Loc)
(declare-const f226_0_isZero_NONNULL Loc)
(declare-const f534_0_div_InvokeMethod Loc)
(declare-const f555_0_div_InvokeMethod Loc)
(declare-const f287_0_isZero_NONNULL Loc)
(declare-const f321_0_copy_NONNULL Loc)
(declare-const __init Loc)
(assert (distinct f1_0_main_New f155_0_main_ArrayAccess f201_0_main_InvokeMethod f69_0__init__GT f226_0_isZero_NONNULL f534_0_div_InvokeMethod f555_0_div_InvokeMethod f287_0_isZero_NONNULL f321_0_copy_NONNULL __init ))

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
    (cfg_trans2 pc f1_0_main_New pc1 f155_0_main_ArrayAccess (exists ((x4 Int)) (and (and (and (and (and (and (> x4 (- 1)) (> arg2 0)) (<= arg2P arg1)) (> arg1 0)) (> arg1P 2)) (> arg2P 0)) (= arg2 arg3P))))
    (cfg_trans2 pc f1_0_main_New pc1 f155_0_main_ArrayAccess (and (and (and (and (and (and (<= (- arg1P 1) arg1) (> arg2 0)) (<= arg2P arg1)) (> arg1 0)) (> arg1P 1)) (> arg2P 0)) (= arg2 arg3P)))
    (cfg_trans2 pc f155_0_main_ArrayAccess pc1 f201_0_main_InvokeMethod (and (and (and (and (and (and (and (and (and (and (and (and (>= arg1 arg1P) (> arg3 1)) (<= arg1P arg2)) (>= arg1 arg2P)) (>= arg1 (- arg3P 1))) (<= (- arg3P 1) arg2)) (> arg1 0)) (> arg2 0)) (> arg1P 0)) (> arg2P 0)) (> arg3P 1)) (>= arg1 (+ arg5P 2))) (= arg3 arg4P)))
    (cfg_trans2 pc f155_0_main_ArrayAccess pc1 f201_0_main_InvokeMethod (exists ((x23 Int)) (and (and (and (and (and (and (and (and (and (and (and (> x23 (- 1)) (> arg3 1)) (<= arg1P arg1)) (<= arg1P arg2)) (<= arg2P arg1)) (> arg1 0)) (> arg2 0)) (> arg1P 0)) (> arg2P 0)) (> arg3P 2)) (<= (+ arg5P 2) arg1)) (= arg3 arg4P))))
    (cfg_trans2 pc f1_0_main_New pc1 f69_0__init__GT (and (and (> arg1P (- 1)) (> arg2 0)) (> arg1 0)))
    (cfg_trans2 pc f155_0_main_ArrayAccess pc1 f69_0__init__GT (and (and (and (> arg1P (- 1)) (> arg3 1)) (> arg1 0)) (> arg2 0)))
    (cfg_trans2 pc f69_0__init__GT pc1 f69_0__init__GT (and (and (> arg1 0) (< (- arg1 1) arg1)) (= (- arg1 1) arg1P)))
    (cfg_trans2 pc f201_0_main_InvokeMethod pc1 f226_0_isZero_NONNULL (and (and (and (and (and (and (and (and (and (and (<= arg1P arg2) (> arg4 1)) (<= arg2P arg3)) (<= (+ arg3P 1) arg3)) (> arg1 0)) (> arg2 0)) (> arg3 0)) (> arg1P 0)) (> arg2P 0)) (> arg3P (- 1))) (<= (+ arg5 2) arg2)))
    (cfg_trans2 pc f226_0_isZero_NONNULL pc1 f226_0_isZero_NONNULL (and (and (and (and (and (and (and (and (and (and (and (and (<= (+ arg1P 1) arg1) (<= (+ arg1P 3) arg2)) (<= (+ arg1P 1) arg3)) (<= arg2P arg2)) (<= (- arg2P 2) arg3)) (<= (+ arg3P 2) arg2)) (<= arg3P arg3)) (> arg1 2)) (> arg2 4)) (> arg3 2)) (> arg1P 1)) (> arg2P 4)) (> arg3P 2)))
    (cfg_trans2 pc f226_0_isZero_NONNULL pc1 f534_0_div_InvokeMethod (and (and (and (> arg1 2) (> arg2 3)) (> arg3 1)) (> arg1P 2)))
    (cfg_trans2 pc f226_0_isZero_NONNULL pc1 f534_0_div_InvokeMethod (and (and (and (and (and (and (<= (+ arg1P 1) arg1) (<= (+ arg1P 2) arg2)) (<= arg1P arg3)) (> arg1 2)) (> arg2 3)) (> arg3 1)) (> arg1P 1)))
    (cfg_trans2 pc f534_0_div_InvokeMethod pc1 f226_0_isZero_NONNULL (and (and (and (and (and (and (<= arg1P arg1) (<= (- arg2P 3) arg1)) (<= (- arg3P 1) arg1)) (> arg1 0)) (> arg1P 0)) (> arg2P 3)) (> arg3P 1)))
    (cfg_trans2 pc f226_0_isZero_NONNULL pc1 f555_0_div_InvokeMethod (and (and (and (and (and (and (and (<= (- arg2P 3) arg1) (<= arg2P arg2)) (<= (- arg2P 2) arg3)) (> arg1 2)) (> arg2 5)) (> arg3 3)) (> arg1P 0)) (> arg2P 5)))
    (cfg_trans2 pc f226_0_isZero_NONNULL pc1 f555_0_div_InvokeMethod (and (and (and (and (and (and (<= arg2P arg2) (<= (- arg2P 2) arg3)) (> arg1 2)) (> arg2 6)) (> arg3 4)) (> arg1P 0)) (> arg2P 6)))
    (cfg_trans2 pc f226_0_isZero_NONNULL pc1 f555_0_div_InvokeMethod (and (and (and (and (and (and (and (and (and (<= (+ arg1P 1) arg1) (<= (+ arg1P 5) arg2)) (<= (+ arg1P 3) arg3)) (<= arg2P arg2)) (<= (- arg2P 2) arg3)) (> arg1 2)) (> arg2 6)) (> arg3 4)) (> arg1P 1)) (> arg2P 6)))
    (cfg_trans2 pc f555_0_div_InvokeMethod pc1 f226_0_isZero_NONNULL (and (and (and (and (and (and (and (<= arg1P arg1) (<= arg2P arg2)) (<= (+ arg3P 2) arg2)) (> arg1 0)) (> arg2 4)) (> arg1P 0)) (> arg2P 4)) (> arg3P 2)))
    (cfg_trans2 pc f226_0_isZero_NONNULL pc1 f287_0_isZero_NONNULL (and (and (and (and (and (and (and (and (and (and (<= (+ arg1P 2) arg1) (<= (+ arg2P 2) arg2)) (<= arg2P arg3)) (<= (+ arg3P 3) arg2)) (<= (+ arg3P 1) arg3)) (> arg1 2)) (> arg2 2)) (> arg3 0)) (> arg1P 0)) (> arg2P 0)) (> arg3P (- 1))))
    (cfg_trans2 pc f287_0_isZero_NONNULL pc1 f287_0_isZero_NONNULL (and (and (and (and (and (and (and (and (and (and (<= (+ arg1P 2) arg1) (<= (+ arg2P 2) arg2)) (<= arg2P arg3)) (<= (+ arg3P 3) arg2)) (<= (+ arg3P 1) arg3)) (> arg1 2)) (> arg2 2)) (> arg3 0)) (> arg1P 0)) (> arg2P 0)) (> arg3P (- 1))))
    (cfg_trans2 pc f287_0_isZero_NONNULL pc1 f321_0_copy_NONNULL (and (and (and (and (and (and (<= arg1P arg1) (<= (+ arg2P 1) arg1)) (> arg1 0)) (> arg2 1)) (> arg3 (- 1))) (> arg1P 0)) (> arg2P (- 1))))
    (cfg_trans2 pc f321_0_copy_NONNULL pc1 f321_0_copy_NONNULL (and (and (and (and (and (and (and (<= (+ arg1P 2) arg1) (<= arg1P arg2)) (<= (+ arg2P 3) arg1)) (<= (+ arg2P 1) arg2)) (> arg1 2)) (> arg2 0)) (> arg1P 0)) (> arg2P (- 1))))
    (cfg_trans2 pc __init pc1 f1_0_main_New true)
  )
)
