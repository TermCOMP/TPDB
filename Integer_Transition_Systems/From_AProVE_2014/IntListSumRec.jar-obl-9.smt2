(declare-sort Loc 0)
(declare-const f1_0_main_Load Loc)
(declare-const f302_0_createList_GE Loc)
(declare-const f502_0_main_InvokeMethod Loc)
(declare-const f571_0_sumList_NONNULL Loc)
(declare-const __init Loc)
(assert (distinct f1_0_main_Load f302_0_createList_GE f502_0_main_InvokeMethod f571_0_sumList_NONNULL __init ))

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
    (cfg_trans2 pc f1_0_main_Load pc1 f302_0_createList_GE (and (and (and (and (> arg1P (- 1)) (> arg2 0)) (> arg1 0)) (= arg2 arg2P)) (= 1 arg3P)))
    (cfg_trans2 pc f1_0_main_Load pc1 f502_0_main_InvokeMethod (exists ((x8 Int)) (and (and (and (and (and (> x8 (- 1)) (> arg2 0)) (<= arg1P arg1)) (> arg1 0)) (> arg1P 0)) (> arg2P 2))))
    (cfg_trans2 pc f1_0_main_Load pc1 f502_0_main_InvokeMethod (exists ((x14 Int)) (and (and (and (and (and (and (> x14 (- 1)) (> arg2 0)) (>= arg1 arg1P)) (>= arg1 (- arg2P 1))) (> arg1 0)) (> arg1P 0)) (> arg2P 1))))
    (cfg_trans2 pc f302_0_createList_GE pc1 f302_0_createList_GE (and (and (and (and (and (and (and (> arg1 (- 1)) (> arg2 (- 1))) (> arg3 0)) (< (- arg1 1) arg1)) (< arg3 arg2)) (= (- arg1 1) arg1P)) (= arg2 arg2P)) (= (+ arg3 1) arg3P)))
    (cfg_trans2 pc f502_0_main_InvokeMethod pc1 f571_0_sumList_NONNULL (exists ((x18 Int)) (and (and (and (and (and (and (and (and (> x18 0) (> arg3 1)) (<= arg1P arg2)) (<= (+ arg2P 1) arg2)) (> arg1 0)) (> arg2 0)) (> arg1P 0)) (> arg2P (- 1))) (= arg3 arg3P))))
    (cfg_trans2 pc f571_0_sumList_NONNULL pc1 f571_0_sumList_NONNULL (and (and (and (and (and (and (and (and (and (<= (+ arg1P 2) arg1) (> arg3 1)) (<= arg1P arg2)) (<= (+ arg2P 3) arg1)) (<= (+ arg2P 1) arg2)) (> arg1 2)) (> arg2 0)) (> arg1P 0)) (> arg2P (- 1))) (= arg3 arg3P)))
    (cfg_trans2 pc __init pc1 f1_0_main_Load true)
  )
)
