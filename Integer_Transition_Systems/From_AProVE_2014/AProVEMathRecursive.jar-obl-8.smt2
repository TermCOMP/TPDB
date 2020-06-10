(declare-sort Loc 0)
(declare-const f1_0_main_Load Loc)
(declare-const f162_0_power_GT Loc)
(declare-const f97_0_random_GT Loc)
(declare-const f155_0_main_InvokeMethod Loc)
(declare-const f162_0_power_GT' Loc)
(declare-const f213_0_power_NE Loc)
(declare-const f213_0_power_NE' Loc)
(declare-const __init Loc)
(assert (distinct f1_0_main_Load f162_0_power_GT f97_0_random_GT f155_0_main_InvokeMethod f162_0_power_GT' f213_0_power_NE f213_0_power_NE' __init ))

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
    (cfg_trans2 pc f1_0_main_Load pc1 f162_0_power_GT (and (and (and (> arg1 0) (= 0 arg2)) (= 0 arg1P)) (= 0 arg2P)))
    (cfg_trans2 pc f1_0_main_Load pc1 f97_0_random_GT (and (and (and (and (<= arg1P arg1) (> arg2 0)) (> arg1 0)) (> arg1P 0)) (= 0 arg2P)))
    (cfg_trans2 pc f1_0_main_Load pc1 f97_0_random_GT (and (and (and (and (> arg2P (- 1)) (> arg2 0)) (<= arg1P arg1)) (> arg1 0)) (> arg1P 0)))
    (cfg_trans2 pc f97_0_random_GT pc1 f162_0_power_GT (and (and (> arg1 0) (= arg2 arg1P)) (= 0 arg2P)))
    (cfg_trans2 pc f97_0_random_GT pc1 f155_0_main_InvokeMethod (exists ((x10 Int)) (and (and (and (and (and (<= arg1P arg1) (> x10 1)) (> arg1 0)) (> arg1P 0)) (= arg2 arg2P)) (= 0 arg3P))))
    (cfg_trans2 pc f97_0_random_GT pc1 f155_0_main_InvokeMethod (exists ((x14 Int)) (and (and (and (and (and (> x14 1) (> arg3P (- 1))) (<= arg1P arg1)) (> arg1 0)) (> arg1P 0)) (= arg2 arg2P))))
    (cfg_trans2 pc f155_0_main_InvokeMethod pc1 f162_0_power_GT (exists ((x19 Int)) (and (and (and (> arg1 0) (> x19 1)) (= arg2 arg1P)) (= arg3 arg2P))))
    (cfg_trans2 pc f162_0_power_GT pc1 f162_0_power_GT' (and (and (and (< arg1 2) (> arg2 1)) (= arg1 arg1P)) (= arg2 arg2P)))
    (cfg_trans2 pc f162_0_power_GT' pc1 f213_0_power_NE (exists ((x37 Int)) (and (and (and (and (and (and (> arg2 1) (< arg1 2)) (< (- arg2 (* 2 x37)) 2)) (>= (- arg2 (* 2 x37)) 0)) (= arg1 arg1P)) (= arg2 arg2P)) (= (- arg2 (* 2 x37)) arg3P))))
    (cfg_trans2 pc f162_0_power_GT pc1 f162_0_power_GT' (and (and (and (> arg1 2) (> arg2 1)) (= arg1 arg1P)) (= arg2 arg2P)))
    (cfg_trans2 pc f162_0_power_GT' pc1 f213_0_power_NE (exists ((x41 Int)) (and (and (and (and (and (and (> arg2 1) (> arg1 2)) (< (- arg2 (* 2 x41)) 2)) (>= (- arg2 (* 2 x41)) 0)) (= arg1 arg1P)) (= arg2 arg2P)) (= (- arg2 (* 2 x41)) arg3P))))
    (cfg_trans2 pc f213_0_power_NE pc1 f213_0_power_NE' (exists ((x47 Int)) (and (and (and (and (and (and (and (> arg2 1) (> x47 0)) (> arg2 x47)) (= 0 arg3)) (= arg1 arg1P)) (= arg2 arg2P)) (= 0 arg3P)) (= arg4 arg4P))))
    (cfg_trans2 pc f213_0_power_NE' pc1 f162_0_power_GT (and (and (and (and (and (and (> arg2 1) (> arg2 arg2P)) (> arg2P 0)) (< (- arg2 (* 2 arg2P)) 2)) (>= (- arg2 (* 2 arg2P)) 0)) (= 0 arg3)) (= arg1 arg1P)))
    (cfg_trans2 pc f213_0_power_NE pc1 f162_0_power_GT (and (and (and (and (> arg2 1) (< (- arg2 1) arg2)) (= 1 arg3)) (= arg1 arg1P)) (= (- arg2 1) arg2P)))
    (cfg_trans2 pc __init pc1 f1_0_main_Load true)
  )
)
