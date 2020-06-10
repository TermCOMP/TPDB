(declare-sort Loc 0)
(declare-const f1_0_main_Load Loc)
(declare-const f257_0_loop_GT Loc)
(declare-const f257_0_loop_GT' Loc)
(declare-const __init Loc)
(assert (distinct f1_0_main_Load f257_0_loop_GT f257_0_loop_GT' __init ))

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
    (cfg_trans2 pc f1_0_main_Load pc1 f257_0_loop_GT (and (and (and (and (and (> arg4P (- 1)) (> arg2 2)) (> arg2P (- 1))) (> arg1P (- 1))) (> arg1 0)) (= 0 arg3P)))
    (cfg_trans2 pc f257_0_loop_GT pc1 f257_0_loop_GT' (exists ((x20 Int)) (and (and (and (and (and (and (>= arg2 x20) (> arg4 0)) (= 1 arg3)) (= arg1 arg1P)) (= arg2 arg2P)) (= 1 arg3P)) (= arg4 arg4P))))
    (cfg_trans2 pc f257_0_loop_GT' pc1 f257_0_loop_GT (and (and (and (and (and (and (and (> arg4 0) (>= arg2 arg1P)) (< (- arg2 (* 2 arg1P)) 2)) (>= (- arg2 (* 2 arg1P)) 0)) (= 1 arg3)) (= (* 2 arg1) arg2P)) (= 0 arg3P)) (= arg4 arg4P)))
    (cfg_trans2 pc f257_0_loop_GT pc1 f257_0_loop_GT' (exists ((x31 Int)) (and (and (and (and (and (and (> arg4 0) (>= arg1 x31)) (= 0 arg3)) (= arg1 arg1P)) (= arg2 arg2P)) (= 0 arg3P)) (= arg4 arg4P))))
    (cfg_trans2 pc f257_0_loop_GT' pc1 f257_0_loop_GT (and (and (and (and (and (and (and (>= arg1 arg4P) (> arg4 0)) (< (- arg1 (* 2 arg4P)) 2)) (>= (- arg1 (* 2 arg4P)) 0)) (= 0 arg3)) (= (* 2 arg4) arg1P)) (= arg2 arg2P)) (= 1 arg3P)))
    (cfg_trans2 pc f257_0_loop_GT pc1 f257_0_loop_GT' (exists ((x41 Int)) (and (and (and (and (and (and (and (>= arg2 x41) (> arg1 0)) (= 1 arg3)) (= 0 arg4)) (= arg1 arg1P)) (= arg2 arg2P)) (= 1 arg3P)) (= 0 arg4P))))
    (cfg_trans2 pc f257_0_loop_GT' pc1 f257_0_loop_GT (and (and (and (and (and (and (and (and (> arg1 0) (>= arg2 arg1P)) (< (- arg2 (* 2 arg1P)) 2)) (>= (- arg2 (* 2 arg1P)) 0)) (= 1 arg3)) (= 0 arg4)) (= (* 2 arg1) arg2P)) (= 0 arg3P)) (= 0 arg4P)))
    (cfg_trans2 pc f257_0_loop_GT pc1 f257_0_loop_GT' (exists ((x51 Int)) (and (and (and (and (and (and (and (> arg1 0) (> arg1 x51)) (= 0 arg3)) (= 0 arg4)) (= arg1 arg1P)) (= arg2 arg2P)) (= 0 arg3P)) (= 0 arg4P))))
    (cfg_trans2 pc f257_0_loop_GT' pc1 f257_0_loop_GT (and (and (and (and (and (and (and (and (> arg1 arg4P) (> arg1 0)) (< (- arg1 (* 2 arg4P)) 2)) (>= (- arg1 (* 2 arg4P)) 0)) (= 0 arg3)) (= 0 arg4)) (= 0 arg1P)) (= arg2 arg2P)) (= 1 arg3P)))
    (cfg_trans2 pc f257_0_loop_GT pc1 f257_0_loop_GT' (exists ((x61 Int)) (and (and (and (and (and (and (and (and (> arg2 0) (> arg2 x61)) (= 0 arg1)) (= 1 arg3)) (= 0 arg4)) (= 0 arg1P)) (= arg2 arg2P)) (= 1 arg3P)) (= 0 arg4P))))
    (cfg_trans2 pc f257_0_loop_GT' pc1 f257_0_loop_GT (and (and (and (and (and (and (and (and (and (> arg2 arg1P) (> arg2 0)) (< (- arg2 (* 2 arg1P)) 2)) (>= (- arg2 (* 2 arg1P)) 0)) (= 0 arg1)) (= 1 arg3)) (= 0 arg4)) (= 0 arg2P)) (= 0 arg3P)) (= 0 arg4P)))
    (cfg_trans2 pc f257_0_loop_GT pc1 f257_0_loop_GT (and (and (and (and (and (and (and (> arg2 0) (= 0 arg1)) (= 0 arg3)) (= 0 arg4)) (= 0 arg1P)) (= arg2 arg2P)) (= 1 arg3P)) (= 0 arg4P)))
    (cfg_trans2 pc __init pc1 f1_0_main_Load true)
  )
)
