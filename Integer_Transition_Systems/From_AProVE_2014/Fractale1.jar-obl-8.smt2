(declare-sort Loc 0)
(declare-const f1_0_main_Load Loc)
(declare-const f361_0_fractale_LE Loc)
(declare-const f361_0_fractale_LE' Loc)
(declare-const f425_0_fractale_InvokeMethod Loc)
(declare-const __init Loc)
(assert (distinct f1_0_main_Load f361_0_fractale_LE f361_0_fractale_LE' f425_0_fractale_InvokeMethod __init ))

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

(define-fun init_main ( (pc Loc) (arg1 Int) (arg2 Int) (arg3 Int) (arg4 Int) (arg5 Int) (arg6 Int) (arg7 Int) (arg8 Int) ) Bool
  (cfg_init pc __init true))

(define-fun next_main (
                 (pc Loc) (arg1 Int) (arg2 Int) (arg3 Int) (arg4 Int) (arg5 Int) (arg6 Int) (arg7 Int) (arg8 Int)
                 (pc1 Loc) (arg1P Int) (arg2P Int) (arg3P Int) (arg4P Int) (arg5P Int) (arg6P Int) (arg7P Int) (arg8P Int)
             ) Bool
  (or
    (cfg_trans2 pc f1_0_main_Load pc1 f361_0_fractale_LE (and (and (and (and (and (and (and (and (and (and (<= (- arg1P 1) arg1) (> arg2 (- 1))) (<= (- arg2P 201) arg1)) (> arg1 0)) (> arg1P 1)) (> arg2P 201)) (= arg2 arg3P)) (= 0 arg4P)) (= 0 arg5P)) (= 200 arg6P)) (= 200 arg7P)))
    (cfg_trans2 pc f361_0_fractale_LE pc1 f361_0_fractale_LE' (exists ((x11 Int) (x12 Int)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (> arg3 0) (< (- arg3 1) arg3)) (>= arg1 x11)) (> arg1 0)) (> arg2 0)) (> x11 0)) (> x12 0)) (<= (+ arg4 2) arg1)) (<= (+ arg5 2) arg1)) (>= arg2 (+ arg7 2))) (<= (+ arg6 2) arg2)) (= arg1 arg1P)) (= arg2 arg2P)) (= arg3 arg3P)) (= arg4 arg4P)) (= arg5 arg5P)) (= arg6 arg6P)) (= arg7 arg7P))))
    (cfg_trans2 pc f361_0_fractale_LE' pc1 f361_0_fractale_LE (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (> arg3 0) (< (- arg3 1) arg3)) (>= arg1 arg1P)) (> arg1 0)) (> arg2 0)) (> arg1P 0)) (> arg2P 0)) (<= (+ arg4 2) arg1)) (<= (+ arg5 2) arg1)) (<= (+ arg6 2) arg2)) (>= arg2 (+ arg7 2))) (>= (- (- (+ (+ arg4 arg5) arg6) arg7) (* 2 arg6P)) 0)) (< (- (- (+ (+ arg4 arg5) arg6) arg7) (* 2 arg6P)) 2)) (< (- (- (+ (+ arg6 arg7) arg5) arg4) (* 2 arg7P)) 2)) (>= (- (- (+ (+ arg6 arg7) arg5) arg4) (* 2 arg7P)) 0)) (= (- arg3 1) arg3P)) (= arg4 arg4P)) (= arg5 arg5P)))
    (cfg_trans2 pc f361_0_fractale_LE pc1 f361_0_fractale_LE' (exists ((x22 Int) (x21 Int)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (<= x22 arg2) (> arg1 0)) (> arg2 0)) (> x21 0)) (> x22 0)) (<= (+ arg4 2) arg1)) (<= (+ arg5 2) arg1)) (<= (+ arg7 2) arg2)) (<= (+ arg6 2) arg2)) (= 1 arg3)) (= arg1 arg1P)) (= arg2 arg2P)) (= 1 arg3P)) (= arg4 arg4P)) (= arg5 arg5P)) (= arg6 arg6P)) (= arg7 arg7P))))
    (cfg_trans2 pc f361_0_fractale_LE' pc1 f425_0_fractale_InvokeMethod (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (<= arg4P arg2) (> arg1 0)) (> arg2 0)) (> arg3P 0)) (> arg4P 0)) (<= (+ arg4 2) arg1)) (<= (+ arg5 2) arg1)) (<= (+ arg6 2) arg2)) (<= (+ arg7 2) arg2)) (>= (- (- (+ (+ arg6 arg7) arg5) arg4) (* 2 arg6P)) 0)) (< (- (- (+ (+ arg6 arg7) arg5) arg4) (* 2 arg6P)) 2)) (< (- (- (+ (+ arg4 arg5) arg6) arg7) (* 2 arg5P)) 2)) (>= (- (- (+ (+ arg4 arg5) arg6) arg7) (* 2 arg5P)) 0)) (= 1 arg3)) (= 1 arg1P)) (= 0 arg2P)) (= arg6 arg7P)) (= arg7 arg8P)))
    (cfg_trans2 pc f361_0_fractale_LE pc1 f361_0_fractale_LE' (exists ((x33 Int) (x32 Int)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (> arg3 0) (< (- arg3 1) arg3)) (<= x33 arg2)) (> arg1 0)) (> arg2 0)) (> x32 0)) (> x33 0)) (<= (+ arg4 2) arg1)) (<= (+ arg5 2) arg1)) (<= (+ arg7 2) arg2)) (<= (+ arg6 2) arg2)) (= arg1 arg1P)) (= arg2 arg2P)) (= arg3 arg3P)) (= arg4 arg4P)) (= arg5 arg5P)) (= arg6 arg6P)) (= arg7 arg7P))))
    (cfg_trans2 pc f361_0_fractale_LE' pc1 f425_0_fractale_InvokeMethod (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (> arg3 0) (< (- arg3 1) arg3)) (<= arg4P arg2)) (> arg1 0)) (> arg2 0)) (> arg3P 0)) (> arg4P 0)) (<= (+ arg4 2) arg1)) (<= (+ arg5 2) arg1)) (<= (+ arg6 2) arg2)) (<= (+ arg7 2) arg2)) (>= (- (- (+ (+ arg4 arg5) arg6) arg7) (* 2 arg5P)) 0)) (< (- (- (+ (+ arg4 arg5) arg6) arg7) (* 2 arg5P)) 2)) (< (- (- (+ (+ arg6 arg7) arg5) arg4) (* 2 arg6P)) 2)) (>= (- (- (+ (+ arg6 arg7) arg5) arg4) (* 2 arg6P)) 0)) (= arg3 arg1P)) (= (- arg3 1) arg2P)) (= arg6 arg7P)) (= arg7 arg8P)))
    (cfg_trans2 pc f425_0_fractale_InvokeMethod pc1 f361_0_fractale_LE (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (< arg2 arg1) (> arg1 0)) (<= arg1P arg3)) (<= arg2P arg4)) (> arg3 0)) (> arg4 0)) (> arg1P 0)) (> arg2P 0)) (<= (+ arg5 2) arg3)) (<= (+ arg6 2) arg3)) (<= (+ arg8 2) arg4)) (<= (+ arg7 2) arg4)) (= arg2 arg3P)) (= arg5 arg4P)) (= arg6 arg5P)) (= arg7 arg6P)) (= arg8 arg7P)))
    (cfg_trans2 pc __init pc1 f1_0_main_Load true)
  )
)
