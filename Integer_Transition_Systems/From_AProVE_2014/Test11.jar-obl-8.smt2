(declare-sort Loc 0)
(declare-const f1_0_main_Load Loc)
(declare-const f1_0_main_Load' Loc)
(declare-const f1321_0_main_LE Loc)
(declare-const __init Loc)
(assert (distinct f1_0_main_Load f1_0_main_Load' f1321_0_main_LE __init ))

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
    (cfg_trans2 pc f1_0_main_Load pc1 f1_0_main_Load' (exists ((x38 Int) (x39 Int)) (and (and (and (and (and (and (> arg2 (- 1)) (<= x38 (* 200 arg2))) (<= x39 arg1)) (> arg1 0)) (> x39 0)) (= arg1 arg1P)) (= arg2 arg2P))))
    (cfg_trans2 pc f1_0_main_Load' pc1 f1321_0_main_LE (and (and (and (and (and (and (and (and (and (> arg2 (- 1)) (<= arg3P (* 200 arg2))) (<= arg1P arg1)) (> arg1 0)) (> arg1P 0)) (< (- (* 200 arg2) (* 13 arg3P)) 13)) (>= (- (* 200 arg2) (* 13 arg3P)) 0)) (= (* 100 arg2) arg2P)) (= (+ (* 100 arg2) arg3P) arg4P)) (= 0 arg5P)))
    (cfg_trans2 pc f1321_0_main_LE pc1 f1321_0_main_LE (exists ((x4 Int)) (and (and (and (and (and (and (and (and (and (> arg4 0) (> x4 (- 1))) (>= arg5 x4)) (>= arg1 arg1P)) (> arg1 0)) (> arg1P 0)) (= arg2 arg2P)) (= (- arg3 1) arg3P)) (= (+ arg2 (- arg3 1)) arg4P)) (= arg5 arg5P))))
    (cfg_trans2 pc f1321_0_main_LE pc1 f1321_0_main_LE (exists ((x11 Int) (x18 Int)) (and (and (and (and (and (and (and (and (and (and (and (and (> arg4 0) (> x11 (- 1))) (> arg5 (- 1))) (< arg5 x11)) (> x18 (- 1))) (>= (+ arg5 1) x11)) (<= arg1P arg1)) (> arg1 0)) (> arg1P 0)) (= arg2 arg2P)) (= (- arg3 1) arg3P)) (= (+ arg2 (- arg3 1)) arg4P)) (= (+ arg5 1) arg5P))))
    (cfg_trans2 pc f1321_0_main_LE pc1 f1321_0_main_LE (exists ((x19 Int) (x26 Int) (x27 Int)) (and (and (and (and (and (and (and (and (and (and (and (and (and (> x19 (- 1)) (< (+ arg5 1) x19)) (> arg4 0)) (> arg5 (- 1))) (> x26 (- 1))) (<= (* x26 x27) 9)) (> x27 (- 1))) (<= arg1P arg1)) (> arg1 0)) (> arg1P 0)) (= arg2 arg2P)) (= (- arg3 1) arg3P)) (= (+ arg2 (- arg3 1)) arg4P)) (= (+ arg5 2) arg5P))))
    (cfg_trans2 pc f1321_0_main_LE pc1 f1321_0_main_LE (exists ((x28 Int) (x35 Int) (x36 Int)) (and (and (and (and (and (and (and (and (and (and (and (and (and (> x28 (- 1)) (< (+ arg5 1) x28)) (> arg4 0)) (> arg5 (- 1))) (> x35 (- 1))) (> (* x35 x36) 9)) (> x36 (- 1))) (<= arg1P arg1)) (> arg1 0)) (> arg1P 0)) (= (- arg2 1) arg2P)) (= arg3 arg3P)) (= (+ (- arg2 1) arg3) arg4P)) (= (+ arg5 2) arg5P))))
    (cfg_trans2 pc __init pc1 f1_0_main_Load true)
  )
)
