(declare-sort Loc 0)
(declare-const f1_0_main_Load Loc)
(declare-const f1_0_main_Load' Loc)
(declare-const f387_0_lcm_EQ Loc)
(declare-const f454_0_lcm_EQ Loc)
(declare-const f481_0_lcm_EQ Loc)
(declare-const __init Loc)
(assert (distinct f1_0_main_Load f1_0_main_Load' f387_0_lcm_EQ f454_0_lcm_EQ f481_0_lcm_EQ __init ))

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
    (cfg_trans2 pc f1_0_main_Load pc1 f1_0_main_Load' (exists ((x45 Int) (x46 Int) (x47 Int) (x48 Int) (x49 Int) (x50 Int)) (and (and (and (and (and (and (and (and (and (> x45 (- 1)) (> arg2 3)) (> x46 (- 1))) (> x47 (- 1))) (= (- x47 (* 2 x48)) 1)) (= (- x49 (* 2 x50)) 0)) (> x49 (- 1))) (> arg1 0)) (= arg1 arg1P)) (= arg2 arg2P))))
    (cfg_trans2 pc f1_0_main_Load' pc1 f387_0_lcm_EQ (exists ((x53 Int) (x55 Int) (x56 Int) (x57 Int) (x58 Int)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (> arg3P (- 1)) (> arg2 3)) (> x53 (- 1))) (> x55 (- 1))) (= (- x55 (* 2 x56)) 1)) (= (- x57 (* 2 x58)) 0)) (> x57 (- 1))) (> arg1 0)) (>= (- x55 (* 2 x56)) 0)) (< (- x55 (* 2 x56)) 2)) (< (- x57 (* 2 x58)) 2)) (>= (- x57 (* 2 x58)) 0)) (= (- 0 x53) arg1P)) (= (- 0 x53) arg2P)) (= (- 0 x53) arg4P))))
    (cfg_trans2 pc f1_0_main_Load pc1 f1_0_main_Load' (exists ((x61 Int) (x62 Int) (x63 Int) (x64 Int) (x65 Int) (x66 Int)) (and (and (and (and (and (and (and (and (and (> x61 (- 1)) (> arg2 3)) (> x62 (- 1))) (> x63 (- 1))) (= (- x63 (* 2 x64)) 1)) (= (- x65 (* 2 x66)) 1)) (> x65 (- 1))) (> arg1 0)) (= arg1 arg1P)) (= arg2 arg2P))))
    (cfg_trans2 pc f1_0_main_Load' pc1 f454_0_lcm_EQ (exists ((x71 Int) (x72 Int) (x73 Int) (x74 Int)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (> arg1P (- 1)) (> arg2 3)) (> arg2P (- 1))) (> x71 (- 1))) (= (- x71 (* 2 x72)) 1)) (= (- x73 (* 2 x74)) 1)) (> x73 (- 1))) (> arg1 0)) (>= (- x71 (* 2 x72)) 0)) (< (- x71 (* 2 x72)) 2)) (< (- x73 (* 2 x74)) 2)) (>= (- x73 (* 2 x74)) 0)) (= arg1P arg3P)) (= arg2P arg4P)) (= arg1P arg5P)) (= arg2P arg6P))))
    (cfg_trans2 pc f387_0_lcm_EQ pc1 f387_0_lcm_EQ (and (and (and (and (and (and (and (< arg2 1) (< arg1 1)) (> arg3 arg2)) (= arg2 arg4)) (= arg1 arg1P)) (= (+ arg2 arg1) arg2P)) (= arg3 arg3P)) (= (+ arg2 arg1) arg4P)))
    (cfg_trans2 pc f1_0_main_Load pc1 f1_0_main_Load' (exists ((x77 Int) (x78 Int) (x79 Int) (x80 Int) (x81 Int) (x82 Int)) (and (and (and (and (and (and (and (and (and (> x77 (- 1)) (> arg2 3)) (> x78 (- 1))) (> x79 (- 1))) (= (- x79 (* 2 x80)) 0)) (= (- x81 (* 2 x82)) 1)) (> x81 (- 1))) (> arg1 0)) (= arg1 arg1P)) (= arg2 arg2P))))
    (cfg_trans2 pc f1_0_main_Load' pc1 f481_0_lcm_EQ (exists ((x85 Int) (x87 Int) (x88 Int) (x89 Int) (x90 Int)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (> x85 (- 1)) (> arg2 3)) (> arg2P (- 1))) (> x87 (- 1))) (= (- x87 (* 2 x88)) 0)) (= (- x89 (* 2 x90)) 1)) (> x89 (- 1))) (> arg1 0)) (>= (- x87 (* 2 x88)) 0)) (< (- x87 (* 2 x88)) 2)) (< (- x89 (* 2 x90)) 2)) (>= (- x89 (* 2 x90)) 0)) (= (- 0 x85) arg1P)) (= (- 0 x85) arg3P)) (= arg2P arg4P)) (= (- 0 x85) arg5P)) (= arg2P arg6P))))
    (cfg_trans2 pc f1_0_main_Load pc1 f1_0_main_Load' (exists ((x93 Int) (x94 Int) (x95 Int) (x96 Int) (x97 Int) (x98 Int)) (and (and (and (and (and (and (and (and (and (> x93 (- 1)) (> arg2 3)) (> x94 (- 1))) (> x95 (- 1))) (= (- x95 (* 2 x96)) 0)) (= (- x97 (* 2 x98)) 0)) (> x97 (- 1))) (> arg1 0)) (= arg1 arg1P)) (= arg2 arg2P))))
    (cfg_trans2 pc f1_0_main_Load' pc1 f481_0_lcm_EQ (exists ((x101 Int) (x102 Int) (x103 Int) (x104 Int) (x105 Int) (x106 Int)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (> x101 (- 1)) (> arg2 3)) (> x102 (- 1))) (> x103 (- 1))) (= (- x103 (* 2 x104)) 0)) (= (- x105 (* 2 x106)) 0)) (> x105 (- 1))) (> arg1 0)) (>= (- x103 (* 2 x104)) 0)) (< (- x103 (* 2 x104)) 2)) (< (- x105 (* 2 x106)) 2)) (>= (- x105 (* 2 x106)) 0)) (= (- 0 x101) arg1P)) (= (- 0 x102) arg2P)) (= (- 0 x101) arg3P)) (= (- 0 x102) arg4P)) (= (- 0 x101) arg5P)) (= (- 0 x102) arg6P))))
    (cfg_trans2 pc f454_0_lcm_EQ pc1 f454_0_lcm_EQ (and (and (and (and (and (and (and (and (and (and (> arg3 (- 1)) (> arg1 (- 1))) (> arg4 arg3)) (= arg3 arg5)) (= arg4 arg6)) (= arg1 arg1P)) (= arg2 arg2P)) (= (+ arg3 arg1) arg3P)) (= arg4 arg4P)) (= (+ arg3 arg1) arg5P)) (= arg4 arg6P)))
    (cfg_trans2 pc f454_0_lcm_EQ pc1 f454_0_lcm_EQ (and (and (and (and (and (and (and (and (and (and (> arg4 (- 1)) (> arg2 (- 1))) (< arg4 arg3)) (= arg3 arg5)) (= arg4 arg6)) (= arg1 arg1P)) (= arg2 arg2P)) (= arg3 arg3P)) (= (+ arg4 arg2) arg4P)) (= arg3 arg5P)) (= (+ arg4 arg2) arg6P)))
    (cfg_trans2 pc f481_0_lcm_EQ pc1 f481_0_lcm_EQ (and (and (and (and (and (and (and (and (and (and (< arg3 1) (< arg1 1)) (> arg4 arg3)) (= arg3 arg5)) (= arg4 arg6)) (= arg1 arg1P)) (= arg2 arg2P)) (= (+ arg3 arg1) arg3P)) (= arg4 arg4P)) (= (+ arg3 arg1) arg5P)) (= arg4 arg6P)))
    (cfg_trans2 pc f481_0_lcm_EQ pc1 f481_0_lcm_EQ (and (and (and (and (and (and (and (and (< arg4 arg3) (= arg3 arg5)) (= arg4 arg6)) (= arg1 arg1P)) (= arg2 arg2P)) (= arg3 arg3P)) (= (+ arg4 arg2) arg4P)) (= arg3 arg5P)) (= (+ arg4 arg2) arg6P)))
    (cfg_trans2 pc __init pc1 f1_0_main_Load true)
  )
)
