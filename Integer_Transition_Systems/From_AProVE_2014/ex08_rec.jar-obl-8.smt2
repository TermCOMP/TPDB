(declare-sort Loc 0)
(declare-const f1_0_main_ConstantStackPush Loc)
(declare-const f99_0_loop_aux_LE Loc)
(declare-const f128_0_loop_aux_EQ Loc)
(declare-const __init Loc)
(assert (distinct f1_0_main_ConstantStackPush f99_0_loop_aux_LE f128_0_loop_aux_EQ __init ))

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

(define-fun init_main ( (pc Loc) (arg1 Int) (arg2 Int) (arg3 Int) ) Bool
  (cfg_init pc __init true))

(define-fun next_main (
                 (pc Loc) (arg1 Int) (arg2 Int) (arg3 Int)
                 (pc1 Loc) (arg1P Int) (arg2P Int) (arg3P Int)
             ) Bool
  (or
    (cfg_trans2 pc f1_0_main_ConstantStackPush pc1 f99_0_loop_aux_LE (and (and (and (and (> arg1 0) (> arg2 (- 1))) (= 0 arg1P)) (= 0 arg2P)) (= (* 10 arg2) arg3P)))
    (cfg_trans2 pc f99_0_loop_aux_LE pc1 f128_0_loop_aux_EQ (and (and (and (and (< arg3 10) (> arg3 1)) (= arg1 arg1P)) (= arg3 arg2P)) (= arg2 arg3P)))
    (cfg_trans2 pc f99_0_loop_aux_LE pc1 f128_0_loop_aux_EQ (and (and (and (> arg3 10) (= arg1 arg1P)) (= arg3 arg2P)) (= arg2 arg3P)))
    (cfg_trans2 pc f128_0_loop_aux_EQ pc1 f99_0_loop_aux_LE (and (and (and (and (and (< arg1 2) (> arg2 1)) (= 0 arg3)) (= 0 arg1P)) (= 0 arg2P)) (= (- arg2 1) arg3P)))
    (cfg_trans2 pc f99_0_loop_aux_LE pc1 f99_0_loop_aux_LE (and (and (and (and (< arg1 2) (= 1 arg3)) (= 1 arg1P)) (= 1 arg2P)) (= 2 arg3P)))
    (cfg_trans2 pc f99_0_loop_aux_LE pc1 f99_0_loop_aux_LE (and (and (and (and (< arg1 2) (= 10 arg3)) (= 0 arg1P)) (= 0 arg2P)) (= 9 arg3P)))
    (cfg_trans2 pc f128_0_loop_aux_EQ pc1 f99_0_loop_aux_LE (and (and (and (and (and (< arg1 2) (> arg2 1)) (= 1 arg3)) (= 1 arg1P)) (= 1 arg2P)) (= (+ arg2 1) arg3P)))
    (cfg_trans2 pc __init pc1 f1_0_main_ConstantStackPush true)
  )
)
