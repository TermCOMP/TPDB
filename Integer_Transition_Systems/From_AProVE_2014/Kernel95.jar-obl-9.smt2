(declare-sort Loc 0)
(declare-const f1_0_main_Load Loc)
(declare-const f234_0_slide95_FieldAccess Loc)
(declare-const f411_0_slide95_EQ Loc)
(declare-const f411_0_slide95_EQ' Loc)
(declare-const f196_0_create_LE Loc)
(declare-const __init Loc)
(assert (distinct f1_0_main_Load f234_0_slide95_FieldAccess f411_0_slide95_EQ f411_0_slide95_EQ' f196_0_create_LE __init ))

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
    (cfg_trans2 pc f1_0_main_Load pc1 f234_0_slide95_FieldAccess (exists ((x4 Int) (x5 Int)) (and (and (and (and (and (> x4 (- 1)) (> arg2 1)) (> arg1P (- 1))) (> x5 arg2P)) (> x5 (- 1))) (> arg1 0))))
    (cfg_trans2 pc f1_0_main_Load pc1 f234_0_slide95_FieldAccess (exists ((x10 Int)) (and (and (and (and (> x10 (- 1)) (> arg2 1)) (< arg2P 1)) (> arg1P (- 1))) (> arg1 0))))
    (cfg_trans2 pc f234_0_slide95_FieldAccess pc1 f411_0_slide95_EQ (and (and (and (> arg2 0) (= arg1 arg1P)) (= arg2 arg2P)) (= arg2 arg3P)))
    (cfg_trans2 pc f411_0_slide95_EQ pc1 f411_0_slide95_EQ' (exists ((x39 Int) (x40 Int) (x41 Int) (x42 Int) (x43 Int) (x44 Int) (x45 Int)) (and (and (and (and (and (and (and (and (and (and (and (and (and (> x39 (- 1)) (> arg2 0)) (< x39 x40)) (> arg3 (- 1))) (< x39 arg3)) (> x41 x39)) (< x42 arg2)) (< x39 x42)) (> x43 x39)) (>= arg1 x44)) (= (- arg1 (* 2 x45)) 0)) (= arg1 arg1P)) (= arg2 arg2P)) (= arg3 arg3P))))
    (cfg_trans2 pc f411_0_slide95_EQ' pc1 f411_0_slide95_EQ (exists ((x52 Int) (x53 Int) (x54 Int) (x55 Int)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (> x52 (- 1)) (> arg2 0)) (< x52 arg3P)) (> arg3 (- 1))) (< x52 arg3)) (> x53 x52)) (< arg2P arg2)) (< x52 arg2P)) (> x54 x52)) (= (- arg1 (* 2 x55)) 0)) (>= arg1 arg1P)) (>= (- arg1 (* 2 x55)) 0)) (< (- arg1 (* 2 x55)) 2)) (< (- arg1 (* 2 arg1P)) 2)) (>= (- arg1 (* 2 arg1P)) 0))))
    (cfg_trans2 pc f411_0_slide95_EQ pc1 f411_0_slide95_EQ' (exists ((x59 Int) (x60 Int) (x61 Int) (x62 Int) (x63 Int)) (and (and (and (and (and (and (and (and (and (and (and (> arg3 (- 1)) (> arg2 0)) (< x59 arg3)) (< x60 arg2)) (= (- arg1 (* 2 x61)) 1)) (>= arg1 x62)) (> x60 (- 1))) (>= x60 x63)) (> x59 0)) (= arg1 arg1P)) (= arg2 arg2P)) (= arg3 arg3P))))
    (cfg_trans2 pc f411_0_slide95_EQ' pc1 f411_0_slide95_EQ (exists ((x70 Int) (x71 Int)) (and (and (and (and (and (and (and (and (and (and (and (and (> arg3 (- 1)) (> arg2 0)) (< arg3P arg3)) (< x70 arg2)) (= (- arg1 (* 2 x71)) 1)) (>= arg1 arg1P)) (> x70 (- 1))) (> arg3P 0)) (>= x70 arg2P)) (>= (- arg1 (* 2 x71)) 0)) (< (- arg1 (* 2 x71)) 2)) (< (- arg1 (* 2 arg1P)) 2)) (>= (- arg1 (* 2 arg1P)) 0))))
    (cfg_trans2 pc f411_0_slide95_EQ pc1 f411_0_slide95_EQ' (exists ((x75 Int) (x76 Int) (x77 Int)) (and (and (and (and (and (and (and (and (and (> arg3 (- 1)) (> arg2 0)) (< x75 arg3)) (< x75 arg2)) (= (- arg1 (* 2 x76)) 1)) (> x75 0)) (>= arg1 x77)) (= arg1 arg1P)) (= arg2 arg2P)) (= arg3 arg3P))))
    (cfg_trans2 pc f411_0_slide95_EQ' pc1 f411_0_slide95_EQ (exists ((x83 Int)) (and (and (and (and (and (and (and (and (and (and (and (> arg3 (- 1)) (> arg2 0)) (< arg2P arg3)) (< arg2P arg2)) (= (- arg1 (* 2 x83)) 1)) (>= arg1 arg1P)) (> arg2P 0)) (>= (- arg1 (* 2 x83)) 0)) (< (- arg1 (* 2 x83)) 2)) (< (- arg1 (* 2 arg1P)) 2)) (>= (- arg1 (* 2 arg1P)) 0)) (= arg2P arg3P))))
    (cfg_trans2 pc f1_0_main_Load pc1 f196_0_create_LE (exists ((x37 Int) (x36 Int)) (and (and (and (and (> x37 (- 1)) (> arg2 1)) (> x36 (- 1))) (> arg1 0)) (= (- x36 1) arg1P))))
    (cfg_trans2 pc f196_0_create_LE pc1 f196_0_create_LE (and (> arg1 0) (= (- arg1 1) arg1P)))
    (cfg_trans2 pc __init pc1 f1_0_main_Load true)
  )
)
