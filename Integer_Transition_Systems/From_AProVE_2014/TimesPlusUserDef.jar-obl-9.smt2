(declare-sort Loc 0)
(declare-const f1_0_main_Load Loc)
(declare-const f127_0_times_NE Loc)
(declare-const f469_0_times_InvokeMethod Loc)
(declare-const f218_0_times_Return Loc)
(declare-const f484_0_plus_LE Loc)
(declare-const __init Loc)
(assert (distinct f1_0_main_Load f127_0_times_NE f469_0_times_InvokeMethod f218_0_times_Return f484_0_plus_LE __init ))

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
    (cfg_trans2 pc f1_0_main_Load pc1 f127_0_times_NE (and (and (and (> arg2P (- 1)) (> arg2 1)) (> arg1P (- 1))) (> arg1 0)))
    (cfg_trans2 pc f127_0_times_NE pc1 f127_0_times_NE (and (and (and (> arg2 0) (< (- arg2 1) arg2)) (= arg1 arg1P)) (= (- arg2 1) arg2P)))
    (cfg_trans2 pc f127_0_times_NE pc1 f469_0_times_InvokeMethod (and (and (and (= 1 arg2) (= 1 arg1P)) (= 0 arg2P)) (= arg1 arg3P)))
    (cfg_trans2 pc f127_0_times_NE pc1 f469_0_times_InvokeMethod (and (and (and (and (and (> arg2 0) (< (- arg2 1) arg2)) (= 0 arg1)) (= arg2 arg1P)) (= 0 arg2P)) (= 0 arg3P)))
    (cfg_trans2 pc f127_0_times_NE pc1 f469_0_times_InvokeMethod (and (and (and (> arg2 0) (< (- arg2 1) arg2)) (= arg2 arg1P)) (= arg1 arg3P)))
    (cfg_trans2 pc f127_0_times_NE pc1 f469_0_times_InvokeMethod (and (and (and (and (> arg2 0) (< (- arg2 1) arg2)) (= 0 arg1)) (= arg2 arg1P)) (= 0 arg3P)))
    (cfg_trans2 pc f218_0_times_Return pc1 f469_0_times_InvokeMethod (and (and (= arg1 arg1P) (= arg3 arg2P)) (= arg2 arg3P)))
    (cfg_trans2 pc f469_0_times_InvokeMethod pc1 f484_0_plus_LE (and (and (> arg1 0) (= arg2 arg1P)) (= arg3 arg2P)))
    (cfg_trans2 pc f484_0_plus_LE pc1 f484_0_plus_LE (and (and (and (> arg2 0) (< (- arg2 1) arg2)) (= arg1 arg1P)) (= (- arg2 1) arg2P)))
    (cfg_trans2 pc f484_0_plus_LE pc1 f484_0_plus_LE (and (and (and (and (< arg2 1) (< (- arg1 1) arg1)) (> arg1 0)) (= (- arg1 1) arg1P)) (= arg2 arg2P)))
    (cfg_trans2 pc __init pc1 f1_0_main_Load true)
  )
)
