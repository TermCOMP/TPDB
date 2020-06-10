(declare-sort Loc 0)
(declare-const f1_0_main_Load Loc)
(declare-const f490_0_loop_GT Loc)
(declare-const f564_0_loop_NE Loc)
(declare-const f565_0_loop_NE Loc)
(declare-const f573_0_loop_NE Loc)
(declare-const __init Loc)
(assert (distinct f1_0_main_Load f490_0_loop_GT f564_0_loop_NE f565_0_loop_NE f573_0_loop_NE __init ))

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
    (cfg_trans2 pc f1_0_main_Load pc1 f490_0_loop_GT (and (and (and (and (> arg1 0) (> arg2 (- 1))) (= 20 arg1P)) (= 0 arg2P)) (= arg2 arg3P)))
    (cfg_trans2 pc f490_0_loop_GT pc1 f564_0_loop_NE (and (and (and (and (and (and (and (> arg3 0) (< arg3 arg1)) (> arg1 (- 1))) (< arg2 0)) (= arg1 arg1P)) (= arg2 arg2P)) (= (+ arg3 1) arg3P)) (= (- arg1 2) arg4P)))
    (cfg_trans2 pc f490_0_loop_GT pc1 f564_0_loop_NE (and (and (and (and (and (and (and (> arg3 0) (< arg3 arg1)) (> arg1 (- 1))) (> arg2 0)) (= arg1 arg1P)) (= arg2 arg2P)) (= (+ arg3 1) arg3P)) (= (- arg1 2) arg4P)))
    (cfg_trans2 pc f490_0_loop_GT pc1 f565_0_loop_NE (and (and (and (and (and (and (> arg1 (- 1)) (> arg3 0)) (< arg3 arg1)) (= 0 arg2)) (= arg1 arg1P)) (= (- arg3 1) arg2P)) (= (- arg1 2) arg3P)))
    (cfg_trans2 pc f490_0_loop_GT pc1 f573_0_loop_NE (and (and (and (and (> arg1 0) (= arg1 arg3)) (= arg1 arg1P)) (= (- arg1 1) arg2P)) (= (- arg1 2) arg3P)))
    (cfg_trans2 pc f564_0_loop_NE pc1 f490_0_loop_GT (and (and (and (> arg4 arg3) (= arg1 arg1P)) (= arg2 arg2P)) (= arg3 arg3P)))
    (cfg_trans2 pc f564_0_loop_NE pc1 f490_0_loop_GT (and (and (and (< arg4 arg3) (= arg1 arg1P)) (= arg2 arg2P)) (= arg3 arg3P)))
    (cfg_trans2 pc f565_0_loop_NE pc1 f490_0_loop_GT (and (and (and (> arg3 arg2) (= arg1 arg1P)) (= 0 arg2P)) (= arg2 arg3P)))
    (cfg_trans2 pc f565_0_loop_NE pc1 f490_0_loop_GT (and (and (and (< arg3 arg2) (= arg1 arg1P)) (= 0 arg2P)) (= arg2 arg3P)))
    (cfg_trans2 pc f573_0_loop_NE pc1 f490_0_loop_GT (and (and (and (> arg3 arg2) (= arg1 arg1P)) (= 0 arg2P)) (= arg2 arg3P)))
    (cfg_trans2 pc f573_0_loop_NE pc1 f490_0_loop_GT (and (and (and (< arg3 arg2) (= arg1 arg1P)) (= 0 arg2P)) (= arg2 arg3P)))
    (cfg_trans2 pc f490_0_loop_GT pc1 f490_0_loop_GT (and (and (and (and (and (> arg1 0) (< arg1 3)) (= 0 arg3)) (= arg1 arg1P)) (= 1 arg2P)) (= 1 arg3P)))
    (cfg_trans2 pc f490_0_loop_GT pc1 f490_0_loop_GT (and (and (and (and (> arg1 3) (= 0 arg3)) (= arg1 arg1P)) (= 1 arg2P)) (= 1 arg3P)))
    (cfg_trans2 pc f564_0_loop_NE pc1 f490_0_loop_GT (and (and (and (= arg3 arg4) (= (- arg1 1) arg1P)) (= arg2 arg2P)) (= arg3 arg3P)))
    (cfg_trans2 pc f490_0_loop_GT pc1 f490_0_loop_GT (and (and (and (and (= 0 arg1) (= 0 arg3)) (= 0 arg1P)) (= 0 arg2P)) (= (- 1) arg3P)))
    (cfg_trans2 pc f565_0_loop_NE pc1 f490_0_loop_GT (and (and (and (= arg2 arg3) (= (- arg1 1) arg1P)) (= 0 arg2P)) (= arg2 arg3P)))
    (cfg_trans2 pc f573_0_loop_NE pc1 f490_0_loop_GT (and (and (and (= arg2 arg3) (= (- arg1 1) arg1P)) (= 0 arg2P)) (= arg2 arg3P)))
    (cfg_trans2 pc f490_0_loop_GT pc1 f490_0_loop_GT (and (and (and (and (= 3 arg1) (= 0 arg3)) (= 2 arg1P)) (= 1 arg2P)) (= 1 arg3P)))
    (cfg_trans2 pc __init pc1 f1_0_main_Load true)
  )
)
