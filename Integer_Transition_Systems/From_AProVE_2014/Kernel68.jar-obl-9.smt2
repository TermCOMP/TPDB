(declare-sort Loc 0)
(declare-const f1_0_main_Load Loc)
(declare-const f234_0_slide68_FieldAccess Loc)
(declare-const f288_0_slide68_EQ Loc)
(declare-const f288_0_slide68_EQ' Loc)
(declare-const f196_0_create_LE Loc)
(declare-const __init Loc)
(assert (distinct f1_0_main_Load f234_0_slide68_FieldAccess f288_0_slide68_EQ f288_0_slide68_EQ' f196_0_create_LE __init ))

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
    (cfg_trans2 pc f1_0_main_Load pc1 f234_0_slide68_FieldAccess (exists ((x4 Int) (x5 Int)) (and (and (and (and (and (> x4 (- 1)) (> arg2 1)) (> arg1P (- 1))) (> x5 arg2P)) (> x5 (- 1))) (> arg1 0))))
    (cfg_trans2 pc f1_0_main_Load pc1 f234_0_slide68_FieldAccess (exists ((x10 Int)) (and (and (and (and (> x10 (- 1)) (> arg2 1)) (< arg2P 1)) (> arg1P (- 1))) (> arg1 0))))
    (cfg_trans2 pc f234_0_slide68_FieldAccess pc1 f288_0_slide68_EQ (and (and (and (and (and (and (and (> arg2 0) (= arg1 arg1P)) (= 0 arg2P)) (= arg2 arg3P)) (= arg2 arg4P)) (= 0 arg5P)) (= arg2 arg6P)) (= arg2 arg7P)))
    (cfg_trans2 pc f288_0_slide68_EQ pc1 f288_0_slide68_EQ' (exists ((x99 Int) (x100 Int) (x101 Int) (x102 Int) (x103 Int) (x104 Int) (x105 Int)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (< x99 arg3) (> arg3 0)) (< x100 arg6)) (> arg6 (- 1))) (> x101 x102)) (> x100 (- 1))) (< x100 x102)) (> x101 (- 1))) (> x103 x100)) (< x100 x99)) (>= arg1 x104)) (= (- arg1 (* 2 x105)) 0)) (= arg3 arg4)) (= arg6 arg7)) (= arg1 arg1P)) (= arg2 arg2P)) (= arg3 arg3P)) (= arg3 arg4P)) (= arg5 arg5P)) (= arg6 arg6P)) (= arg6 arg7P))))
    (cfg_trans2 pc f288_0_slide68_EQ' pc1 f288_0_slide68_EQ (exists ((x117 Int) (x118 Int) (x119 Int) (x120 Int)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (< arg4P arg3) (> arg3 0)) (< x117 arg6)) (> arg6 (- 1))) (> x118 arg5P)) (> x117 (- 1))) (< x117 arg5P)) (> x118 (- 1))) (> x119 x117)) (< x117 arg4P)) (= (- arg1 (* 2 x120)) 0)) (>= arg1 arg1P)) (>= (- arg1 (* 2 x120)) 0)) (< (- arg1 (* 2 x120)) 2)) (< (- arg1 (* 2 arg1P)) 2)) (>= (- arg1 (* 2 arg1P)) 0)) (= arg3 arg4)) (= arg6 arg7)) (= 1 arg2P)) (= 0 arg6P)) (= arg5P arg7P))))
    (cfg_trans2 pc f288_0_slide68_EQ pc1 f288_0_slide68_EQ' (exists ((x128 Int) (x129 Int) (x130 Int) (x131 Int) (x132 Int) (x133 Int)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (> arg4 0) (> arg5 0)) (> arg7 (- 1))) (< x128 arg7)) (< x129 arg4)) (< x128 arg5)) (> arg2 0)) (= (- arg1 (* 2 x130)) 1)) (> x131 (- 1))) (> x131 x129)) (>= arg1 x132)) (> x129 (- 1))) (>= x129 x133)) (> x128 0)) (= arg1 arg1P)) (= arg2 arg2P)) (= arg3 arg3P)) (= arg4 arg4P)) (= arg5 arg5P)) (= arg6 arg6P)) (= arg7 arg7P))))
    (cfg_trans2 pc f288_0_slide68_EQ' pc1 f288_0_slide68_EQ (exists ((x145 Int) (x146 Int) (x147 Int)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (> arg4 0) (> arg5 0)) (> arg7 (- 1))) (< arg5P arg7)) (< x145 arg4)) (< arg5P arg5)) (> arg2 0)) (= (- arg1 (* 2 x146)) 1)) (> x147 (- 1))) (> x147 x145)) (>= arg1 arg1P)) (> x145 (- 1))) (> arg5P 0)) (>= x145 arg4P)) (>= (- arg1 (* 2 x146)) 0)) (< (- arg1 (* 2 x146)) 2)) (< (- arg1 (* 2 arg1P)) 2)) (>= (- arg1 (* 2 arg1P)) 0)) (= 1 arg2P)) (= 0 arg6P)) (= arg5P arg7P))))
    (cfg_trans2 pc f288_0_slide68_EQ pc1 f288_0_slide68_EQ' (exists ((x156 Int) (x157 Int) (x158 Int) (x159 Int) (x160 Int)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (< x156 arg3) (> arg3 0)) (< x156 arg6)) (> arg6 (- 1))) (> x157 x158)) (> x157 (- 1))) (= (- arg1 (* 2 x159)) 1)) (> x156 0)) (>= arg1 x160)) (= arg3 arg4)) (= arg6 arg7)) (= arg1 arg1P)) (= arg2 arg2P)) (= arg3 arg3P)) (= arg3 arg4P)) (= arg5 arg5P)) (= arg6 arg6P)) (= arg6 arg7P))))
    (cfg_trans2 pc f288_0_slide68_EQ' pc1 f288_0_slide68_EQ (exists ((x170 Int) (x172 Int) (x173 Int)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (< arg3P arg3) (> arg3 0)) (< arg3P arg6)) (> arg6 (- 1))) (> x170 x172)) (> x170 (- 1))) (= (- arg1 (* 2 x173)) 1)) (>= arg1 arg1P)) (> arg3P 0)) (>= (- arg1 (* 2 x173)) 0)) (< (- arg1 (* 2 x173)) 2)) (< (- arg1 (* 2 arg1P)) 2)) (>= (- arg1 (* 2 arg1P)) 0)) (= arg3 arg4)) (= arg6 arg7)) (= 0 arg2P)) (= arg3P arg4P)) (= 0 arg5P)) (= arg3P arg6P)) (= arg3P arg7P))))
    (cfg_trans2 pc f288_0_slide68_EQ pc1 f288_0_slide68_EQ' (exists ((x181 Int) (x182 Int) (x183 Int) (x184 Int) (x185 Int) (x186 Int) (x187 Int) (x188 Int) (x189 Int)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (> arg4 0) (> arg5 0)) (> arg6 (- 1))) (< arg6 arg2)) (> x181 arg6)) (< arg6 arg3)) (> x182 arg6)) (> arg7 (- 1))) (< x183 arg7)) (< x183 x184)) (< x185 arg4)) (> x183 (- 1))) (> x186 x183)) (< x187 arg5)) (> arg2 0)) (< x183 x185)) (< x183 x187)) (>= arg1 x188)) (= (- arg1 (* 2 x189)) 0)) (= arg1 arg1P)) (= arg2 arg2P)) (= arg3 arg3P)) (= arg4 arg4P)) (= arg5 arg5P)) (= arg6 arg6P)) (= arg7 arg7P))))
    (cfg_trans2 pc f288_0_slide68_EQ' pc1 f288_0_slide68_EQ (exists ((x202 Int) (x203 Int) (x204 Int) (x205 Int) (x206 Int)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (> arg4 0) (> arg5 0)) (> arg6 (- 1))) (< arg6 arg2)) (> x202 arg6)) (< arg6 arg3)) (> x203 arg6)) (> arg7 (- 1))) (< x204 arg7)) (< x204 arg7P)) (< arg4P arg4)) (> x204 (- 1))) (> x205 x204)) (< arg5P arg5)) (> arg2 0)) (< x204 arg4P)) (< x204 arg5P)) (= (- arg1 (* 2 x206)) 0)) (>= arg1 arg1P)) (>= (- arg1 (* 2 x206)) 0)) (< (- arg1 (* 2 x206)) 2)) (< (- arg1 (* 2 arg1P)) 2)) (>= (- arg1 (* 2 arg1P)) 0)) (= arg3 arg3P)) (= arg2 arg6P))))
    (cfg_trans2 pc f288_0_slide68_EQ pc1 f288_0_slide68_EQ' (exists ((x214 Int) (x215 Int) (x216 Int) (x217 Int) (x218 Int) (x219 Int) (x220 Int) (x221 Int)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (> arg4 0) (> arg5 0)) (> arg7 (- 1))) (< x214 arg7)) (< x215 arg4)) (< x216 arg5)) (> arg2 0)) (= (- arg1 (* 2 x217)) 1)) (> arg3 (- 1))) (<= x218 arg3)) (>= x215 x219)) (> x215 (- 1))) (>= x216 x220)) (> arg6 0)) (>= arg1 x221)) (> x216 (- 1))) (> x214 0)) (= arg1 arg1P)) (= arg2 arg2P)) (= arg3 arg3P)) (= arg4 arg4P)) (= arg5 arg5P)) (= arg6 arg6P)) (= arg7 arg7P))))
    (cfg_trans2 pc f288_0_slide68_EQ' pc1 f288_0_slide68_EQ (exists ((x235 Int) (x236 Int) (x237 Int)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (> arg4 0) (> arg5 0)) (> arg7 (- 1))) (< arg7P arg7)) (< x235 arg4)) (< x236 arg5)) (> arg2 0)) (= (- arg1 (* 2 x237)) 1)) (> arg3 (- 1))) (<= arg3P arg3)) (>= x235 arg4P)) (> x235 (- 1))) (>= x236 arg5P)) (> arg6 0)) (>= arg1 arg1P)) (> arg7P 0)) (> x236 (- 1))) (>= (- arg1 (* 2 x237)) 0)) (< (- arg1 (* 2 x237)) 2)) (< (- arg1 (* 2 arg1P)) 2)) (>= (- arg1 (* 2 arg1P)) 0)) (= arg6 arg6P))))
    (cfg_trans2 pc f288_0_slide68_EQ pc1 f288_0_slide68_EQ' (exists ((x245 Int) (x246 Int) (x247 Int) (x248 Int) (x249 Int) (x250 Int) (x251 Int)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (< x245 arg3) (> arg3 0)) (< x246 arg6)) (> arg6 (- 1))) (< x247 x248)) (> x248 (- 1))) (= (- arg1 (* 2 x249)) 1)) (>= arg1 x250)) (> x245 (- 1))) (>= x245 x251)) (> x246 0)) (= arg3 arg4)) (= arg6 arg7)) (= arg1 arg1P)) (= arg2 arg2P)) (= arg3 arg3P)) (= arg3 arg4P)) (= arg5 arg5P)) (= arg6 arg6P)) (= arg6 arg7P))))
    (cfg_trans2 pc f288_0_slide68_EQ' pc1 f288_0_slide68_EQ (exists ((x266 Int) (x267 Int) (x268 Int) (x269 Int)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (< x266 arg3) (> arg3 0)) (< arg7P arg6)) (> arg6 (- 1))) (< x267 x268)) (> x268 (- 1))) (= (- arg1 (* 2 x269)) 1)) (>= arg1 arg1P)) (> x266 (- 1))) (> arg7P 0)) (>= x266 arg4P)) (>= (- arg1 (* 2 x269)) 0)) (< (- arg1 (* 2 x269)) 2)) (< (- arg1 (* 2 arg1P)) 2)) (>= (- arg1 (* 2 arg1P)) 0)) (= arg3 arg4)) (= arg6 arg7))))
    (cfg_trans2 pc f1_0_main_Load pc1 f196_0_create_LE (exists ((x96 Int) (x95 Int)) (and (and (and (and (> x96 (- 1)) (> arg2 1)) (> x95 (- 1))) (> arg1 0)) (= (- x95 1) arg1P))))
    (cfg_trans2 pc f196_0_create_LE pc1 f196_0_create_LE (and (> arg1 0) (= (- arg1 1) arg1P)))
    (cfg_trans2 pc __init pc1 f1_0_main_Load true)
  )
)
