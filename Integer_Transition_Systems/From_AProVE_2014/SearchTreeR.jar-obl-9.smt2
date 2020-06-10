(declare-sort Loc 0)
(declare-const f1_0_main_Load Loc)
(declare-const f672_0_main_GE Loc)
(declare-const f765_0_insert_GT Loc)
(declare-const __init Loc)
(assert (distinct f1_0_main_Load f672_0_main_GE f765_0_insert_GT __init ))

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

(define-fun init_main ( (pc Loc) (arg1 Int) (arg2 Int) (arg3 Int) (arg4 Int) (arg5 Int) (arg6 Int) ) Bool
  (cfg_init pc __init true))

(define-fun next_main (
                 (pc Loc) (arg1 Int) (arg2 Int) (arg3 Int) (arg4 Int) (arg5 Int) (arg6 Int)
                 (pc1 Loc) (arg1P Int) (arg2P Int) (arg3P Int) (arg4P Int) (arg5P Int) (arg6P Int)
             ) Bool
  (or
    (cfg_trans2 pc f1_0_main_Load pc1 f672_0_main_GE (and (and (and (and (and (and (and (and (> arg4P (- 1)) (> arg2 1)) (> arg6P (- 1))) (<= arg1P arg1)) (> arg1 0)) (> arg1P 0)) (> arg2P 1)) (= 0 arg3P)) (= 2 arg5P)))
    (cfg_trans2 pc f672_0_main_GE pc1 f672_0_main_GE (exists ((x6 Int) (x16 Int)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (> arg5 (- 1)) (> arg4 arg3)) (> arg4 0)) (> x6 1)) (> x16 (- 1))) (< arg5 x6)) (>= arg1 arg1P)) (>= arg2 arg1P)) (> arg1 0)) (> arg2 0)) (> arg1P 0)) (> arg2P 3)) (>= arg2 (+ arg6 2))) (= (+ arg3 1) arg3P)) (= arg4 arg4P)) (= (+ arg5 1) arg5P))))
    (cfg_trans2 pc f672_0_main_GE pc1 f672_0_main_GE (exists ((x17 Int) (x27 Int)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (> arg5 (- 1)) (> arg4 arg3)) (> arg4 0)) (> x17 1)) (> x27 (- 1))) (< arg5 x17)) (<= arg1P arg1)) (<= arg1P arg2)) (> arg1 0)) (> arg2 0)) (> arg1P 0)) (> arg2P 3)) (<= (+ arg6 2) arg2)) (= (+ arg3 1) arg3P)) (= arg4 arg4P)) (= (+ arg5 1) arg5P))))
    (cfg_trans2 pc f672_0_main_GE pc1 f672_0_main_GE (exists ((x28 Int) (x38 Int)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (> arg5 (- 1)) (> arg4 arg3)) (> arg4 0)) (> x28 1)) (> x38 (- 1))) (< arg5 x28)) (<= arg1P arg1)) (<= arg1P arg2)) (> arg1 0)) (> arg2 0)) (> arg1P 0)) (> arg2P 2)) (<= (+ arg6 2) arg2)) (= (+ arg3 1) arg3P)) (= arg4 arg4P)) (= (+ arg5 1) arg5P))))
    (cfg_trans2 pc f672_0_main_GE pc1 f672_0_main_GE (exists ((x39 Int) (x49 Int)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (> arg5 (- 1)) (> arg4 arg3)) (> arg4 0)) (> x39 1)) (> x49 (- 1))) (< arg5 x39)) (<= arg1P arg1)) (<= arg1P arg2)) (> arg1 0)) (> arg2 0)) (> arg1P 0)) (> arg2P 2)) (<= (+ arg6 2) arg2)) (= (+ arg3 1) arg3P)) (= arg4 arg4P)) (= (+ arg5 1) arg5P))))
    (cfg_trans2 pc f672_0_main_GE pc1 f765_0_insert_GT (exists ((x50 Int)) (and (and (and (and (and (and (and (and (and (and (and (> arg5 (- 1)) (> arg4 arg3)) (> arg4 0)) (> x50 1)) (> arg2P (- 1))) (< arg5 x50)) (<= arg1P arg2)) (> arg1 0)) (> arg2 0)) (> arg1P 0)) (<= (+ arg6 2) arg2)) (= arg6 arg3P))))
    (cfg_trans2 pc f765_0_insert_GT pc1 f765_0_insert_GT (and (and (and (and (and (and (<= (+ arg1P 2) arg1) (< arg3 arg2)) (> arg1 2)) (> arg1P 0)) (<= (+ arg3 2) arg1)) (<= (+ arg3P 4) arg1)) (= arg2 arg2P)))
    (cfg_trans2 pc f765_0_insert_GT pc1 f765_0_insert_GT (and (and (and (and (and (and (<= (+ arg1P 2) arg1) (>= arg3 arg2)) (> arg1 2)) (> arg1P 0)) (<= (+ arg3 2) arg1)) (<= (+ arg3P 4) arg1)) (= arg2 arg2P)))
    (cfg_trans2 pc __init pc1 f1_0_main_Load true)
  )
)
