(declare-sort Loc 0)
(declare-const f1_0_main_Load Loc)
(declare-const f1_0_main_Load' Loc)
(declare-const f171_0_sum_EQ Loc)
(declare-const __init Loc)
(assert (distinct f1_0_main_Load f1_0_main_Load' f171_0_sum_EQ __init ))

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
    (cfg_trans2 pc f1_0_main_Load pc1 f1_0_main_Load' (exists ((x11 Int) (x12 Int) (x13 Int)) (and (and (and (and (and (and (> x11 (- 1)) (> arg2 1)) (= (- x12 (* 2 x13)) 1)) (> x12 (- 1))) (> arg1 0)) (= arg1 arg1P)) (= arg2 arg2P))))
    (cfg_trans2 pc f1_0_main_Load' pc1 f171_0_sum_EQ (exists ((x17 Int) (x18 Int)) (and (and (and (and (and (and (> arg1P (- 1)) (> arg2 1)) (= (- x17 (* 2 x18)) 1)) (> x17 (- 1))) (> arg1 0)) (< (- x17 (* 2 x18)) 2)) (>= (- x17 (* 2 x18)) 0))))
    (cfg_trans2 pc f1_0_main_Load pc1 f1_0_main_Load' (exists ((x21 Int) (x22 Int) (x23 Int)) (and (and (and (and (and (and (> x21 (- 1)) (> arg2 1)) (= (- x22 (* 2 x23)) 0)) (> x22 (- 1))) (> arg1 0)) (= arg1 arg1P)) (= arg2 arg2P))))
    (cfg_trans2 pc f1_0_main_Load' pc1 f171_0_sum_EQ (exists ((x26 Int) (x27 Int) (x28 Int)) (and (and (and (and (and (and (and (> x26 (- 1)) (> arg2 1)) (= (- x27 (* 2 x28)) 0)) (> x27 (- 1))) (> arg1 0)) (< (- x27 (* 2 x28)) 2)) (>= (- x27 (* 2 x28)) 0)) (= (- 0 x26) arg1P))))
    (cfg_trans2 pc f171_0_sum_EQ pc1 f171_0_sum_EQ (and (< arg1 0) (= (- arg1 1) arg1P)))
    (cfg_trans2 pc f171_0_sum_EQ pc1 f171_0_sum_EQ (and (> arg1 0) (= (- arg1 1) arg1P)))
    (cfg_trans2 pc __init pc1 f1_0_main_Load true)
  )
)
