(declare-sort Loc 0)
(declare-const f1_0_main_Load Loc)
(declare-const f1_0_main_Load' Loc)
(declare-const f122_0_even_EQ Loc)
(declare-const f146_0_even_EQ Loc)
(declare-const __init Loc)
(assert (distinct f1_0_main_Load f1_0_main_Load' f122_0_even_EQ f146_0_even_EQ __init ))

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
    (cfg_trans2 pc f1_0_main_Load pc1 f1_0_main_Load' (exists ((x12 Int) (x13 Int) (x14 Int)) (and (and (and (and (and (and (> x12 (- 1)) (> arg2 1)) (= (- x13 (* 2 x14)) 1)) (> x13 (- 1))) (> arg1 0)) (= arg1 arg1P)) (= arg2 arg2P))))
    (cfg_trans2 pc f1_0_main_Load' pc1 f122_0_even_EQ (exists ((x18 Int) (x19 Int)) (and (and (and (and (and (and (> arg1P (- 1)) (> arg2 1)) (= (- x18 (* 2 x19)) 1)) (> x18 (- 1))) (> arg1 0)) (< (- x18 (* 2 x19)) 2)) (>= (- x18 (* 2 x19)) 0))))
    (cfg_trans2 pc f122_0_even_EQ pc1 f146_0_even_EQ (and (= 0 arg1) (= 0 arg1P)))
    (cfg_trans2 pc f1_0_main_Load pc1 f1_0_main_Load' (exists ((x22 Int) (x23 Int) (x24 Int)) (and (and (and (and (and (and (> x22 (- 1)) (> arg2 1)) (> x23 (- 1))) (= (- x23 (* 2 x24)) 0)) (> arg1 0)) (= arg1 arg1P)) (= arg2 arg2P))))
    (cfg_trans2 pc f1_0_main_Load' pc1 f146_0_even_EQ (exists ((x27 Int) (x28 Int) (x29 Int)) (and (and (and (and (and (and (and (> x27 (- 1)) (> arg2 1)) (> x28 (- 1))) (= (- x28 (* 2 x29)) 0)) (> arg1 0)) (< (- x28 (* 2 x29)) 2)) (>= (- x28 (* 2 x29)) 0)) (= (- 0 x27) arg1P))))
    (cfg_trans2 pc f122_0_even_EQ pc1 f122_0_even_EQ (and (> arg1 1) (= (- arg1 2) arg1P)))
    (cfg_trans2 pc f146_0_even_EQ pc1 f146_0_even_EQ (and (and (< arg1 0) (< arg1 3)) (= (- arg1 2) arg1P)))
    (cfg_trans2 pc __init pc1 f1_0_main_Load true)
  )
)
