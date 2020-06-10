(declare-sort Loc 0)
(declare-const f1_0_main_Load Loc)
(declare-const f1_0_main_Load' Loc)
(declare-const f174_0_test_EQ Loc)
(declare-const __init Loc)
(assert (distinct f1_0_main_Load f1_0_main_Load' f174_0_test_EQ __init ))

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
    (cfg_trans2 pc f1_0_main_Load pc1 f1_0_main_Load' (exists ((x9 Int) (x10 Int)) (and (and (and (and (and (> x9 (- 1)) (> arg2 0)) (= (- x9 (* 2 x10)) 1)) (> arg1 0)) (= arg1 arg1P)) (= arg2 arg2P))))
    (cfg_trans2 pc f1_0_main_Load' pc1 f174_0_test_EQ (exists ((x13 Int) (x14 Int)) (and (and (and (and (and (and (and (> x13 (- 1)) (> arg2 0)) (= (- x13 (* 2 x14)) 1)) (> arg1 0)) (< (- x13 (* 2 x14)) 2)) (>= (- x13 (* 2 x14)) 0)) (= 1 arg1P)) (= 0 arg2P))))
    (cfg_trans2 pc f1_0_main_Load pc1 f1_0_main_Load' (exists ((x17 Int) (x18 Int)) (and (and (and (and (and (> x17 (- 1)) (> arg2 0)) (= (- x17 (* 2 x18)) 0)) (> arg1 0)) (= arg1 arg1P)) (= arg2 arg2P))))
    (cfg_trans2 pc f1_0_main_Load' pc1 f174_0_test_EQ (exists ((x21 Int) (x22 Int)) (and (and (and (and (and (and (and (> x21 (- 1)) (> arg2 0)) (= (- x21 (* 2 x22)) 0)) (> arg1 0)) (< (- x21 (* 2 x22)) 2)) (>= (- x21 (* 2 x22)) 0)) (= 0 arg1P)) (= 1 arg2P))))
    (cfg_trans2 pc f174_0_test_EQ pc1 f174_0_test_EQ (and (and (= arg1 arg2) (= (- arg1 1) arg1P)) (= (- arg1 1) arg2P)))
    (cfg_trans2 pc __init pc1 f1_0_main_Load true)
  )
)
