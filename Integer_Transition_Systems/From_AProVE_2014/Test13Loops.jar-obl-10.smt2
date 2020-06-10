(declare-sort Loc 0)
(declare-const f1_0_main_New Loc)
(declare-const f216_0_main_GE Loc)
(declare-const f339_0_length_Load Loc)
(declare-const f340_0_length_FieldAccess Loc)
(declare-const __init Loc)
(assert (distinct f1_0_main_New f216_0_main_GE f339_0_length_Load f340_0_length_FieldAccess __init ))

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
    (cfg_trans2 pc f1_0_main_New pc1 f216_0_main_GE (and (and (and (and (and (and (and (and (and (<= arg1P arg1) (> arg2 (- 1))) (<= (- arg2P 1) arg1)) (> arg1 0)) (> arg1P 0)) (> arg2P 1)) (= 0 arg3P)) (= (+ arg2 1) arg4P)) (= 0 arg5P)) (= arg2 arg6P)))
    (cfg_trans2 pc f216_0_main_GE pc1 f216_0_main_GE (and (and (and (and (and (and (and (and (and (and (and (and (> arg4 arg3) (> arg5 0)) (> arg6 (- 1))) (< arg5 arg5P)) (>= arg1 arg1P)) (>= arg2 arg1P)) (> arg1 0)) (> arg2 0)) (> arg1P 0)) (> arg2P 0)) (= (+ arg3 1) arg3P)) (= (+ arg6 1) arg4P)) (= arg6 arg6P)))
    (cfg_trans2 pc f216_0_main_GE pc1 f216_0_main_GE (and (and (and (and (and (and (and (and (and (and (and (and (and (> arg6 (- 1)) (> arg4 arg3)) (<= arg1P arg1)) (<= (+ arg1P 1) arg2)) (<= (- arg2P 3) arg1)) (<= (- arg2P 2) arg2)) (> arg1 0)) (> arg2 1)) (> arg1P 0)) (> arg2P 3)) (= (+ arg3 1) arg3P)) (= (+ arg6 1) arg4P)) (= 1 arg5P)) (= arg6 arg6P)))
    (cfg_trans2 pc f339_0_length_Load pc1 f339_0_length_Load (and (and (and (and (<= arg1P arg1) (> arg1 0)) (> arg1P 0)) (= (+ arg2 1) arg2P)) (= arg3 arg3P)))
    (cfg_trans2 pc f216_0_main_GE pc1 f339_0_length_Load (and (and (and (and (and (and (and (<= arg1P arg1) (<= arg4 arg3)) (<= (+ arg1P 1) arg2)) (> arg1 0)) (> arg2 1)) (> arg1P 0)) (= 1 arg2P)) (= arg6 arg3P)))
    (cfg_trans2 pc f216_0_main_GE pc1 f340_0_length_FieldAccess (and (and (and (and (and (and (and (and (and (> arg5 0) (<= arg4 arg3)) (> arg1 0)) (> arg2 0)) (> arg1P 0)) (= arg5 arg2P)) (= 0 arg3P)) (= 0 arg4P)) (= 0 arg5P)) (= arg5 arg6P)))
    (cfg_trans2 pc f340_0_length_FieldAccess pc1 f340_0_length_FieldAccess (and (and (and (and (and (and (and (and (and (and (> arg5 0) (> arg4 0)) (> arg5P arg5)) (< arg5 arg3)) (> arg3 0)) (< arg4P arg4)) (< arg5 arg2)) (> arg1 2)) (> arg1P 0)) (= arg2 arg2P)) (= arg3 arg3P)))
    (cfg_trans2 pc f340_0_length_FieldAccess pc1 f340_0_length_FieldAccess (exists ((x54 Int)) (and (and (and (and (and (and (and (and (and (< arg6P arg2) (> arg2 (- 1))) (> arg3 (- 1))) (< arg4P arg3)) (> arg1 2)) (> arg1P 0)) (>= arg1 (+ x54 3))) (= arg2 arg6)) (= 0 arg3P)) (= 1 arg5P))))
    (cfg_trans2 pc __init pc1 f1_0_main_New true)
  )
)
