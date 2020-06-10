(declare-sort Loc 0)
(declare-const f1_0_main_Load Loc)
(declare-const f96_0_random_GT Loc)
(declare-const f154_0_main_InvokeMethod Loc)
(declare-const f167_0_log_LT Loc)
(declare-const f167_0_log_LT' Loc)
(declare-const __init Loc)
(assert (distinct f1_0_main_Load f96_0_random_GT f154_0_main_InvokeMethod f167_0_log_LT f167_0_log_LT' __init ))

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

(define-fun init_main ( (pc Loc) (arg1 Int) (arg2 Int) (arg3 Int) ) Bool
  (cfg_init pc __init true))

(define-fun next_main (
                 (pc Loc) (arg1 Int) (arg2 Int) (arg3 Int)
                 (pc1 Loc) (arg1P Int) (arg2P Int) (arg3P Int)
             ) Bool
  (or
    (cfg_trans2 pc f1_0_main_Load pc1 f96_0_random_GT (and (and (and (and (<= arg1P arg1) (> arg2 0)) (> arg1 0)) (> arg1P 0)) (= 0 arg2P)))
    (cfg_trans2 pc f1_0_main_Load pc1 f96_0_random_GT (and (and (and (and (> arg2P (- 1)) (> arg2 0)) (<= arg1P arg1)) (> arg1 0)) (> arg1P 0)))
    (cfg_trans2 pc f96_0_random_GT pc1 f154_0_main_InvokeMethod (exists ((x7 Int)) (and (and (and (and (and (>= arg1 arg1P) (> x7 1)) (> arg1 0)) (> arg1P 0)) (= arg2 arg2P)) (= 0 arg3P))))
    (cfg_trans2 pc f96_0_random_GT pc1 f154_0_main_InvokeMethod (exists ((x11 Int)) (and (and (and (and (and (> x11 1) (> arg3P (- 1))) (<= arg1P arg1)) (> arg1 0)) (> arg1P 0)) (= arg2 arg2P))))
    (cfg_trans2 pc f1_0_main_Load pc1 f167_0_log_LT (and (and (and (and (> arg1 0) (= 0 arg2)) (= 0 arg1P)) (= 0 arg2P)) (= 0 arg3P)))
    (cfg_trans2 pc f96_0_random_GT pc1 f167_0_log_LT (and (and (and (> arg1 0) (= 0 arg1P)) (= arg2 arg2P)) (= 0 arg3P)))
    (cfg_trans2 pc f154_0_main_InvokeMethod pc1 f167_0_log_LT (exists ((x19 Int)) (and (and (and (and (> arg1 0) (> x19 1)) (= arg3 arg1P)) (= arg2 arg2P)) (= arg3 arg3P))))
    (cfg_trans2 pc f167_0_log_LT pc1 f167_0_log_LT' (exists ((x28 Int)) (and (and (and (and (and (and (and (> arg2 1) (> arg1 1)) (> arg2 x28)) (<= arg1 arg2)) (= arg1 arg3)) (= arg1 arg1P)) (= arg2 arg2P)) (= arg1 arg3P))))
    (cfg_trans2 pc f167_0_log_LT' pc1 f167_0_log_LT (and (and (and (and (and (and (and (and (> arg2 1) (> arg1 1)) (<= arg1 arg2)) (> arg2 arg2P)) (> arg1 (- arg2 (* arg1 arg2P)))) (>= (- arg2 (* arg1 arg2P)) 0)) (= arg1 arg3)) (= arg1 arg1P)) (= arg1 arg3P)))
    (cfg_trans2 pc __init pc1 f1_0_main_Load true)
  )
)
