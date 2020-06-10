(declare-sort Loc 0)
(declare-const f1_0_main_Load Loc)
(declare-const f274_0_power_LE Loc)
(declare-const f274_0_power_LE' Loc)
(declare-const __init Loc)
(assert (distinct f1_0_main_Load f274_0_power_LE f274_0_power_LE' __init ))

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

(define-fun init_main ( (pc Loc) (arg1 Int) (arg2 Int) ) Bool
  (cfg_init pc __init true))

(define-fun next_main (
                 (pc Loc) (arg1 Int) (arg2 Int)
                 (pc1 Loc) (arg1P Int) (arg2P Int)
             ) Bool
  (or
    (cfg_trans2 pc f1_0_main_Load pc1 f274_0_power_LE (exists ((x3 Int)) (and (and (and (and (> arg2 (- 1)) (> arg1P 1)) (< x3 2)) (> x3 (- 1))) (> arg1 0))))
    (cfg_trans2 pc f1_0_main_Load pc1 f274_0_power_LE (exists ((x7 Int)) (and (and (and (> arg2 (- 1)) (> arg1P 1)) (> x7 2)) (> arg1 0))))
    (cfg_trans2 pc f274_0_power_LE pc1 f274_0_power_LE' (exists ((x11 Int) (x12 Int)) (and (and (and (= (- arg1 (* 2 x11)) 0) (> arg1 x12)) (> arg1 0)) (= arg1 arg1P))))
    (cfg_trans2 pc f274_0_power_LE' pc1 f274_0_power_LE (exists ((x15 Int)) (and (and (and (and (and (and (= (- arg1 (* 2 x15)) 0) (> arg1 0)) (> arg1 arg1P)) (>= (- arg1 (* 2 x15)) 0)) (< (- arg1 (* 2 x15)) 2)) (< (- arg1 (* 2 arg1P)) 2)) (>= (- arg1 (* 2 arg1P)) 0))))
    (cfg_trans2 pc f274_0_power_LE pc1 f274_0_power_LE' (exists ((x17 Int) (x18 Int)) (and (and (and (= (- arg1 (* 2 x17)) 1) (> arg1 x18)) (> arg1 0)) (= arg1 arg1P))))
    (cfg_trans2 pc f274_0_power_LE' pc1 f274_0_power_LE (exists ((x21 Int)) (and (and (and (and (and (and (= (- arg1 (* 2 x21)) 1) (> arg1 0)) (> arg1 arg1P)) (>= (- arg1 (* 2 x21)) 0)) (< (- arg1 (* 2 x21)) 2)) (< (- arg1 (* 2 arg1P)) 2)) (>= (- arg1 (* 2 arg1P)) 0))))
    (cfg_trans2 pc __init pc1 f1_0_main_Load true)
  )
)
