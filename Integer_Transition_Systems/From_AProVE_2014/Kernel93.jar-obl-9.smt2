(declare-sort Loc 0)
(declare-const f1_0_main_Load Loc)
(declare-const f234_0_slide93_FieldAccess Loc)
(declare-const f951_0_slide93_EQ Loc)
(declare-const f951_0_slide93_EQ' Loc)
(declare-const f196_0_create_LE Loc)
(declare-const __init Loc)
(assert (distinct f1_0_main_Load f234_0_slide93_FieldAccess f951_0_slide93_EQ f951_0_slide93_EQ' f196_0_create_LE __init ))

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
    (cfg_trans2 pc f1_0_main_Load pc1 f234_0_slide93_FieldAccess (exists ((x4 Int) (x5 Int)) (and (and (and (and (and (> x4 (- 1)) (> arg2 1)) (> arg1P (- 1))) (> x5 arg2P)) (> x5 (- 1))) (> arg1 0))))
    (cfg_trans2 pc f1_0_main_Load pc1 f234_0_slide93_FieldAccess (exists ((x10 Int)) (and (and (and (and (> x10 (- 1)) (> arg2 1)) (< arg2P 1)) (> arg1P (- 1))) (> arg1 0))))
    (cfg_trans2 pc f234_0_slide93_FieldAccess pc1 f951_0_slide93_EQ (and (and (> arg2 0) (= arg1 arg1P)) (= 0 arg2P)))
    (cfg_trans2 pc f234_0_slide93_FieldAccess pc1 f951_0_slide93_EQ (and (= arg1 arg1P) (= 1 arg2P)))
    (cfg_trans2 pc f951_0_slide93_EQ pc1 f951_0_slide93_EQ' (exists ((x25 Int) (x29 Int) (x36 Int)) (and (and (and (and (and (and (= (- arg1 (* 2 x25)) 0) (> arg2 0)) (< x29 arg2)) (> x29 0)) (>= arg1 x36)) (= arg1 arg1P)) (= arg2 arg2P))))
    (cfg_trans2 pc f951_0_slide93_EQ' pc1 f951_0_slide93_EQ (exists ((x40 Int) (x41 Int)) (and (and (and (and (and (and (and (and (and (= (- arg1 (* 2 x40)) 0) (> arg2 0)) (< x41 arg2)) (>= arg1 arg1P)) (> x41 0)) (>= (- arg1 (* 2 x40)) 0)) (< (- arg1 (* 2 x40)) 2)) (< (- arg1 (* 2 arg1P)) 2)) (>= (- arg1 (* 2 arg1P)) 0)) (= 0 arg2P))))
    (cfg_trans2 pc f951_0_slide93_EQ pc1 f951_0_slide93_EQ' (exists ((x44 Int) (x45 Int) (x46 Int)) (and (and (and (and (and (and (= (- arg1 (* 2 x44)) 1) (> arg2 0)) (< x45 arg2)) (> x45 0)) (>= arg1 x46)) (= arg1 arg1P)) (= arg2 arg2P))))
    (cfg_trans2 pc f951_0_slide93_EQ' pc1 f951_0_slide93_EQ (exists ((x50 Int) (x51 Int)) (and (and (and (and (and (and (and (and (and (= (- arg1 (* 2 x50)) 1) (> arg2 0)) (< x51 arg2)) (>= arg1 arg1P)) (> x51 0)) (>= (- arg1 (* 2 x50)) 0)) (< (- arg1 (* 2 x50)) 2)) (< (- arg1 (* 2 arg1P)) 2)) (>= (- arg1 (* 2 arg1P)) 0)) (= 1 arg2P))))
    (cfg_trans2 pc f951_0_slide93_EQ pc1 f951_0_slide93_EQ' (exists ((x54 Int) (x55 Int) (x56 Int)) (and (and (and (and (and (= (- arg1 (* 2 x54)) 1) (> arg2 0)) (< x55 arg2)) (>= arg1 x56)) (= arg1 arg1P)) (= arg2 arg2P))))
    (cfg_trans2 pc f951_0_slide93_EQ' pc1 f951_0_slide93_EQ (exists ((x60 Int) (x61 Int)) (and (and (and (and (and (and (and (and (= (- arg1 (* 2 x60)) 1) (> arg2 0)) (>= arg1 arg1P)) (< x61 arg2)) (>= (- arg1 (* 2 x60)) 0)) (< (- arg1 (* 2 x60)) 2)) (< (- arg1 (* 2 arg1P)) 2)) (>= (- arg1 (* 2 arg1P)) 0)) (= 1 arg2P))))
    (cfg_trans2 pc f951_0_slide93_EQ pc1 f951_0_slide93_EQ' (exists ((x64 Int) (x65 Int) (x66 Int)) (and (and (and (and (and (= (- arg1 (* 2 x64)) 0) (> arg2 0)) (< x65 arg2)) (>= arg1 x66)) (= arg1 arg1P)) (= arg2 arg2P))))
    (cfg_trans2 pc f951_0_slide93_EQ' pc1 f951_0_slide93_EQ (exists ((x70 Int) (x71 Int)) (and (and (and (and (and (and (and (and (= (- arg1 (* 2 x70)) 0) (> arg2 0)) (>= arg1 arg1P)) (< x71 arg2)) (>= (- arg1 (* 2 x70)) 0)) (< (- arg1 (* 2 x70)) 2)) (< (- arg1 (* 2 arg1P)) 2)) (>= (- arg1 (* 2 arg1P)) 0)) (= 1 arg2P))))
    (cfg_trans2 pc f1_0_main_Load pc1 f196_0_create_LE (exists ((x34 Int) (x33 Int)) (and (and (and (and (> x34 (- 1)) (> arg2 1)) (> x33 (- 1))) (> arg1 0)) (= (- x33 1) arg1P))))
    (cfg_trans2 pc f196_0_create_LE pc1 f196_0_create_LE (and (> arg1 0) (= (- arg1 1) arg1P)))
    (cfg_trans2 pc __init pc1 f1_0_main_Load true)
  )
)
