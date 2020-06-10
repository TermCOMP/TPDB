(declare-sort Loc 0)
(declare-const f1_0_main_Load Loc)
(declare-const f1_0_main_Load' Loc)
(declare-const f131_0_loop_LT Loc)
(declare-const f130_0_loop_GT Loc)
(declare-const f163_0_loop_GE Loc)
(declare-const __init Loc)
(assert (distinct f1_0_main_Load f1_0_main_Load' f131_0_loop_LT f130_0_loop_GT f163_0_loop_GE __init ))

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
    (cfg_trans2 pc f1_0_main_Load pc1 f1_0_main_Load' (exists ((x14 Int) (x15 Int) (x16 Int)) (and (and (and (and (and (and (> x14 (- 1)) (> arg2 1)) (= (- x15 (* 2 x16)) 0)) (> x15 (- 1))) (> arg1 0)) (= arg1 arg1P)) (= arg2 arg2P))))
    (cfg_trans2 pc f1_0_main_Load' pc1 f131_0_loop_LT (exists ((x19 Int) (x20 Int) (x21 Int)) (and (and (and (and (and (and (and (> x19 (- 1)) (> arg2 1)) (= (- x20 (* 2 x21)) 0)) (> x20 (- 1))) (> arg1 0)) (< (- x20 (* 2 x21)) 2)) (>= (- x20 (* 2 x21)) 0)) (= (- 0 x19) arg1P))))
    (cfg_trans2 pc f1_0_main_Load pc1 f1_0_main_Load' (exists ((x24 Int) (x25 Int) (x26 Int)) (and (and (and (and (and (and (> x24 (- 1)) (> arg2 1)) (= (- x25 (* 2 x26)) 1)) (> x25 (- 1))) (> arg1 0)) (= arg1 arg1P)) (= arg2 arg2P))))
    (cfg_trans2 pc f1_0_main_Load' pc1 f130_0_loop_GT (exists ((x30 Int) (x31 Int)) (and (and (and (and (and (and (> arg1P (- 1)) (> arg2 1)) (= (- x30 (* 2 x31)) 1)) (> x30 (- 1))) (> arg1 0)) (< (- x30 (* 2 x31)) 2)) (>= (- x30 (* 2 x31)) 0))))
    (cfg_trans2 pc f130_0_loop_GT pc1 f163_0_loop_GE (and (= 0 arg1) (= 0 arg1P)))
    (cfg_trans2 pc f130_0_loop_GT pc1 f163_0_loop_GE (and (and (> arg1 0) (< arg1 6)) (= (- arg1 1) arg1P)))
    (cfg_trans2 pc f131_0_loop_LT pc1 f163_0_loop_GE (and (and (and (< arg1 1) (< arg1 6)) (> arg1 (- 6))) (= arg1 arg1P)))
    (cfg_trans2 pc f163_0_loop_GE pc1 f130_0_loop_GT (and (> arg1 (- 1)) (= arg1 arg1P)))
    (cfg_trans2 pc f163_0_loop_GE pc1 f131_0_loop_LT (and (< arg1 0) (= (+ arg1 1) arg1P)))
    (cfg_trans2 pc __init pc1 f1_0_main_Load true)
  )
)
