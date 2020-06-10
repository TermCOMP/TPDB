(declare-sort Loc 0)
(declare-const f1_0_main_Load Loc)
(declare-const f1_0_main_Load' Loc)
(declare-const f128_0_loop_GE Loc)
(declare-const __init Loc)
(assert (distinct f1_0_main_Load f1_0_main_Load' f128_0_loop_GE __init ))

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
    (cfg_trans2 pc f1_0_main_Load pc1 f1_0_main_Load' (exists ((x7 Int) (x8 Int) (x9 Int)) (and (and (and (and (and (and (> x7 (- 1)) (> arg2 1)) (= (- x8 (* 2 x9)) 0)) (> x8 (- 1))) (> arg1 0)) (= arg1 arg1P)) (= arg2 arg2P))))
    (cfg_trans2 pc f1_0_main_Load' pc1 f128_0_loop_GE (exists ((x12 Int) (x13 Int) (x14 Int)) (and (and (and (and (and (and (and (> x12 (- 1)) (> arg2 1)) (= (- x13 (* 2 x14)) 0)) (> x13 (- 1))) (> arg1 0)) (< (- x13 (* 2 x14)) 2)) (>= (- x13 (* 2 x14)) 0)) (= (- 0 x12) arg1P))))
    (cfg_trans2 pc f128_0_loop_GE pc1 f128_0_loop_GE (and (< arg1 0) (= (- arg1 1) arg1P)))
    (cfg_trans2 pc __init pc1 f1_0_main_Load true)
  )
)
