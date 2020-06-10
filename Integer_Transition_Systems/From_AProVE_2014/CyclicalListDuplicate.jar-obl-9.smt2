(declare-sort Loc 0)
(declare-const f1_0_main_Load Loc)
(declare-const f221_0_generate_GE Loc)
(declare-const f348_0_duplicate_EQ Loc)
(declare-const __init Loc)
(assert (distinct f1_0_main_Load f221_0_generate_GE f348_0_duplicate_EQ __init ))

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
    (cfg_trans2 pc f1_0_main_Load pc1 f221_0_generate_GE (and (and (and (and (and (and (and (<= arg1P arg1) (> arg2 (- 1))) (> arg1 0)) (> arg1P 0)) (= 0 arg2P)) (= (- arg2 1) arg3P)) (= 0 arg4P)) (= arg2 arg5P)))
    (cfg_trans2 pc f221_0_generate_GE pc1 f221_0_generate_GE (and (and (and (and (and (and (and (> arg5 (- 1)) (> arg3 arg2)) (<= arg1P arg1)) (> arg1 0)) (> arg1P 0)) (= (+ arg2 1) arg2P)) (= (- arg5 1) arg3P)) (= arg5 arg5P)))
    (cfg_trans2 pc f221_0_generate_GE pc1 f348_0_duplicate_EQ (and (and (and (and (<= arg3 arg2) (> arg4 0)) (> arg2P arg4)) (> arg1 0)) (= 1 arg1P)))
    (cfg_trans2 pc f221_0_generate_GE pc1 f348_0_duplicate_EQ (and (and (and (> arg1 0) (<= arg3 arg2)) (= 1 arg1P)) (= 1 arg2P)))
    (cfg_trans2 pc f348_0_duplicate_EQ pc1 f348_0_duplicate_EQ (exists ((x23 Int)) (and (and (and (and (and (> arg2 (- 1)) (> x23 0)) (< x23 arg2)) (< x23 arg2P)) (= 0 arg1)) (= 1 arg1P))))
    (cfg_trans2 pc f348_0_duplicate_EQ pc1 f348_0_duplicate_EQ (exists ((x34 Int)) (and (and (and (and (< x34 arg2) (> arg2 (- 1))) (= 0 arg1)) (= 1 arg1P)) (= 1 arg2P))))
    (cfg_trans2 pc f348_0_duplicate_EQ pc1 f348_0_duplicate_EQ (exists ((x27 Int) (x29 Int) (x28 Int)) (and (and (and (and (and (and (and (> arg2 (- 1)) (> x27 0)) (< x27 arg2)) (> x29 x27)) (> x28 x27)) (= 1 arg1)) (= 0 arg1P)) (= 0 arg2P))))
    (cfg_trans2 pc f348_0_duplicate_EQ pc1 f348_0_duplicate_EQ (exists ((x37 Int)) (and (and (and (and (< x37 arg2) (> arg2 (- 1))) (= 1 arg1)) (= 0 arg1P)) (= 2 arg2P))))
    (cfg_trans2 pc __init pc1 f1_0_main_Load true)
  )
)
