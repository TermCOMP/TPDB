(declare-sort Loc 0)
(declare-const f1_0_main_New Loc)
(declare-const f262_0_main_InvokeMethod Loc)
(declare-const f76_0__init__LE Loc)
(declare-const f288_0__init__InvokeMethod Loc)
(declare-const f194_0_height_NONNULL Loc)
(declare-const __init Loc)
(assert (distinct f1_0_main_New f262_0_main_InvokeMethod f76_0__init__LE f288_0__init__InvokeMethod f194_0_height_NONNULL __init ))

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
    (cfg_trans2 pc f1_0_main_New pc1 f262_0_main_InvokeMethod (> arg1P 2))
    (cfg_trans2 pc f1_0_main_New pc1 f262_0_main_InvokeMethod (> arg1P 1))
    (cfg_trans2 pc f1_0_main_New pc1 f76_0__init__LE (and (and (= 5 arg1P) (= 5 arg2P)) (= 5 arg3P)))
    (cfg_trans2 pc f76_0__init__LE pc1 f76_0__init__LE (and (and (and (and (and (and (< (- arg2 1) arg2) (> arg1 0)) (> arg2 1)) (= arg2 arg3)) (= (- arg2 1) arg1P)) (= (- arg2 1) arg2P)) (= (- arg2 1) arg3P)))
    (cfg_trans2 pc f76_0__init__LE pc1 f288_0__init__InvokeMethod (and (and (and (and (and (and (< (- arg2 1) arg2) (> arg2 1)) (> arg2P 4)) (> arg1 0)) (= arg2 arg3)) (= arg1 arg1P)) (= (- arg2 1) arg3P)))
    (cfg_trans2 pc f76_0__init__LE pc1 f288_0__init__InvokeMethod (and (and (and (and (and (and (< (- arg2 1) arg2) (> arg2 1)) (> arg2P 3)) (> arg1 0)) (= arg2 arg3)) (= arg1 arg1P)) (= (- arg2 1) arg3P)))
    (cfg_trans2 pc f288_0__init__InvokeMethod pc1 f76_0__init__LE (and (and (and (and (and (> arg3 0) (> arg1 0)) (> arg2 2)) (= arg3 arg1P)) (= arg3 arg2P)) (= arg3 arg3P)))
    (cfg_trans2 pc f262_0_main_InvokeMethod pc1 f194_0_height_NONNULL (and (and (and (and (<= arg1P arg1) (<= (+ arg2P 1) arg1)) (> arg1 0)) (> arg1P 0)) (> arg2P (- 1))))
    (cfg_trans2 pc f194_0_height_NONNULL pc1 f194_0_height_NONNULL (and (and (and (and (and (and (and (<= (+ arg1P 2) arg1) (<= arg1P arg2)) (<= (+ arg2P 3) arg1)) (<= (+ arg2P 1) arg2)) (> arg1 2)) (> arg2 0)) (> arg1P 0)) (> arg2P (- 1))))
    (cfg_trans2 pc f194_0_height_NONNULL pc1 f194_0_height_NONNULL (and (and (and (and (and (<= (+ arg1P 2) arg1) (<= (+ arg2P 3) arg1)) (> arg1 2)) (> arg2 (- 1))) (> arg1P 0)) (> arg2P (- 1))))
    (cfg_trans2 pc __init pc1 f1_0_main_New true)
  )
)
