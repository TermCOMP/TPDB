(declare-sort Loc 0)
(declare-const f1_0_main_Load Loc)
(declare-const f2800_0_random_ArrayAccess Loc)
(declare-const f1260_0_create_Return Loc)
(declare-const f2894_0_extendMatchingSubstitution_InvokeMethod Loc)
(declare-const f1262_0_create_Return Loc)
(declare-const f3568_0_extendMatchingSubstitution_CheckCast Loc)
(declare-const f648_0_create_GT Loc)
(declare-const f2576_0_create_GE Loc)
(declare-const f3684_0_extendMatchingSubstitution_EQ Loc)
(declare-const f3952_0_extendMatchingSubstitution_NULL Loc)
(declare-const __init Loc)
(assert (distinct f1_0_main_Load f2800_0_random_ArrayAccess f1260_0_create_Return f2894_0_extendMatchingSubstitution_InvokeMethod f1262_0_create_Return f3568_0_extendMatchingSubstitution_CheckCast f648_0_create_GT f2576_0_create_GE f3684_0_extendMatchingSubstitution_EQ f3952_0_extendMatchingSubstitution_NULL __init ))

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

(define-fun init_main ( (pc Loc) (arg1 Int) (arg2 Int) (arg3 Int) (arg4 Int) (arg5 Int) (arg6 Int) (arg7 Int) ) Bool
  (cfg_init pc __init true))

(define-fun next_main (
                 (pc Loc) (arg1 Int) (arg2 Int) (arg3 Int) (arg4 Int) (arg5 Int) (arg6 Int) (arg7 Int)
                 (pc1 Loc) (arg1P Int) (arg2P Int) (arg3P Int) (arg4P Int) (arg5P Int) (arg6P Int) (arg7P Int)
             ) Bool
  (or
    (cfg_trans2 pc f1_0_main_Load pc1 f2800_0_random_ArrayAccess (exists ((x6 Int)) (and (and (and (and (> x6 (- 1)) (> arg2 0)) (> arg1 0)) (> arg1P 3)) (= arg2 arg2P))))
    (cfg_trans2 pc f1260_0_create_Return pc1 f2800_0_random_ArrayAccess (and (and (and (and (and (and (and (<= arg1P arg2) (> arg1 0)) (> arg2 3)) (> arg1P 3)) (<= (+ arg5 5) arg2)) (<= (+ arg4 5) arg2)) (= arg4 arg3P)) (= arg5 arg4P)))
    (cfg_trans2 pc f1_0_main_Load pc1 f2894_0_extendMatchingSubstitution_InvokeMethod (exists ((x18 Int) (x19 Int) (x20 Int)) (and (and (and (and (and (and (and (> x18 (- 1)) (> arg2 0)) (> x19 0)) (< x19 arg2)) (> x20 (- 1))) (<= arg1P arg1)) (> arg1 0)) (> arg1P 0))))
    (cfg_trans2 pc f1262_0_create_Return pc1 f2894_0_extendMatchingSubstitution_InvokeMethod (and (and (<= arg1P arg1) (> arg1 0)) (> arg1P 0)))
    (cfg_trans2 pc f2800_0_random_ArrayAccess pc1 f3568_0_extendMatchingSubstitution_CheckCast (exists ((x26 Int) (x34 Int)) (and (and (and (and (and (and (and (and (and (and (and (and (and (< x26 arg2) (> x26 0)) (> arg2 0)) (> x34 (- 1))) (> arg4P 1)) (<= arg1P arg1)) (<= (+ arg2P 3) arg1)) (<= (+ arg3P 3) arg1)) (> arg1 3)) (> arg1P 3)) (> arg2P 0)) (> arg3P 0)) (<= (+ arg4 5) arg1)) (<= (+ arg3 5) arg1))))
    (cfg_trans2 pc f2800_0_random_ArrayAccess pc1 f3568_0_extendMatchingSubstitution_CheckCast (exists ((x36 Int) (x44 Int)) (and (and (and (and (and (and (and (and (and (and (and (< x36 arg2) (> x36 0)) (> arg2 0)) (> x44 (- 1))) (> arg4P 1)) (<= arg1P arg1)) (> arg1 3)) (> arg1P 3)) (> arg2P 3)) (> arg3P 3)) (<= (+ arg4 5) arg1)) (<= (+ arg3 5) arg1))))
    (cfg_trans2 pc f1_0_main_Load pc1 f648_0_create_GT (and (and (and (and (> arg1P (- 1)) (> arg2 0)) (> arg1 0)) (= arg2 arg2P)) (= 1 arg3P)))
    (cfg_trans2 pc f1_0_main_Load pc1 f648_0_create_GT (exists ((x52 Int) (x50 Int)) (and (and (and (and (and (and (and (> x52 (- 1)) (> arg2 0)) (> x50 0)) (< x50 arg2)) (> arg1P (- 1))) (> arg1 0)) (= arg2 arg2P)) (= (+ x50 1) arg3P))))
    (cfg_trans2 pc f2800_0_random_ArrayAccess pc1 f648_0_create_GT (exists ((x54 Int)) (and (and (and (and (and (and (and (and (< x54 arg2) (> x54 0)) (> arg2 0)) (> arg1P (- 1))) (> arg1 3)) (<= (+ arg4 5) arg1)) (<= (+ arg3 5) arg1)) (= arg2 arg2P)) (= (+ x54 1) arg3P))))
    (cfg_trans2 pc f648_0_create_GT pc1 f2576_0_create_GE (and (and (and (and (and (and (and (and (> arg2 (- 1)) (> arg1 1)) (> arg3 0)) (< arg3 arg2)) (> arg3P (- 1))) (= arg1 arg1P)) (= 0 arg2P)) (= arg2 arg4P)) (= (+ arg3 1) arg5P)))
    (cfg_trans2 pc f2576_0_create_GE pc1 f648_0_create_GT (and (and (and (and (and (and (and (> arg3 arg2) (> arg1 1)) (> arg3 0)) (> arg5 1)) (< (- arg1 1) arg1)) (= (- arg1 1) arg1P)) (= arg4 arg2P)) (= arg5 arg3P)))
    (cfg_trans2 pc f2576_0_create_GE pc1 f2576_0_create_GE (and (and (and (and (and (and (and (and (> arg3 arg2) (> arg1 1)) (> arg3 0)) (> arg5 1)) (< (- arg1 1) arg1)) (= arg1 arg1P)) (= (+ arg2 1) arg2P)) (= arg3 arg3P)) (= arg4 arg4P)))
    (cfg_trans2 pc f3568_0_extendMatchingSubstitution_CheckCast pc1 f3684_0_extendMatchingSubstitution_EQ (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (<= arg1P arg1) (> arg4 1)) (<= arg2P arg2)) (<= arg2P arg3)) (<= (+ arg6P 1) arg1)) (<= (+ arg7P 1) arg2)) (<= (+ arg7P 1) arg3)) (> arg1 0)) (> arg2 0)) (> arg3 0)) (> arg1P 0)) (> arg2P 0)) (> arg6P (- 1))) (> arg7P (- 1))) (= 0 arg3P)) (= arg4 arg5P)))
    (cfg_trans2 pc f3568_0_extendMatchingSubstitution_CheckCast pc1 f3684_0_extendMatchingSubstitution_EQ (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (<= arg1P arg1) (> arg4 1)) (<= arg2P arg2)) (<= arg2P arg3)) (<= (+ arg6P 1) arg1)) (<= (+ arg7P 1) arg2)) (<= (+ arg7P 1) arg3)) (> arg1 0)) (> arg2 0)) (> arg3 0)) (> arg1P 0)) (> arg2P 0)) (> arg6P (- 1))) (> arg7P (- 1))) (= 1 arg3P)) (= arg4 arg5P)))
    (cfg_trans2 pc f3684_0_extendMatchingSubstitution_EQ pc1 f3952_0_extendMatchingSubstitution_NULL (and (and (and (and (and (and (and (and (and (and (and (and (<= (+ arg1P 1) arg2) (<= arg1P arg7)) (<= (+ arg2P 1) arg1)) (<= arg2P arg6)) (> arg1 0)) (> arg2 0)) (> arg6 (- 1))) (> arg7 (- 1))) (> arg1P (- 1))) (> arg2P (- 1))) (= 1 arg3)) (= arg4 arg3P)) (= arg5 arg4P)))
    (cfg_trans2 pc f3952_0_extendMatchingSubstitution_NULL pc1 f3568_0_extendMatchingSubstitution_CheckCast (and (and (and (and (and (and (and (and (and (and (and (<= (+ arg1P 2) arg2) (> arg4 1)) (<= (+ arg2P 2) arg1)) (<= (+ arg2P 3) arg2)) (<= (+ arg3P 2) arg1)) (<= (+ arg3P 3) arg2)) (> arg1 1)) (> arg2 2)) (> arg1P 0)) (> arg2P (- 1))) (> arg3P (- 1))) (= arg4 arg4P)))
    (cfg_trans2 pc f3952_0_extendMatchingSubstitution_NULL pc1 f3568_0_extendMatchingSubstitution_CheckCast (and (and (and (and (and (and (and (and (and (<= (+ arg1P 2) arg2) (> arg4 1)) (<= (+ arg2P 2) arg1)) (<= (+ arg3P 2) arg1)) (> arg1 2)) (> arg2 2)) (> arg1P 0)) (> arg2P 0)) (> arg3P 0)) (= arg4 arg4P)))
    (cfg_trans2 pc f3952_0_extendMatchingSubstitution_NULL pc1 f3952_0_extendMatchingSubstitution_NULL (and (and (and (and (and (and (and (and (<= (+ arg1P 2) arg1) (> arg4 1)) (<= (+ arg2P 2) arg2)) (> arg1 2)) (> arg2 2)) (> arg1P (- 1))) (> arg2P (- 1))) (= arg3 arg3P)) (= arg4 arg4P)))
    (cfg_trans2 pc f3952_0_extendMatchingSubstitution_NULL pc1 f3952_0_extendMatchingSubstitution_NULL (and (and (and (and (and (and (and (and (<= (+ arg1P 2) arg1) (> arg4 1)) (<= (+ arg2P 2) arg2)) (> arg1 1)) (> arg2 2)) (> arg1P (- 1))) (> arg2P (- 1))) (= arg3 arg3P)) (= arg4 arg4P)))
    (cfg_trans2 pc __init pc1 f1_0_main_Load true)
  )
)
