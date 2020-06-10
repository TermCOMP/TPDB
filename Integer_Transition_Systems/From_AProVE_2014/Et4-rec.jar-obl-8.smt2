(declare-sort Loc 0)
(declare-const f1_0_main_Load Loc)
(declare-const f293_0_loop_LT Loc)
(declare-const __init Loc)
(assert (distinct f1_0_main_Load f293_0_loop_LT __init ))

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
    (cfg_trans2 pc f1_0_main_Load pc1 f293_0_loop_LT (and (and (and (and (and (and (> arg1 0) (= 0 arg2)) (= 0 arg1P)) (= 0 arg2P)) (= 0 arg3P)) (= 0 arg4P)) (= 0 arg5P)))
    (cfg_trans2 pc f1_0_main_Load pc1 f293_0_loop_LT (and (and (and (and (and (and (> arg1 0) (> arg1P (- 1))) (= 1 arg2)) (= 0 arg2P)) (= 0 arg3P)) (= 1 arg4P)) (= 1 arg5P)))
    (cfg_trans2 pc f1_0_main_Load pc1 f293_0_loop_LT (and (and (and (and (and (and (> arg3P (- 1)) (> arg1P (- 1))) (> arg1 0)) (= 2 arg2)) (= 0 arg2P)) (= 2 arg4P)) (= 2 arg5P)))
    (cfg_trans2 pc f1_0_main_Load pc1 f293_0_loop_LT (exists ((x10 Int)) (and (and (and (and (and (and (and (> arg1P (- 1)) (> arg2 2)) (> x10 (- 1))) (> arg2P (- 1))) (> arg1 0)) (= (- x10 arg2P) arg3P)) (= arg2 arg4P)) (= 3 arg5P))))
    (cfg_trans2 pc f293_0_loop_LT pc1 f293_0_loop_LT (and (and (and (and (and (and (and (and (and (and (> (+ arg1 1) arg1) (> arg1 (- 1))) (> arg3 0)) (>= arg5 arg4)) (> arg4 (- 1))) (= arg1 arg2)) (= (+ arg1 1) arg1P)) (= (+ arg1 1) arg2P)) (= (- 10 (+ arg1 1)) arg3P)) (= arg4 arg4P)) (= arg5 arg5P)))
    (cfg_trans2 pc f293_0_loop_LT pc1 f293_0_loop_LT (exists ((x19 Int)) (and (and (and (and (and (and (and (and (and (and (and (and (> arg3 0) (>= (+ (+ arg1 1) x19) 1)) (> arg4 (- 1))) (> arg5 (- 1))) (< arg5 arg4)) (> arg1 (- 1))) (> x19 (- 1))) (= arg1 arg2)) (= (+ (+ arg1 1) x19) arg1P)) (= (+ (+ arg1 1) x19) arg2P)) (= (- 10 (+ (+ arg1 1) x19)) arg3P)) (= arg4 arg4P)) (= (+ arg5 1) arg5P))))
    (cfg_trans2 pc __init pc1 f1_0_main_Load true)
  )
)
