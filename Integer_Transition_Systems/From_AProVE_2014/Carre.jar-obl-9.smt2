(declare-sort Loc 0)
(declare-const f1_0_main_Load Loc)
(declare-const f1_0_main_Load' Loc)
(declare-const f723_0_init_GE Loc)
(declare-const f873_0_init_GE Loc)
(declare-const f723_0_init_GE' Loc)
(declare-const f1037_0_imprimer_GE Loc)
(declare-const f1074_0_imprimer_GE Loc)
(declare-const __init Loc)
(assert (distinct f1_0_main_Load f1_0_main_Load' f723_0_init_GE f873_0_init_GE f723_0_init_GE' f1037_0_imprimer_GE f1074_0_imprimer_GE __init ))

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
    (cfg_trans2 pc f1_0_main_Load pc1 f1_0_main_Load' (exists ((x39 Int) (x40 Int) (x41 Int)) (and (and (and (and (and (and (and (> (* 2 x39) 0) (> arg2 0)) (= (- (+ (* 2 x39) 1) (* 2 x40)) 1)) (> x39 (- 1))) (> arg1 0)) (> x41 2)) (= arg1 arg1P)) (= arg2 arg2P))))
    (cfg_trans2 pc f1_0_main_Load' pc1 f723_0_init_GE (exists ((x45 Int) (x46 Int)) (and (and (and (and (and (and (and (and (and (> (* 2 x45) 0) (> arg2 0)) (= (- (+ (* 2 x45) 1) (* 2 x46)) 1)) (> x45 (- 1))) (> arg1 0)) (> arg1P 2)) (< (- (+ (* 2 x45) 1) (* 2 x46)) 2)) (>= (- (+ (* 2 x45) 1) (* 2 x46)) 0)) (= 0 arg2P)) (= (+ (* 2 x45) 1) arg3P))))
    (cfg_trans2 pc f723_0_init_GE pc1 f873_0_init_GE (and (and (and (and (and (and (and (<= arg1P arg1) (< arg2 3)) (> arg1 2)) (> arg1P 2)) (<= (+ arg3 4) arg1)) (= arg2 arg2P)) (= 0 arg3P)) (= arg3 arg4P)))
    (cfg_trans2 pc f873_0_init_GE pc1 f723_0_init_GE (and (and (and (and (and (and (>= arg1 arg1P) (> arg3 2)) (> arg1 2)) (> arg1P 2)) (>= arg1 (+ arg4 4))) (= (+ arg2 1) arg2P)) (= arg4 arg3P)))
    (cfg_trans2 pc f873_0_init_GE pc1 f873_0_init_GE (exists ((x18 Int)) (and (and (and (and (and (and (and (and (and (and (> arg4 arg2) (< arg3 3)) (> x18 arg3)) (> x18 (- 1))) (<= arg1P arg1)) (> arg1 2)) (> arg1P 2)) (<= (+ arg4 4) arg1)) (= arg2 arg2P)) (= (+ arg3 1) arg3P)) (= arg4 arg4P))))
    (cfg_trans2 pc f723_0_init_GE pc1 f723_0_init_GE' (exists ((x50 Int) (x51 Int) (x52 Int)) (and (and (and (and (and (and (and (and (and (and (> arg3 1) (> arg2 2)) (> arg3 x50)) (> arg3 x51)) (<= x52 arg1)) (> arg1 2)) (> x52 2)) (<= (+ arg3 4) arg1)) (= arg1 arg1P)) (= arg2 arg2P)) (= arg3 arg3P))))
    (cfg_trans2 pc f723_0_init_GE' pc1 f1037_0_imprimer_GE (exists ((x57 Int) (x58 Int)) (and (and (and (and (and (and (and (and (and (and (and (and (and (> arg3 1) (> arg2 2)) (> arg3 x57)) (> arg3 x58)) (<= arg1P arg1)) (> arg1 2)) (> arg1P 2)) (<= (+ arg3 4) arg1)) (>= (- arg3 (* 2 x57)) 0)) (< (- arg3 (* 2 x57)) 2)) (< (- arg3 (* 2 x58)) 2)) (>= (- arg3 (* 2 x58)) 0)) (= 0 arg2P)) (= arg3 arg3P))))
    (cfg_trans2 pc f1037_0_imprimer_GE pc1 f1074_0_imprimer_GE (and (and (and (and (and (and (and (<= arg1P arg1) (> arg3 arg2)) (> arg1 2)) (> arg1P 2)) (<= (+ arg3 4) arg1)) (= arg2 arg2P)) (= 0 arg3P)) (= arg3 arg4P)))
    (cfg_trans2 pc f1074_0_imprimer_GE pc1 f1037_0_imprimer_GE (and (and (and (and (and (and (<= arg1P arg1) (<= arg4 arg3)) (> arg1 2)) (> arg1P 2)) (<= (+ arg4 4) arg1)) (= (+ arg2 1) arg2P)) (= arg4 arg3P)))
    (cfg_trans2 pc f1074_0_imprimer_GE pc1 f1074_0_imprimer_GE (and (and (and (and (and (and (and (<= arg1P arg1) (> arg4 arg3)) (> arg1 2)) (> arg1P 2)) (<= (+ arg4 4) arg1)) (= arg2 arg2P)) (= (+ arg3 1) arg3P)) (= arg4 arg4P)))
    (cfg_trans2 pc __init pc1 f1_0_main_Load true)
  )
)
