(declare-sort Loc 0)
(declare-const f1_0_main_Load Loc)
(declare-const f254_0_main_GE Loc)
(declare-const f494_0_main_GE Loc)
(declare-const f510_0_main_GE Loc)
(declare-const f609_0_main_GE Loc)
(declare-const __init Loc)
(assert (distinct f1_0_main_Load f254_0_main_GE f494_0_main_GE f510_0_main_GE f609_0_main_GE __init ))

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
    (cfg_trans2 pc f1_0_main_Load pc1 f254_0_main_GE (and (and (and (and (and (and (<= arg1P arg1) (> arg2 (- 1))) (> arg1 0)) (> arg1P 0)) (= 0 arg2P)) (= (- arg2 1) arg3P)) (= arg2 arg4P)))
    (cfg_trans2 pc f254_0_main_GE pc1 f254_0_main_GE (and (and (and (and (and (and (and (and (> arg3 arg2) (< arg2 arg4)) (> arg4 (- 1))) (<= arg1P arg1)) (> arg1 0)) (> arg1P 0)) (= (+ arg2 1) arg2P)) (= (- arg4 1) arg3P)) (= arg4 arg4P)))
    (cfg_trans2 pc f254_0_main_GE pc1 f494_0_main_GE (and (and (and (and (and (and (and (<= arg3 arg2) (> arg4 (- 1))) (>= arg1 arg1P)) (> arg1 0)) (> arg1P 0)) (= 0 arg2P)) (= (- arg4 1) arg3P)) (= arg4 arg4P)))
    (cfg_trans2 pc f494_0_main_GE pc1 f510_0_main_GE (and (and (and (and (and (and (and (> arg2 (- 1)) (> arg3 arg2)) (<= arg2P arg1)) (> arg1 0)) (> arg2P 0)) (= arg2 arg1P)) (= (+ arg2 1) arg3P)) (= arg4 arg4P)))
    (cfg_trans2 pc f510_0_main_GE pc1 f494_0_main_GE (and (and (and (and (and (and (and (> arg4 (- 1)) (<= arg4 arg3)) (<= arg1P arg2)) (> arg2 0)) (> arg1P 0)) (= (+ arg1 1) arg2P)) (= (- arg4 1) arg3P)) (= arg4 arg4P)))
    (cfg_trans2 pc f494_0_main_GE pc1 f609_0_main_GE (and (and (and (and (and (and (and (<= arg3 arg2) (> arg4 (- 1))) (<= arg1P arg1)) (> arg1 0)) (> arg1P 0)) (= 0 arg2P)) (= (- arg4 1) arg3P)) (= arg4 arg4P)))
    (cfg_trans2 pc f609_0_main_GE pc1 f609_0_main_GE (and (and (and (and (and (and (and (> arg4 (- 1)) (> arg3 arg2)) (<= arg1P arg1)) (> arg1 0)) (> arg1P 0)) (= (+ arg2 1) arg2P)) (= (- arg4 1) arg3P)) (= arg4 arg4P)))
    (cfg_trans2 pc f510_0_main_GE pc1 f510_0_main_GE (exists ((x39 Int) (x38 Int)) (and (and (and (and (and (and (and (and (> arg4 arg3) (> arg4 arg1)) (>= x39 x38)) (<= arg2P arg2)) (> arg2 0)) (> arg2P 0)) (= arg1 arg1P)) (= (+ arg3 1) arg3P)) (= arg4 arg4P))))
    (cfg_trans2 pc f510_0_main_GE pc1 f510_0_main_GE (exists ((x46 Int) (x45 Int)) (and (and (and (and (and (and (and (and (> arg4 arg3) (> arg4 arg1)) (< x46 x45)) (<= arg2P arg2)) (> arg2 0)) (> arg2P 0)) (= arg1 arg1P)) (= (+ arg3 1) arg3P)) (= arg4 arg4P))))
    (cfg_trans2 pc __init pc1 f1_0_main_Load true)
  )
)
