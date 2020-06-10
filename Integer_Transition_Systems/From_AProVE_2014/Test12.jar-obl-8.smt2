(declare-sort Loc 0)
(declare-const f1_0_main_Load Loc)
(declare-const f1_0_main_Load' Loc)
(declare-const f1870_0_rec_LE Loc)
(declare-const __init Loc)
(assert (distinct f1_0_main_Load f1_0_main_Load' f1870_0_rec_LE __init ))

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
    (cfg_trans2 pc f1_0_main_Load pc1 f1_0_main_Load' (exists ((x23 Int)) (and (and (and (and (> arg2 (- 1)) (<= x23 (* 200 arg2))) (> arg1 0)) (= arg1 arg1P)) (= arg2 arg2P))))
    (cfg_trans2 pc f1_0_main_Load' pc1 f1870_0_rec_LE (and (and (and (and (and (and (and (and (> arg2 (- 1)) (<= arg2P (* 200 arg2))) (> arg1 0)) (< (- (* 200 arg2) (* 13 arg2P)) 13)) (>= (- (* 200 arg2) (* 13 arg2P)) 0)) (= (* 100 arg2) arg1P)) (= (+ (* 100 arg2) arg2P) arg3P)) (= arg2 arg4P)) (= 0 arg5P)))
    (cfg_trans2 pc f1870_0_rec_LE pc1 f1870_0_rec_LE (and (and (and (and (and (and (and (and (> arg3 0) (> arg4 (- 1))) (< (- arg2 1) arg2)) (>= arg5 arg4)) (= arg1 arg1P)) (= (- arg2 1) arg2P)) (= (+ arg1 (- arg2 1)) arg3P)) (= arg4 arg4P)) (= arg5 arg5P)))
    (cfg_trans2 pc f1870_0_rec_LE pc1 f1870_0_rec_LE (exists ((x13 Int) (x14 Int)) (and (and (and (and (and (and (and (and (and (and (and (and (and (> arg4 1) (< (+ arg5 1) arg4)) (> arg3 0)) (> arg5 (- 1))) (> x13 (- 1))) (> x14 (- 1))) (<= (* x13 x14) 9)) (<= (+ arg5 2) arg4)) (< (- arg2 1) arg2)) (= arg1 arg1P)) (= (- arg2 1) arg2P)) (= (+ arg1 (- arg2 1)) arg3P)) (= arg4 arg4P)) (= (+ arg5 2) arg5P))))
    (cfg_trans2 pc f1870_0_rec_LE pc1 f1870_0_rec_LE (exists ((x20 Int) (x21 Int)) (and (and (and (and (and (and (and (and (and (and (and (and (and (> arg4 1) (< (+ arg5 1) arg4)) (> arg3 0)) (> arg5 (- 1))) (> x20 (- 1))) (> x21 (- 1))) (> (* x20 x21) 9)) (<= (+ arg5 2) arg4)) (< (- arg1 1) arg1)) (= (- arg1 1) arg1P)) (= arg2 arg2P)) (= (+ (- arg1 1) arg2) arg3P)) (= arg4 arg4P)) (= (+ arg5 2) arg5P))))
    (cfg_trans2 pc __init pc1 f1_0_main_Load true)
  )
)
