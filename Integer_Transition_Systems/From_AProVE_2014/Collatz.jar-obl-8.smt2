(declare-sort Loc 0)
(declare-const f1_0_main_Load Loc)
(declare-const f84_0_main_LE Loc)
(declare-const f84_0_main_LE' Loc)
(declare-const __init Loc)
(assert (distinct f1_0_main_Load f84_0_main_LE f84_0_main_LE' __init ))

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
    (cfg_trans2 pc f1_0_main_Load pc1 f84_0_main_LE (and (and (> arg2 (- 1)) (> arg1P (- 1))) (> arg1 0)))
    (cfg_trans2 pc f84_0_main_LE pc1 f84_0_main_LE' (exists ((x6 Int) (x7 Int)) (and (and (and (= (- arg1 (* 2 x6)) 0) (> arg1 x7)) (> arg1 1)) (= arg1 arg1P))))
    (cfg_trans2 pc f84_0_main_LE' pc1 f84_0_main_LE (exists ((x10 Int)) (and (and (and (and (and (and (= (- arg1 (* 2 x10)) 0) (> arg1 1)) (> arg1 arg1P)) (>= (- arg1 (* 2 x10)) 0)) (< (- arg1 (* 2 x10)) 2)) (< (- arg1 (* 2 arg1P)) 2)) (>= (- arg1 (* 2 arg1P)) 0))))
    (cfg_trans2 pc f84_0_main_LE pc1 f84_0_main_LE' (exists ((x12 Int)) (and (and (and (= (- arg1 (* 2 x12)) 1) (> (* 3 arg1) 0)) (> arg1 1)) (= arg1 arg1P))))
    (cfg_trans2 pc f84_0_main_LE' pc1 f84_0_main_LE (exists ((x14 Int)) (and (and (and (and (and (= (- arg1 (* 2 x14)) 1) (> arg1 1)) (> (* 3 arg1) 0)) (< (- arg1 (* 2 x14)) 2)) (>= (- arg1 (* 2 x14)) 0)) (= (+ (* 3 arg1) 1) arg1P))))
    (cfg_trans2 pc __init pc1 f1_0_main_Load true)
  )
)
