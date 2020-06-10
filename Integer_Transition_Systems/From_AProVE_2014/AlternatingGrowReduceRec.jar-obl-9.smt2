(declare-sort Loc 0)
(declare-const f1_0_main_Load Loc)
(declare-const f180_0_main_InvokeMethod Loc)
(declare-const f370_0_growReduce_NONNULL Loc)
(declare-const f117_0_createList_LE Loc)
(declare-const __init Loc)
(assert (distinct f1_0_main_Load f180_0_main_InvokeMethod f370_0_growReduce_NONNULL f117_0_createList_LE __init ))

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

(define-fun init_main ( (pc Loc) (arg1 Int) (arg2 Int) ) Bool
  (cfg_init pc __init true))

(define-fun next_main (
                 (pc Loc) (arg1 Int) (arg2 Int)
                 (pc1 Loc) (arg1P Int) (arg2P Int)
             ) Bool
  (or
    (cfg_trans2 pc f1_0_main_Load pc1 f180_0_main_InvokeMethod (exists ((x4 Int)) (and (and (and (and (and (> x4 (- 1)) (> arg2 0)) (<= arg1P arg1)) (> arg1 0)) (> arg1P 0)) (> arg2P 2))))
    (cfg_trans2 pc f1_0_main_Load pc1 f180_0_main_InvokeMethod (exists ((x9 Int)) (and (and (and (and (and (and (> x9 (- 1)) (> arg2 0)) (<= arg1P arg1)) (<= (- arg2P 1) arg1)) (> arg1 0)) (> arg1P 0)) (> arg2P 1))))
    (cfg_trans2 pc f180_0_main_InvokeMethod pc1 f370_0_growReduce_NONNULL (exists ((x10 Int)) (and (and (and (and (and (<= arg2P arg2) (> x10 0)) (> arg1 0)) (> arg2 0)) (> arg2P 0)) (= 0 arg1P))))
    (cfg_trans2 pc f1_0_main_Load pc1 f117_0_createList_LE (and (and (> arg1P (- 1)) (> arg2 0)) (> arg1 0)))
    (cfg_trans2 pc f117_0_createList_LE pc1 f117_0_createList_LE (and (and (> arg1 1) (< (- arg1 1) arg1)) (= (- arg1 1) arg1P)))
    (cfg_trans2 pc f370_0_growReduce_NONNULL pc1 f370_0_growReduce_NONNULL (and (and (and (and (<= (+ arg2P 7) arg2) (> arg2 6)) (> arg2P (- 1))) (= 0 arg1)) (= 1 arg1P)))
    (cfg_trans2 pc f370_0_growReduce_NONNULL pc1 f370_0_growReduce_NONNULL (and (and (and (and (<= (- arg2P 2) arg2) (> arg2 0)) (> arg2P 2)) (= 1 arg1)) (= 2 arg1P)))
    (cfg_trans2 pc f370_0_growReduce_NONNULL pc1 f370_0_growReduce_NONNULL (and (and (and (and (<= (- arg2P 4) arg2) (> arg2 0)) (> arg2P 4)) (= 2 arg1)) (= 0 arg1P)))
    (cfg_trans2 pc __init pc1 f1_0_main_Load true)
  )
)
