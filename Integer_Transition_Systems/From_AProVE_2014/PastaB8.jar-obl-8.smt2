(declare-sort Loc 0)
(declare-const f1_0_main_Load Loc)
(declare-const f115_0_main_EQ Loc)
(declare-const f115_0_main_EQ' Loc)
(declare-const __init Loc)
(assert (distinct f1_0_main_Load f115_0_main_EQ f115_0_main_EQ' __init ))

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
    (cfg_trans2 pc f1_0_main_Load pc1 f115_0_main_EQ (and (and (> arg1P 0) (> arg2 (- 1))) (> arg1 0)))
    (cfg_trans2 pc f115_0_main_EQ pc1 f115_0_main_EQ' (exists ((x6 Int)) (and (and (= (- arg1 (* 2 x6)) 1) (> arg1 0)) (= arg1 arg1P))))
    (cfg_trans2 pc f115_0_main_EQ' pc1 f115_0_main_EQ (exists ((x8 Int)) (and (and (and (and (> arg1 0) (= (- arg1 (* 2 x8)) 1)) (< (- arg1 (* 2 x8)) 2)) (>= (- arg1 (* 2 x8)) 0)) (= (- arg1 1) arg1P))))
    (cfg_trans2 pc f115_0_main_EQ pc1 f115_0_main_EQ' (exists ((x10 Int) (x11 Int)) (and (and (and (= (- arg1 (* 2 x10)) 0) (> arg1 x11)) (> arg1 0)) (= arg1 arg1P))))
    (cfg_trans2 pc f115_0_main_EQ' pc1 f115_0_main_EQ (exists ((x14 Int)) (and (and (and (and (and (and (= (- arg1 (* 2 x14)) 0) (> arg1 0)) (> arg1 arg1P)) (>= (- arg1 (* 2 x14)) 0)) (< (- arg1 (* 2 x14)) 2)) (< (- arg1 (* 2 arg1P)) 2)) (>= (- arg1 (* 2 arg1P)) 0))))
    (cfg_trans2 pc __init pc1 f1_0_main_Load true)
  )
)
