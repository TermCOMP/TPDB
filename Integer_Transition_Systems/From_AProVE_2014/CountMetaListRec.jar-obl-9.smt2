(declare-sort Loc 0)
(declare-const f269_0_createMetaList_Return Loc)
(declare-const f462_0_main_InvokeMethod Loc)
(declare-const f1_0_main_Load Loc)
(declare-const f479_0_countMetaList_NONNULL Loc)
(declare-const f703_0_createMetaList_GE Loc)
(declare-const f922_0_createMetaList_LE Loc)
(declare-const __init Loc)
(assert (distinct f269_0_createMetaList_Return f462_0_main_InvokeMethod f1_0_main_Load f479_0_countMetaList_NONNULL f703_0_createMetaList_GE f922_0_createMetaList_LE __init ))

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
    (cfg_trans2 pc f269_0_createMetaList_Return pc1 f462_0_main_InvokeMethod (and (and (and (and (and (and (<= arg1P arg1) (<= (- arg1P 1) arg2)) (<= arg2P arg2)) (> arg1 0)) (> arg2 (- 1))) (> arg1P 0)) (> arg2P (- 1))))
    (cfg_trans2 pc f1_0_main_Load pc1 f462_0_main_InvokeMethod (and (and (and (<= arg1P arg1) (> arg1 0)) (> arg1P 0)) (> arg2P (- 1))))
    (cfg_trans2 pc f462_0_main_InvokeMethod pc1 f479_0_countMetaList_NONNULL (exists ((x9 Int) (x13 Int)) (and (and (and (and (and (> x9 0) (> x13 0)) (<= arg1P arg2)) (> arg1 0)) (> arg2 (- 1))) (> arg1P (- 1)))))
    (cfg_trans2 pc f1_0_main_Load pc1 f703_0_createMetaList_GE (and (and (and (and (> arg2 (- 1)) (> arg2P (- 1))) (> arg1 0)) (= 0 arg1P)) (= 1 arg3P)))
    (cfg_trans2 pc f703_0_createMetaList_GE pc1 f922_0_createMetaList_LE (and (and (and (and (and (> arg3P (- 1)) (> arg2 arg1)) (> arg3 0)) (= arg2 arg1P)) (= arg1 arg2P)) (= (+ arg3 1) arg4P)))
    (cfg_trans2 pc f922_0_createMetaList_LE pc1 f703_0_createMetaList_GE (and (and (and (= 0 arg3) (= (+ arg2 1) arg1P)) (= arg1 arg2P)) (= arg4 arg3P)))
    (cfg_trans2 pc f922_0_createMetaList_LE pc1 f922_0_createMetaList_LE (and (and (and (and (> arg3 0) (= arg1 arg1P)) (= arg2 arg2P)) (= (- arg3 1) arg3P)) (= arg4 arg4P)))
    (cfg_trans2 pc f479_0_countMetaList_NONNULL pc1 f479_0_countMetaList_NONNULL (exists ((x31 Int)) (and (and (and (<= (+ arg1P 2) arg1) (> x31 0)) (> arg1 1)) (> arg1P (- 1)))))
    (cfg_trans2 pc f479_0_countMetaList_NONNULL pc1 f479_0_countMetaList_NONNULL (exists ((x35 Int)) (and (and (and (<= (+ arg1P 2) arg1) (> x35 0)) (> arg1 2)) (> arg1P (- 1)))))
    (cfg_trans2 pc f479_0_countMetaList_NONNULL pc1 f479_0_countMetaList_NONNULL (exists ((x39 Int)) (and (and (and (<= arg1P arg1) (> x39 0)) (> arg1 2)) (> arg1P 0))))
    (cfg_trans2 pc __init pc1 f1_0_main_Load true)
  )
)
