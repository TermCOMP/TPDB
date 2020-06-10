(declare-sort Loc 0)
(declare-const f337_0_createList_Load Loc)
(declare-const f586_0_createList_Load Loc)
(declare-const f1_0_main_Load Loc)
(declare-const f1030_0_getLast_NE Loc)
(declare-const f349_0_createList_Return Loc)
(declare-const f1076_0_getLast_FieldAccess Loc)
(declare-const f1004_0_createList_LE Loc)
(declare-const __init Loc)
(assert (distinct f337_0_createList_Load f586_0_createList_Load f1_0_main_Load f1030_0_getLast_NE f349_0_createList_Return f1076_0_getLast_FieldAccess f1004_0_createList_LE __init ))

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

(define-fun init_main ( (pc Loc) (arg1 Int) (arg2 Int) (arg3 Int) (arg4 Int) (arg5 Int) (arg6 Int) (arg7 Int) (arg8 Int) (arg9 Int) (arg10 Int) (arg11 Int) (arg12 Int) (arg13 Int) (arg14 Int) (arg15 Int) (arg16 Int) (arg17 Int) (arg18 Int) (arg19 Int) (arg20 Int) (arg21 Int) (arg22 Int) (arg23 Int) (arg24 Int) (arg25 Int) ) Bool
  (cfg_init pc __init true))

(define-fun next_main (
                 (pc Loc) (arg1 Int) (arg2 Int) (arg3 Int) (arg4 Int) (arg5 Int) (arg6 Int) (arg7 Int) (arg8 Int) (arg9 Int) (arg10 Int) (arg11 Int) (arg12 Int) (arg13 Int) (arg14 Int) (arg15 Int) (arg16 Int) (arg17 Int) (arg18 Int) (arg19 Int) (arg20 Int) (arg21 Int) (arg22 Int) (arg23 Int) (arg24 Int) (arg25 Int)
                 (pc1 Loc) (arg1P Int) (arg2P Int) (arg3P Int) (arg4P Int) (arg5P Int) (arg6P Int) (arg7P Int) (arg8P Int) (arg9P Int) (arg10P Int) (arg11P Int) (arg12P Int) (arg13P Int) (arg14P Int) (arg15P Int) (arg16P Int) (arg17P Int) (arg18P Int) (arg19P Int) (arg20P Int) (arg21P Int) (arg22P Int) (arg23P Int) (arg24P Int) (arg25P Int)
             ) Bool
  (or
    (cfg_trans2 pc f337_0_createList_Load pc1 f586_0_createList_Load (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (> arg2 9) (> arg2P 9)) (<= (+ arg6 5) arg2)) (<= (+ arg7 3) arg2)) (= arg1 arg1P)) (= 0 arg3P)) (= 0 arg4P)) (= arg4 arg5P)) (= arg6P arg7P)) (= 0 arg8P)) (= 0 arg9P)) (= 0 arg10P)) (= arg3 arg15P)) (= arg3 arg16P)) (= arg4 arg17P)) (= arg5 arg19P)) (= arg6 arg20P)) (= arg7 arg23P)))
    (cfg_trans2 pc f1_0_main_Load pc1 f1030_0_getLast_NE (exists ((x25 Int)) (and (and (and (> x25 (- 1)) (> arg2 0)) (> arg1 0)) (> arg1P 6))))
    (cfg_trans2 pc f349_0_createList_Return pc1 f1030_0_getLast_NE (and (and (and (and (and (and (and (and (and (> arg1 6) (> arg1P 6)) (<= (+ arg4 5) arg1)) (<= (+ arg5 7) arg1)) (<= (+ arg7 3) arg1)) (<= (+ arg6 7) arg1)) (= arg2 arg2P)) (= arg3 arg3P)) (= arg4 arg4P)) (= arg7 arg7P)))
    (cfg_trans2 pc f1030_0_getLast_NE pc1 f1076_0_getLast_FieldAccess (exists ((x47 Int) (x48 Int) (x49 Int)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (> arg2 (- 1)) (> x47 0)) (< x48 arg2)) (< x47 arg3)) (> arg3 (- 1))) (> arg4 0)) (> x48 0)) (> x49 x47)) (> x49 arg2P)) (> x49 (- 1))) (<= (+ arg1P 6) arg1)) (> arg1 6)) (> arg1P 0)) (<= (+ arg4 5) arg1)) (<= (+ arg5 7) arg1)) (<= (+ arg7 3) arg1)) (<= (+ arg6 7) arg1))))
    (cfg_trans2 pc f1030_0_getLast_NE pc1 f1076_0_getLast_FieldAccess (exists ((x61 Int) (x62 Int) (x63 Int)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (> arg2 (- 1)) (> x61 0)) (< x62 arg2)) (< x61 arg3)) (> arg3 (- 1))) (> arg4 0)) (> x63 x61)) (> x63 arg2P)) (> x63 (- 1))) (<= (+ arg1P 6) arg1)) (> arg1 6)) (> arg1P 0)) (<= (+ arg4 5) arg1)) (<= (+ arg5 7) arg1)) (<= (+ arg7 3) arg1)) (<= (+ arg6 7) arg1))))
    (cfg_trans2 pc f1_0_main_Load pc1 f337_0_createList_Load (and (and (and (and (and (and (and (> arg1P (- 1)) (> arg2 0)) (<= (- arg2P 7) arg1)) (> arg1 0)) (> arg2P 7)) (= 1 arg5P)) (= 0 arg6P)) (= 0 arg7P)))
    (cfg_trans2 pc f586_0_createList_Load pc1 f1004_0_createList_LE (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (> arg2 11) (> arg1P 11)) (<= (+ arg20 5) arg2)) (<= (+ arg21 9) arg2)) (<= (+ arg22 9) arg2)) (<= (+ arg23 3) arg2)) (= arg1 arg2P)) (= arg13 arg3P)) (= arg11 arg4P)) (= arg7 arg5P)) (= arg12 arg6P)) (= arg6 arg7P)) (= arg3 arg9P)) (= arg14 arg10P)) (= arg5 arg11P)) (= 0 arg12P)) (= arg4 arg13P)) (= arg8 arg14P)) (= arg9 arg15P)) (= arg10 arg16P)) (= arg15 arg17P)) (= arg16 arg18P)) (= arg17 arg19P)) (= arg19 arg20P)) (= arg20 arg21P)) (= arg23 arg25P)))
    (cfg_trans2 pc f1004_0_createList_LE pc1 f1004_0_createList_LE (exists ((x98 Int) (x139 Int)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (> arg2 0) (> x98 (- 1))) (> arg6 0)) (> arg3 0)) (> arg20 (- 1))) (< arg20 x98)) (> arg10 0)) (> arg4 0)) (> arg13 0)) (> arg11 0)) (> arg12 0)) (> x139 (- 1))) (> arg9 0)) (> arg5 0)) (> arg18 0)) (> arg14 0)) (> arg19 0)) (> arg17 0)) (> arg15 0)) (> arg16 0)) (> arg25 (- 1))) (> arg21 (- 1))) (> arg1 9)) (> arg1P 9)) (<= (+ arg21 5) arg1)) (<= (+ arg22 9) arg1)) (<= (+ arg23 9) arg1)) (<= (+ arg25 3) arg1)) (<= (+ arg24 9) arg1)) (= (- arg2 1) arg2P)) (= arg3 arg3P)) (= arg6 arg6P)) (= arg7 arg7P)) (= arg8 arg8P)) (= arg10 arg10P)) (= arg12 arg12P)) (= (+ arg20 1) arg20P)) (= (+ arg21 1) arg21P)) (= (+ arg25 1) arg25P))))
    (cfg_trans2 pc f1004_0_createList_LE pc1 f1004_0_createList_LE (exists ((x140 Int) (x175 Int)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (> arg2 0) (> x140 (- 1))) (> arg6 0)) (> arg3 0)) (> arg20 (- 1))) (< arg20 x140)) (> arg10 0)) (> arg12 0)) (> x175 (- 1))) (> arg18 0)) (> arg19 0)) (> arg17 0)) (> arg8 0)) (> arg25 (- 1))) (> arg21 (- 1))) (> arg1 11)) (> arg1P 13)) (<= (+ arg21 5) arg1)) (<= (+ arg22 9) arg1)) (<= (+ arg23 9) arg1)) (<= (+ arg24 9) arg1)) (<= (+ arg25 3) arg1)) (= arg8 arg9)) (= arg10 arg11)) (= arg12 arg13)) (= arg7 arg16)) (= (- arg2 1) arg2P)) (= 0 arg3P)) (= 1 arg4P)) (= 1 arg5P)) (= arg8 arg8P)) (= arg10 arg10P)) (= arg12 arg12P)) (= 0 arg13P)) (= 2 arg15P)) (= (+ arg20 1) arg20P)) (= (+ arg21 1) arg21P)) (= (+ arg25 1) arg25P))))
    (cfg_trans2 pc __init pc1 f1_0_main_Load true)
  )
)
