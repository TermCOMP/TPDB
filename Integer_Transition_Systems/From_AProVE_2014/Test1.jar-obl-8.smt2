(declare-sort Loc 0)
(declare-const f1_0_main_Load Loc)
(declare-const f1_0_main_Load' Loc)
(declare-const f474_0_rec_GE Loc)
(declare-const __init Loc)
(assert (distinct f1_0_main_Load f1_0_main_Load' f474_0_rec_GE __init ))

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
    (cfg_trans2 pc f1_0_main_Load pc1 f1_0_main_Load' (and (and (and (> arg1 0) (> arg2 (- 1))) (= arg1 arg1P)) (= arg2 arg2P)))
    (cfg_trans2 pc f1_0_main_Load' pc1 f474_0_rec_GE (exists ((x16 Int) (x17 Int) (x18 Int) (x19 Int)) (and (and (and (and (and (and (and (and (and (and (and (and (and (> arg1 0) (> arg2 (- 1))) (>= (- arg2 (* 5 x16)) 0)) (< (- arg2 (* 5 x16)) 5)) (>= (- arg2 (* 4 x17)) 0)) (< (- arg2 (* 4 x17)) 4)) (>= (- arg2 (* 5 x18)) 0)) (< (- arg2 (* 5 x18)) 5)) (< (- arg2 (* 4 x19)) 4)) (>= (- arg2 (* 4 x19)) 0)) (= arg2 arg1P)) (= (- arg2 (* 5 x16)) arg2P)) (= (- arg2 (* 4 x17)) arg3P)) (= (+ (+ arg2 (- arg2 (* 5 x18))) (- (* 3 arg2) (* 12 x19))) arg4P))))
    (cfg_trans2 pc f474_0_rec_GE pc1 f474_0_rec_GE (and (and (and (and (and (and (and (< arg2 arg1) (<= arg2 (- arg1 1))) (> arg4 (- 1))) (< (- arg1 1) arg1)) (= (- arg1 1) arg1P)) (= arg2 arg2P)) (= arg3 arg3P)) (= (+ (+ (- arg1 1) arg2) (* 3 arg3)) arg4P)))
    (cfg_trans2 pc f474_0_rec_GE pc1 f474_0_rec_GE (and (and (and (and (and (and (and (> arg4 (- 1)) (>= arg2 arg1)) (< (- arg3 1) arg3)) (>= arg3 arg2)) (= arg1 arg1P)) (= arg2 arg2P)) (= (- arg3 1) arg3P)) (= (+ (+ arg1 arg2) (- (* 3 arg3) 3)) arg4P)))
    (cfg_trans2 pc f474_0_rec_GE pc1 f474_0_rec_GE (and (and (and (and (and (and (and (> arg4 (- 1)) (>= arg2 arg1)) (< (- arg2 2) arg2)) (< arg3 arg2)) (= arg1 arg1P)) (= (- arg2 2) arg2P)) (= arg3 arg3P)) (= (+ (+ arg1 (- arg2 2)) (* 3 arg3)) arg4P)))
    (cfg_trans2 pc __init pc1 f1_0_main_Load true)
  )
)
