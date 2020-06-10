(declare-sort Loc 0)
(declare-const f1_0_main_Load Loc)
(declare-const f234_0_slide88_FieldAccess Loc)
(declare-const f292_0_slide88_EQ Loc)
(declare-const f292_0_slide88_EQ' Loc)
(declare-const f196_0_create_LE Loc)
(declare-const __init Loc)
(assert (distinct f1_0_main_Load f234_0_slide88_FieldAccess f292_0_slide88_EQ f292_0_slide88_EQ' f196_0_create_LE __init ))

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

(define-fun init_main ( (pc Loc) (arg1 Int) (arg2 Int) (arg3 Int) (arg4 Int) (arg5 Int) (arg6 Int) (arg7 Int) ) Bool
  (cfg_init pc __init true))

(define-fun next_main (
                 (pc Loc) (arg1 Int) (arg2 Int) (arg3 Int) (arg4 Int) (arg5 Int) (arg6 Int) (arg7 Int)
                 (pc1 Loc) (arg1P Int) (arg2P Int) (arg3P Int) (arg4P Int) (arg5P Int) (arg6P Int) (arg7P Int)
             ) Bool
  (or
    (cfg_trans2 pc f1_0_main_Load pc1 f234_0_slide88_FieldAccess (exists ((x4 Int) (x5 Int)) (and (and (and (and (and (> x4 (- 1)) (> arg2 1)) (> arg1P (- 1))) (> x5 arg2P)) (> x5 (- 1))) (> arg1 0))))
    (cfg_trans2 pc f1_0_main_Load pc1 f234_0_slide88_FieldAccess (exists ((x10 Int)) (and (and (and (and (> x10 (- 1)) (> arg2 1)) (< arg2P 1)) (> arg1P (- 1))) (> arg1 0))))
    (cfg_trans2 pc f234_0_slide88_FieldAccess pc1 f292_0_slide88_EQ (and (and (and (and (and (and (and (> arg2 0) (= arg1 arg1P)) (= 0 arg2P)) (= arg2 arg3P)) (= arg2 arg4P)) (= 0 arg5P)) (= arg2 arg6P)) (= arg2 arg7P)))
    (cfg_trans2 pc f292_0_slide88_EQ pc1 f292_0_slide88_EQ' (exists ((x48 Int) (x49 Int) (x50 Int) (x51 Int) (x52 Int) (x53 Int) (x54 Int)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (> x48 0) (> arg4 0)) (> arg5 0)) (> arg6 (- 1))) (< arg6 arg2)) (> x49 arg6)) (< arg6 arg3)) (> x48 arg7)) (> arg7 (- 1))) (< arg7 arg5)) (< x50 arg4)) (< arg7 arg4)) (= (- arg1 (* 2 x51)) 0)) (> x48 x52)) (> x49 0)) (> arg2 0)) (>= arg1 x53)) (< x54 arg5)) (= arg1 arg1P)) (= arg2 arg2P)) (= arg3 arg3P)) (= arg4 arg4P)) (= arg5 arg5P)) (= arg6 arg6P)) (= arg7 arg7P))))
    (cfg_trans2 pc f292_0_slide88_EQ' pc1 f292_0_slide88_EQ (exists ((x67 Int) (x68 Int) (x69 Int)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (> x67 0) (> arg4 0)) (> arg5 0)) (> arg6 (- 1))) (< arg6 arg2)) (> x68 arg6)) (< arg6 arg3)) (> x67 arg7)) (> arg7 (- 1))) (< arg7 arg5)) (< arg4P arg4)) (< arg7 arg4)) (= (- arg1 (* 2 x69)) 0)) (> x67 arg7P)) (> x68 0)) (> arg2 0)) (< arg5P arg5)) (>= arg1 arg1P)) (>= (- arg1 (* 2 x69)) 0)) (< (- arg1 (* 2 x69)) 2)) (< (- arg1 (* 2 arg1P)) 2)) (>= (- arg1 (* 2 arg1P)) 0)) (= arg3 arg3P)) (= arg2 arg6P))))
    (cfg_trans2 pc f292_0_slide88_EQ pc1 f292_0_slide88_EQ' (exists ((x77 Int) (x78 Int) (x79 Int) (x80 Int) (x81 Int)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (> arg6 (- 1)) (> arg3 0)) (< arg6 arg2)) (> x77 arg6)) (< arg6 arg3)) (> x77 arg7)) (> arg7 (- 1))) (< arg7 arg5)) (< arg7 arg3)) (= (- arg1 (* 2 x78)) 0)) (< x79 arg3)) (> x77 x80)) (> x77 (- 1))) (>= arg1 x81)) (= arg3 arg4)) (= arg1 arg1P)) (= arg2 arg2P)) (= arg3 arg3P)) (= arg3 arg4P)) (= arg5 arg5P)) (= arg6 arg6P)) (= arg7 arg7P))))
    (cfg_trans2 pc f292_0_slide88_EQ' pc1 f292_0_slide88_EQ (exists ((x93 Int) (x94 Int)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (> arg6 (- 1)) (> arg3 0)) (< arg6 arg2)) (> x93 arg6)) (< arg6 arg3)) (> x93 arg7)) (> arg7 (- 1))) (< arg7 arg5)) (< arg7 arg3)) (= (- arg1 (* 2 x94)) 0)) (< arg4P arg3)) (> x93 arg5P)) (>= arg1 arg1P)) (> x93 (- 1))) (>= (- arg1 (* 2 x94)) 0)) (< (- arg1 (* 2 x94)) 2)) (< (- arg1 (* 2 arg1P)) 2)) (>= (- arg1 (* 2 arg1P)) 0)) (= arg3 arg4)) (= 1 arg2P)) (= 0 arg6P)) (= arg5P arg7P))))
    (cfg_trans2 pc f1_0_main_Load pc1 f196_0_create_LE (exists ((x41 Int) (x40 Int)) (and (and (and (and (> x41 (- 1)) (> arg2 1)) (> x40 (- 1))) (> arg1 0)) (= (- x40 1) arg1P))))
    (cfg_trans2 pc f196_0_create_LE pc1 f196_0_create_LE (and (> arg1 0) (= (- arg1 1) arg1P)))
    (cfg_trans2 pc __init pc1 f1_0_main_Load true)
  )
)
