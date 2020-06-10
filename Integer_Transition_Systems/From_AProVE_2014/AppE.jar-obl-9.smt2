(declare-sort Loc 0)
(declare-const f169_0_createList_Return Loc)
(declare-const f229_0_random_ArrayAccess Loc)
(declare-const f1_0_main_Load Loc)
(declare-const f194_0_createList_LE Loc)
(declare-const f298_0_appE_NONNULL Loc)
(declare-const __init Loc)
(assert (distinct f169_0_createList_Return f229_0_random_ArrayAccess f1_0_main_Load f194_0_createList_LE f298_0_appE_NONNULL __init ))

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
    (cfg_trans2 pc f169_0_createList_Return pc1 f229_0_random_ArrayAccess (and (and (and (<= arg1P arg2) (> arg1 0)) (> arg2 (- 1))) (> arg1P (- 1))))
    (cfg_trans2 pc f1_0_main_Load pc1 f229_0_random_ArrayAccess (and (and (> arg1 0) (> arg1P (- 1))) (= arg2 arg2P)))
    (cfg_trans2 pc f1_0_main_Load pc1 f194_0_createList_LE (and (and (> arg2 (- 1)) (> arg1P (- 1))) (> arg1 0)))
    (cfg_trans2 pc f194_0_createList_LE pc1 f194_0_createList_LE (and (> arg1 0) (= (- arg1 1) arg1P)))
    (cfg_trans2 pc f229_0_random_ArrayAccess pc1 f298_0_appE_NONNULL (and (and (and (and (and (and (> arg2P (- 1)) (> arg2 1)) (<= arg1P arg1)) (<= (+ arg3P 1) arg1)) (> arg1 0)) (> arg1P 0)) (> arg3P (- 1))))
    (cfg_trans2 pc f298_0_appE_NONNULL pc1 f298_0_appE_NONNULL (and (and (and (and (and (and (and (and (<= (+ arg1P 2) arg1) (<= arg1P arg3)) (<= (+ arg3P 3) arg1)) (<= (+ arg3P 1) arg3)) (> arg1 2)) (> arg3 0)) (> arg1P 0)) (> arg3P (- 1))) (= arg2 arg2P)))
    (cfg_trans2 pc f298_0_appE_NONNULL pc1 f298_0_appE_NONNULL (and (and (and (and (and (and (and (and (and (<= arg1P arg1) (> arg2 0)) (<= (- arg1P 2) arg3)) (<= (+ arg3P 2) arg1)) (<= arg3P arg3)) (> arg1 1)) (> arg3 (- 1))) (> arg1P 1)) (> arg3P (- 1))) (= (- arg2 1) arg2P)))
    (cfg_trans2 pc __init pc1 f1_0_main_Load true)
  )
)
