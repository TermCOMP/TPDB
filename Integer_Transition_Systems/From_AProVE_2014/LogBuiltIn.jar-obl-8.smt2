(declare-sort Loc 0)
(declare-const f1_0_main_Load Loc)
(declare-const f157_0_log_LE Loc)
(declare-const f157_0_log_LE' Loc)
(declare-const __init Loc)
(assert (distinct f1_0_main_Load f157_0_log_LE f157_0_log_LE' __init ))

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
    (cfg_trans2 pc f1_0_main_Load pc1 f157_0_log_LE (and (and (> arg2 (- 1)) (> arg1P (- 1))) (> arg1 0)))
    (cfg_trans2 pc f157_0_log_LE pc1 f157_0_log_LE' (exists ((x5 Int)) (and (and (> arg1 1) (> arg1 x5)) (= arg1 arg1P))))
    (cfg_trans2 pc f157_0_log_LE' pc1 f157_0_log_LE (and (and (and (> arg1 arg1P) (> arg1 1)) (< (- arg1 (* 2 arg1P)) 2)) (>= (- arg1 (* 2 arg1P)) 0)))
    (cfg_trans2 pc __init pc1 f1_0_main_Load true)
  )
)
