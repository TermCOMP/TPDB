(declare-sort Loc 0)
(declare-const f309_0_createList_Load Loc)
(declare-const f510_0_createList_Load Loc)
(declare-const f1_0_main_Load Loc)
(declare-const f673_0_createList_LE Loc)
(declare-const __init Loc)
(assert (distinct f309_0_createList_Load f510_0_createList_Load f1_0_main_Load f673_0_createList_LE __init ))

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

(define-fun init_main ( (pc Loc) (arg1 Int) (arg2 Int) (arg3 Int) (arg4 Int) (arg5 Int) (arg6 Int) (arg7 Int) (arg8 Int) (arg9 Int) (arg10 Int) (arg11 Int) (arg12 Int) (arg13 Int) (arg14 Int) (arg15 Int) (arg16 Int) (arg17 Int) (arg18 Int) (arg19 Int) (arg20 Int) ) Bool
  (cfg_init pc __init true))

(define-fun next_main (
                 (pc Loc) (arg1 Int) (arg2 Int) (arg3 Int) (arg4 Int) (arg5 Int) (arg6 Int) (arg7 Int) (arg8 Int) (arg9 Int) (arg10 Int) (arg11 Int) (arg12 Int) (arg13 Int) (arg14 Int) (arg15 Int) (arg16 Int) (arg17 Int) (arg18 Int) (arg19 Int) (arg20 Int)
                 (pc1 Loc) (arg1P Int) (arg2P Int) (arg3P Int) (arg4P Int) (arg5P Int) (arg6P Int) (arg7P Int) (arg8P Int) (arg9P Int) (arg10P Int) (arg11P Int) (arg12P Int) (arg13P Int) (arg14P Int) (arg15P Int) (arg16P Int) (arg17P Int) (arg18P Int) (arg19P Int) (arg20P Int)
             ) Bool
  (or
    (cfg_trans2 pc f309_0_createList_Load pc1 f510_0_createList_Load (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (<= arg2P arg2) (> arg2 9)) (> arg2P 9)) (<= (+ arg7 3) arg2)) (<= (+ arg6 5) arg2)) (= arg1 arg1P)) (= 0 arg3P)) (= 0 arg4P)) (= arg3 arg5P)) (= 0 arg7P)) (= 0 arg8P)) (= 0 arg9P)) (= arg3 arg13P)) (= arg4 arg14P)) (= arg4 arg15P)) (= arg5 arg17P)) (= arg6 arg18P)) (= arg7 arg19P)))
    (cfg_trans2 pc f1_0_main_Load pc1 f309_0_createList_Load (and (and (and (and (and (and (and (> arg1P (- 1)) (> arg2 0)) (<= (- arg2P 7) arg1)) (> arg1 0)) (> arg2P 7)) (= 1 arg5P)) (= 0 arg6P)) (= 0 arg7P)))
    (cfg_trans2 pc f510_0_createList_Load pc1 f673_0_createList_LE (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (> arg2 11) (> arg1P 11)) (<= (+ arg19 3) arg2)) (<= (+ arg18 5) arg2)) (= arg1 arg2P)) (= arg4 arg3P)) (= arg5 arg4P)) (= arg11 arg5P)) (= arg10 arg6P)) (= arg3 arg7P)) (= arg6 arg8P)) (= arg7 arg9P)) (= arg8 arg10P)) (= arg9 arg11P)) (= arg12 arg12P)) (= arg13 arg13P)) (= arg14 arg14P)) (= arg15 arg15P)) (= arg17 arg16P)) (= arg18 arg19P)) (= arg19 arg20P)))
    (cfg_trans2 pc f673_0_createList_LE pc1 f673_0_createList_LE (exists ((x41 Int) (x76 Int)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (> arg2 0) (> x41 (- 1))) (> arg16 0)) (< arg16 x41)) (> arg4 0)) (> arg3 0)) (> arg7 0)) (> arg6 0)) (> arg5 0)) (> arg15 0)) (> x76 (- 1))) (> arg9 0)) (> arg12 0)) (> arg10 0)) (> arg14 0)) (> arg13 0)) (> arg11 0)) (> arg8 0)) (> arg20 (- 1))) (> arg19 (- 1))) (> arg1 11)) (> arg1P 11)) (<= (+ arg17 11) arg1)) (<= (+ arg18 9) arg1)) (<= (+ arg20 3) arg1)) (<= (+ arg19 5) arg1)) (= (- arg2 1) arg2P)) (= arg3 arg3P)) (= arg4 arg4P)) (= (+ arg16 1) arg16P)) (= (+ arg19 1) arg19P)) (= (+ arg20 1) arg20P))))
    (cfg_trans2 pc __init pc1 f1_0_main_Load true)
  )
)
