(declare-sort Loc 0)
(declare-const f1_0_main_ConstantStackPush Loc)
(declare-const f500_0_main_GE Loc)
(declare-const f323_0_rec0_GT Loc)
(declare-const f376_0_rec1_GT Loc)
(declare-const f319_0_rec2_LT Loc)
(declare-const f541_0_rec3_GT Loc)
(declare-const f493_0_rec4_LT Loc)
(declare-const __init Loc)
(assert (distinct f1_0_main_ConstantStackPush f500_0_main_GE f323_0_rec0_GT f376_0_rec1_GT f319_0_rec2_LT f541_0_rec3_GT f493_0_rec4_LT __init ))

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
    (cfg_trans2 pc f1_0_main_ConstantStackPush pc1 f500_0_main_GE (and (and (and (and (and (<= arg1P arg1) (> arg2 (- 1))) (> arg1 0)) (> arg1P 0)) (= 0 arg2P)) (= arg2 arg3P)))
    (cfg_trans2 pc f500_0_main_GE pc1 f500_0_main_GE (and (and (and (and (and (and (> arg3 arg2) (> arg3 0)) (<= arg1P arg1)) (> arg1 0)) (> arg1P 0)) (= (+ arg2 1) arg2P)) (= arg3 arg3P)))
    (cfg_trans2 pc f500_0_main_GE pc1 f323_0_rec0_GT (and (and (and (and (> arg3 arg2) (> arg3 0)) (> arg1 0)) (= 0 arg1P)) (= arg3 arg2P)))
    (cfg_trans2 pc f323_0_rec0_GT pc1 f323_0_rec0_GT (and (and (and (and (>= arg2 arg1) (> arg1 (- 1))) (> arg2 0)) (= (+ arg1 1) arg1P)) (= arg2 arg2P)))
    (cfg_trans2 pc f323_0_rec0_GT pc1 f376_0_rec1_GT (and (and (and (and (> arg2 0) (>= arg2 arg1)) (= arg1 arg1P)) (= 0 arg2P)) (= (* 2 arg1) arg3P)))
    (cfg_trans2 pc f376_0_rec1_GT pc1 f376_0_rec1_GT (and (and (and (and (and (> arg1 (- 1)) (>= arg3 arg2)) (> arg2 (- 1))) (= arg1 arg1P)) (= (+ arg2 1) arg2P)) (= arg3 arg3P)))
    (cfg_trans2 pc f376_0_rec1_GT pc1 f319_0_rec2_LT (and (and (and (and (and (> arg1 (- 1)) (>= arg3 arg2)) (> arg2 (- 1))) (= arg1 arg1P)) (= arg2 arg2P)) (= (+ arg1 arg2) arg3P)))
    (cfg_trans2 pc f319_0_rec2_LT pc1 f319_0_rec2_LT (and (and (and (and (and (and (and (>= (* 3 arg2) 0) (> arg3 (- 1))) (>= (* 2 arg1) 0)) (>= (+ (* 2 arg1) (* 3 arg2)) 0)) (>= (* 4 arg3) 0)) (= arg1 arg1P)) (= arg2 arg2P)) (= (- arg3 1) arg3P)))
    (cfg_trans2 pc f319_0_rec2_LT pc1 f541_0_rec3_GT (and (and (and (and (and (and (and (and (and (>= (* 3 arg2) 0) (> arg3 (- 1))) (>= (* 2 arg1) 0)) (>= (+ (* 2 arg1) (* 3 arg2)) 0)) (>= (* 4 arg3) 0)) (= arg1 arg1P)) (= arg2 arg2P)) (= arg3 arg3P)) (= 0 arg4P)) (= (+ (+ (* 2 arg1) (* 3 arg2)) (* 4 arg3)) arg5P)))
    (cfg_trans2 pc f541_0_rec3_GT pc1 f541_0_rec3_GT (and (and (and (and (and (and (and (and (and (and (and (and (>= (* 100 arg2) 0) (>= arg5 arg4)) (>= (* 1000 arg1) 0)) (>= (* 10 arg3) 0)) (>= (+ (* 1000 arg1) (* 100 arg2)) 0)) (> arg3 (- 1))) (>= (+ (+ (* 1000 arg1) (* 100 arg2)) (* 10 arg3)) 0)) (> arg4 (- 1))) (= arg1 arg1P)) (= arg2 arg2P)) (= arg3 arg3P)) (= (+ arg4 1) arg4P)) (= arg5 arg5P)))
    (cfg_trans2 pc f541_0_rec3_GT pc1 f493_0_rec4_LT (and (and (and (and (and (and (and (and (>= (* 100 arg2) 0) (>= arg5 arg4)) (>= (* 1000 arg1) 0)) (>= (* 10 arg3) 0)) (>= (+ (* 1000 arg1) (* 100 arg2)) 0)) (> arg3 (- 1))) (> arg4 (- 1))) (>= (+ (+ (* 1000 arg1) (* 100 arg2)) (* 10 arg3)) 0)) (= (+ (+ (+ (* 1000 arg1) (* 100 arg2)) (* 10 arg3)) arg4) arg1P)))
    (cfg_trans2 pc f493_0_rec4_LT pc1 f493_0_rec4_LT (and (> arg1 (- 1)) (= (- arg1 1) arg1P)))
    (cfg_trans2 pc __init pc1 f1_0_main_ConstantStackPush true)
  )
)
