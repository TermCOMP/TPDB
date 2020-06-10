(declare-sort Loc 0)
(declare-const f1_0_main_Load Loc)
(declare-const f887_0_loop_aux_GT Loc)
(declare-const f961_0_loop_aux_NE Loc)
(declare-const f962_0_loop_aux_NE Loc)
(declare-const f970_0_loop_aux_NE Loc)
(declare-const __init Loc)
(assert (distinct f1_0_main_Load f887_0_loop_aux_GT f961_0_loop_aux_NE f962_0_loop_aux_NE f970_0_loop_aux_NE __init ))

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
    (cfg_trans2 pc f1_0_main_Load pc1 f887_0_loop_aux_GT (and (and (and (and (and (> (+ arg2 15) arg2) (> arg2 (- 1))) (> arg1 0)) (= 20 arg1P)) (= 0 arg2P)) (= (+ arg2 15) arg3P)))
    (cfg_trans2 pc f887_0_loop_aux_GT pc1 f961_0_loop_aux_NE (and (and (and (and (and (and (and (and (> arg3 0) (< arg3 arg1)) (> arg1 (- 1))) (< arg2 0)) (= arg3 arg1P)) (= arg1 arg2P)) (= arg2 arg3P)) (= (+ arg3 1) arg4P)) (= (- arg1 2) arg5P)))
    (cfg_trans2 pc f887_0_loop_aux_GT pc1 f961_0_loop_aux_NE (and (and (and (and (and (and (and (and (> arg3 0) (< arg3 arg1)) (> arg1 (- 1))) (> arg2 0)) (= arg3 arg1P)) (= arg1 arg2P)) (= arg2 arg3P)) (= (+ arg3 1) arg4P)) (= (- arg1 2) arg5P)))
    (cfg_trans2 pc f887_0_loop_aux_GT pc1 f962_0_loop_aux_NE (and (and (and (and (and (and (and (> arg1 (- 1)) (> arg3 0)) (< arg3 arg1)) (= 0 arg2)) (= arg3 arg1P)) (= arg1 arg2P)) (= (- arg3 1) arg3P)) (= (- arg1 2) arg4P)))
    (cfg_trans2 pc f887_0_loop_aux_GT pc1 f970_0_loop_aux_NE (and (and (and (and (> arg1 0) (= arg1 arg3)) (= arg1 arg1P)) (= (- arg1 1) arg2P)) (= (- arg1 2) arg3P)))
    (cfg_trans2 pc f961_0_loop_aux_NE pc1 f887_0_loop_aux_GT (and (and (and (and (and (and (> arg1 0) (> arg4 1)) (< arg1 arg2)) (> arg5 arg4)) (= arg2 arg1P)) (= arg3 arg2P)) (= arg4 arg3P)))
    (cfg_trans2 pc f961_0_loop_aux_NE pc1 f887_0_loop_aux_GT (and (and (and (and (and (and (> arg1 0) (> arg4 1)) (> arg1 arg2)) (> arg5 arg4)) (= arg2 arg1P)) (= arg3 arg2P)) (= arg4 arg3P)))
    (cfg_trans2 pc f961_0_loop_aux_NE pc1 f887_0_loop_aux_GT (and (and (and (and (and (and (> arg1 0) (> arg4 1)) (< arg1 arg2)) (< arg5 arg4)) (= arg2 arg1P)) (= arg3 arg2P)) (= arg4 arg3P)))
    (cfg_trans2 pc f961_0_loop_aux_NE pc1 f887_0_loop_aux_GT (and (and (and (and (and (and (> arg1 0) (> arg4 1)) (> arg1 arg2)) (< arg5 arg4)) (= arg2 arg1P)) (= arg3 arg2P)) (= arg4 arg3P)))
    (cfg_trans2 pc f962_0_loop_aux_NE pc1 f887_0_loop_aux_GT (and (and (and (and (and (> arg1 0) (> arg2 arg1)) (> arg4 arg3)) (= arg2 arg1P)) (= 0 arg2P)) (= arg3 arg3P)))
    (cfg_trans2 pc f962_0_loop_aux_NE pc1 f887_0_loop_aux_GT (and (and (and (and (and (> arg1 0) (< arg2 arg1)) (> arg4 arg3)) (= arg2 arg1P)) (= 0 arg2P)) (= arg3 arg3P)))
    (cfg_trans2 pc f962_0_loop_aux_NE pc1 f887_0_loop_aux_GT (and (and (and (and (and (> arg1 0) (> arg2 arg1)) (< arg4 arg3)) (= arg2 arg1P)) (= 0 arg2P)) (= arg3 arg3P)))
    (cfg_trans2 pc f962_0_loop_aux_NE pc1 f887_0_loop_aux_GT (and (and (and (and (and (> arg1 0) (< arg2 arg1)) (< arg4 arg3)) (= arg2 arg1P)) (= 0 arg2P)) (= arg3 arg3P)))
    (cfg_trans2 pc f961_0_loop_aux_NE pc1 f887_0_loop_aux_GT (and (and (and (and (and (> arg1 0) (<= arg4 (- arg2 1))) (= arg4 arg5)) (= (- arg2 1) arg1P)) (= arg3 arg2P)) (= arg4 arg3P)))
    (cfg_trans2 pc f962_0_loop_aux_NE pc1 f887_0_loop_aux_GT (and (and (and (and (and (> arg1 0) (<= arg3 (- arg2 1))) (= arg3 arg4)) (= (- arg2 1) arg1P)) (= 0 arg2P)) (= arg3 arg3P)))
    (cfg_trans2 pc f970_0_loop_aux_NE pc1 f887_0_loop_aux_GT (and (and (and (> arg3 arg2) (= arg1 arg1P)) (= 0 arg2P)) (= arg2 arg3P)))
    (cfg_trans2 pc f970_0_loop_aux_NE pc1 f887_0_loop_aux_GT (and (and (and (< arg3 arg2) (= arg1 arg1P)) (= 0 arg2P)) (= arg2 arg3P)))
    (cfg_trans2 pc f887_0_loop_aux_GT pc1 f887_0_loop_aux_GT (and (and (and (and (and (> arg1 0) (< arg1 3)) (= 0 arg3)) (= arg1 arg1P)) (= 1 arg2P)) (= 1 arg3P)))
    (cfg_trans2 pc f887_0_loop_aux_GT pc1 f887_0_loop_aux_GT (and (and (and (and (> arg1 3) (= 0 arg3)) (= arg1 arg1P)) (= 1 arg2P)) (= 1 arg3P)))
    (cfg_trans2 pc f970_0_loop_aux_NE pc1 f887_0_loop_aux_GT (and (and (and (and (and (< arg2 arg1) (<= arg2 (- arg1 1))) (= arg2 arg3)) (= (- arg1 1) arg1P)) (= 0 arg2P)) (= arg2 arg3P)))
    (cfg_trans2 pc f887_0_loop_aux_GT pc1 f887_0_loop_aux_GT (and (and (and (and (= 3 arg1) (= 0 arg3)) (= 2 arg1P)) (= 1 arg2P)) (= 1 arg3P)))
    (cfg_trans2 pc f887_0_loop_aux_GT pc1 f887_0_loop_aux_GT (and (and (and (and (= 0 arg1) (= 0 arg3)) (= 0 arg1P)) (= 0 arg2P)) (= (- 1) arg3P)))
    (cfg_trans2 pc __init pc1 f1_0_main_Load true)
  )
)
