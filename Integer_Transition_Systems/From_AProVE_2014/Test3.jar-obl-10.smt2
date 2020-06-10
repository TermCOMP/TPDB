(declare-sort Loc 0)
(declare-const f94_0_mk_Return Loc)
(declare-const f158_0_main_InvokeMethod Loc)
(declare-const f1_0_main_Load Loc)
(declare-const f158_0_main_InvokeMethod' Loc)
(declare-const f1022_0_main_InvokeMethod Loc)
(declare-const f1022_0_main_InvokeMethod' Loc)
(declare-const f183_0_mk_LE Loc)
(declare-const f964_0_length_NULL Loc)
(declare-const __init Loc)
(assert (distinct f94_0_mk_Return f158_0_main_InvokeMethod f1_0_main_Load f158_0_main_InvokeMethod' f1022_0_main_InvokeMethod f1022_0_main_InvokeMethod' f183_0_mk_LE f964_0_length_NULL __init ))

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
    (cfg_trans2 pc f94_0_mk_Return pc1 f158_0_main_InvokeMethod (and (and (and (and (and (and (and (and (<= arg1P arg1) (> arg3 (- 1))) (<= (- arg1P 1) arg2)) (<= arg2P arg2)) (> arg1 0)) (> arg2 (- 1))) (> arg1P 0)) (> arg2P (- 1))) (= arg3 arg3P)))
    (cfg_trans2 pc f1_0_main_Load pc1 f158_0_main_InvokeMethod (and (and (and (and (and (<= arg1P arg1) (> arg2 (- 1))) (> arg1 0)) (> arg1P 0)) (> arg2P (- 1))) (= arg2 arg3P)))
    (cfg_trans2 pc f158_0_main_InvokeMethod pc1 f158_0_main_InvokeMethod' (exists ((x115 Int) (x116 Int) (x117 Int) (x118 Int)) (and (and (and (and (and (and (and (and (and (and (> arg3 (- 1)) (= (- arg3 (* 2 x115)) 1)) (<= x116 arg2)) (> arg1 0)) (> arg2 (- 1))) (> x117 (- 1))) (> x118 (- 1))) (> x116 (- 1))) (= arg1 arg1P)) (= arg2 arg2P)) (= arg3 arg3P))))
    (cfg_trans2 pc f158_0_main_InvokeMethod' pc1 f1022_0_main_InvokeMethod (exists ((x125 Int)) (and (and (and (and (and (and (and (and (and (> arg3 (- 1)) (= (- arg3 (* 2 x125)) 1)) (<= arg3P arg2)) (> arg1 0)) (> arg2 (- 1))) (> arg1P (- 1))) (> arg2P (- 1))) (> arg3P (- 1))) (< (- arg3 (* 2 x125)) 2)) (>= (- arg3 (* 2 x125)) 0))))
    (cfg_trans2 pc f158_0_main_InvokeMethod pc1 f158_0_main_InvokeMethod' (exists ((x129 Int) (x130 Int) (x131 Int) (x132 Int)) (and (and (and (and (and (and (and (and (and (and (= (- arg3 (* 2 x129)) 0) (> arg3 (- 1))) (<= x130 arg2)) (> arg1 0)) (> arg2 (- 1))) (> x131 (- 1))) (> x132 (- 1))) (> x130 (- 1))) (= arg1 arg1P)) (= arg2 arg2P)) (= arg3 arg3P))))
    (cfg_trans2 pc f158_0_main_InvokeMethod' pc1 f1022_0_main_InvokeMethod (exists ((x139 Int)) (and (and (and (and (and (and (and (and (and (= (- arg3 (* 2 x139)) 0) (> arg3 (- 1))) (<= arg3P arg2)) (> arg1 0)) (> arg2 (- 1))) (> arg1P (- 1))) (> arg2P (- 1))) (> arg3P (- 1))) (< (- arg3 (* 2 x139)) 2)) (>= (- arg3 (* 2 x139)) 0))))
    (cfg_trans2 pc f1022_0_main_InvokeMethod pc1 f1022_0_main_InvokeMethod' (exists ((x143 Int) (x144 Int) (x145 Int) (x146 Int) (x147 Int) (x148 Int) (x149 Int) (x150 Int)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (> x143 (- 1)) (> x144 (- 1))) (>= (* 5 x145) 0)) (>= (+ x143 x144) 0)) (> (+ (+ x143 x144) (* 5 x145)) 0)) (= (- x146 (* 2 x147)) 1)) (<= x148 arg1)) (<= x149 arg2)) (<= (+ x150 1) arg3)) (> arg1 (- 1))) (> arg2 (- 1))) (> arg3 0)) (> x148 (- 1))) (> x149 (- 1))) (> x150 (- 1))) (= arg1 arg1P)) (= arg2 arg2P)) (= arg3 arg3P))))
    (cfg_trans2 pc f1022_0_main_InvokeMethod' pc1 f1022_0_main_InvokeMethod (exists ((x157 Int) (x158 Int) (x159 Int) (x160 Int) (x161 Int)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (> x157 (- 1)) (> x158 (- 1))) (>= (* 5 x159) 0)) (>= (+ x157 x158) 0)) (> (+ (+ x157 x158) (* 5 x159)) 0)) (= (- x160 (* 2 x161)) 1)) (<= arg1P arg1)) (<= arg2P arg2)) (<= (+ arg3P 1) arg3)) (> arg1 (- 1))) (> arg2 (- 1))) (> arg3 0)) (> arg1P (- 1))) (> arg2P (- 1))) (> arg3P (- 1))) (< (- x160 (* 2 x161)) 2)) (>= (- x160 (* 2 x161)) 0))))
    (cfg_trans2 pc f1022_0_main_InvokeMethod pc1 f1022_0_main_InvokeMethod' (exists ((x165 Int) (x166 Int) (x167 Int) (x168 Int) (x169 Int) (x170 Int) (x171 Int) (x172 Int) (x173 Int) (x174 Int)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (> x165 (- 1)) (> x166 (- 1))) (>= (* 5 x167) 0)) (>= (+ x165 x166) 0)) (= (- x168 (* 2 x169)) 0)) (< x170 x171)) (> (+ (+ x165 x166) (* 5 x167)) 0)) (<= (+ x172 1) arg1)) (<= x173 arg2)) (<= x174 arg3)) (> arg1 0)) (> arg2 (- 1))) (> arg3 (- 1))) (> x172 (- 1))) (> x173 (- 1))) (> x174 (- 1))) (= arg1 arg1P)) (= arg2 arg2P)) (= arg3 arg3P))))
    (cfg_trans2 pc f1022_0_main_InvokeMethod' pc1 f1022_0_main_InvokeMethod (exists ((x181 Int) (x182 Int) (x183 Int) (x184 Int) (x185 Int) (x186 Int) (x187 Int)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (> x181 (- 1)) (> x182 (- 1))) (>= (* 5 x183) 0)) (>= (+ x181 x182) 0)) (= (- x184 (* 2 x185)) 0)) (< x186 x187)) (> (+ (+ x181 x182) (* 5 x183)) 0)) (<= (+ arg1P 1) arg1)) (<= arg2P arg2)) (<= arg3P arg3)) (> arg1 0)) (> arg2 (- 1))) (> arg3 (- 1))) (> arg1P (- 1))) (> arg2P (- 1))) (> arg3P (- 1))) (< (- x184 (* 2 x185)) 2)) (>= (- x184 (* 2 x185)) 0))))
    (cfg_trans2 pc f1022_0_main_InvokeMethod pc1 f1022_0_main_InvokeMethod' (exists ((x191 Int) (x192 Int) (x193 Int) (x194 Int) (x195 Int) (x196 Int) (x197 Int) (x198 Int) (x199 Int) (x200 Int)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (> x191 (- 1)) (> x192 (- 1))) (>= (* 5 x193) 0)) (>= (+ x191 x192) 0)) (= (- x194 (* 2 x195)) 0)) (>= x196 x197)) (> (+ (+ x191 x192) (* 5 x193)) 0)) (<= (- x198 2) arg1)) (<= (+ x199 1) arg2)) (<= (- x200 2) arg3)) (> arg1 (- 1))) (> arg2 0)) (> arg3 (- 1))) (> x198 0)) (> x199 (- 1))) (> x200 0)) (= arg1 arg1P)) (= arg2 arg2P)) (= arg3 arg3P))))
    (cfg_trans2 pc f1022_0_main_InvokeMethod' pc1 f1022_0_main_InvokeMethod (exists ((x207 Int) (x208 Int) (x209 Int) (x210 Int) (x211 Int) (x212 Int) (x213 Int)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (> x207 (- 1)) (> x208 (- 1))) (>= (* 5 x209) 0)) (>= (+ x207 x208) 0)) (= (- x210 (* 2 x211)) 0)) (>= x212 x213)) (> (+ (+ x207 x208) (* 5 x209)) 0)) (<= (- arg1P 2) arg1)) (<= (+ arg2P 1) arg2)) (<= (- arg3P 2) arg3)) (> arg1 (- 1))) (> arg2 0)) (> arg3 (- 1))) (> arg1P 0)) (> arg2P (- 1))) (> arg3P 0)) (< (- x210 (* 2 x211)) 2)) (>= (- x210 (* 2 x211)) 0))))
    (cfg_trans2 pc f1_0_main_Load pc1 f183_0_mk_LE (and (and (and (> arg1 0) (> arg2 (- 1))) (= (- arg2 1) arg1P)) (= arg2 arg2P)))
    (cfg_trans2 pc f158_0_main_InvokeMethod pc1 f183_0_mk_LE (and (and (and (> arg1 0) (> arg2 (- 1))) (= (- arg3 1) arg1P)) (= arg3 arg2P)))
    (cfg_trans2 pc f158_0_main_InvokeMethod pc1 f158_0_main_InvokeMethod' (exists ((x217 Int)) (and (and (and (and (and (and (= (- arg3 (* 2 x217)) 0) (> arg3 (- 1))) (> arg1 0)) (> arg2 (- 1))) (= arg1 arg1P)) (= arg2 arg2P)) (= arg3 arg3P))))
    (cfg_trans2 pc f158_0_main_InvokeMethod' pc1 f183_0_mk_LE (exists ((x221 Int)) (and (and (and (and (and (and (and (= (- arg3 (* 2 x221)) 0) (> arg3 (- 1))) (> arg1 0)) (> arg2 (- 1))) (< (- arg3 (* 2 x221)) 2)) (>= (- arg3 (* 2 x221)) 0)) (= (- (* arg3 arg3) 1) arg1P)) (= (* arg3 arg3) arg2P))))
    (cfg_trans2 pc f183_0_mk_LE pc1 f183_0_mk_LE (and (and (> arg2 0) (= (- arg1 1) arg1P)) (= arg1 arg2P)))
    (cfg_trans2 pc f1022_0_main_InvokeMethod pc1 f964_0_length_NULL (and (and (and (and (and (and (<= arg1P arg3) (<= arg2P arg3)) (> arg1 (- 1))) (> arg2 (- 1))) (> arg3 (- 1))) (> arg1P (- 1))) (> arg2P (- 1))))
    (cfg_trans2 pc f1022_0_main_InvokeMethod pc1 f964_0_length_NULL (and (and (and (and (and (and (<= arg1P arg1) (<= arg2P arg1)) (> arg1 (- 1))) (> arg2 (- 1))) (> arg3 (- 1))) (> arg1P (- 1))) (> arg2P (- 1))))
    (cfg_trans2 pc f1022_0_main_InvokeMethod pc1 f964_0_length_NULL (exists ((x81 Int) (x80 Int)) (and (and (and (and (and (and (and (and (> x81 (- 1)) (> x80 (- 1))) (<= arg1P arg2)) (<= arg2P arg2)) (> arg1 (- 1))) (> arg2 (- 1))) (> arg3 (- 1))) (> arg1P (- 1))) (> arg2P (- 1)))))
    (cfg_trans2 pc f1022_0_main_InvokeMethod pc1 f964_0_length_NULL (exists ((x88 Int) (x87 Int) (x89 Int)) (and (and (and (and (and (and (and (and (and (and (and (> x88 (- 1)) (> x87 (- 1))) (>= (* 5 x89) 0)) (> (+ (+ x88 x87) (* 5 x89)) 0)) (>= (+ x88 x87) 0)) (<= arg1P arg3)) (<= arg2P arg3)) (> arg1 (- 1))) (> arg2 (- 1))) (> arg3 (- 1))) (> arg1P (- 1))) (> arg2P (- 1)))))
    (cfg_trans2 pc f1022_0_main_InvokeMethod pc1 f1022_0_main_InvokeMethod' (exists ((x225 Int) (x226 Int) (x227 Int) (x228 Int) (x229 Int) (x230 Int) (x231 Int)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (> x225 (- 1)) (> x226 (- 1))) (>= (* 5 x227) 0)) (>= (+ x225 x226) 0)) (> (+ (+ x225 x226) (* 5 x227)) 0)) (= (- x228 (* 2 x229)) 0)) (<= x230 arg1)) (<= x231 arg1)) (> arg1 (- 1))) (> arg2 (- 1))) (> arg3 (- 1))) (> x230 (- 1))) (> x231 (- 1))) (= arg1 arg1P)) (= arg2 arg2P)) (= arg3 arg3P))))
    (cfg_trans2 pc f1022_0_main_InvokeMethod' pc1 f964_0_length_NULL (exists ((x237 Int) (x238 Int) (x239 Int) (x240 Int) (x241 Int)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (> x237 (- 1)) (> x238 (- 1))) (>= (* 5 x239) 0)) (>= (+ x237 x238) 0)) (> (+ (+ x237 x238) (* 5 x239)) 0)) (= (- x240 (* 2 x241)) 0)) (<= arg1P arg1)) (<= arg2P arg1)) (> arg1 (- 1))) (> arg2 (- 1))) (> arg3 (- 1))) (> arg1P (- 1))) (> arg2P (- 1))) (< (- x240 (* 2 x241)) 2)) (>= (- x240 (* 2 x241)) 0))))
    (cfg_trans2 pc f1022_0_main_InvokeMethod pc1 f1022_0_main_InvokeMethod' (exists ((x245 Int) (x246 Int) (x247 Int) (x248 Int) (x249 Int) (x250 Int) (x251 Int)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (> x245 (- 1)) (> x246 (- 1))) (>= (* 5 x247) 0)) (>= (+ x245 x246) 0)) (> (+ (+ x245 x246) (* 5 x247)) 0)) (= (- x248 (* 2 x249)) 0)) (<= x250 arg2)) (<= x251 arg2)) (> arg1 (- 1))) (> arg2 (- 1))) (> arg3 (- 1))) (> x250 (- 1))) (> x251 (- 1))) (= arg1 arg1P)) (= arg2 arg2P)) (= arg3 arg3P))))
    (cfg_trans2 pc f1022_0_main_InvokeMethod' pc1 f964_0_length_NULL (exists ((x257 Int) (x258 Int) (x259 Int) (x260 Int) (x261 Int)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (> x257 (- 1)) (> x258 (- 1))) (>= (* 5 x259) 0)) (>= (+ x257 x258) 0)) (> (+ (+ x257 x258) (* 5 x259)) 0)) (= (- x260 (* 2 x261)) 0)) (<= arg1P arg2)) (<= arg2P arg2)) (> arg1 (- 1))) (> arg2 (- 1))) (> arg3 (- 1))) (> arg1P (- 1))) (> arg2P (- 1))) (< (- x260 (* 2 x261)) 2)) (>= (- x260 (* 2 x261)) 0))))
    (cfg_trans2 pc f964_0_length_NULL pc1 f964_0_length_NULL (and (and (and (and (and (and (and (<= (+ arg1P 1) arg1) (<= (+ arg1P 1) arg2)) (<= (+ arg2P 1) arg1)) (<= (+ arg2P 1) arg2)) (> arg1 0)) (> arg2 0)) (> arg1P (- 1))) (> arg2P (- 1))))
    (cfg_trans2 pc __init pc1 f1_0_main_Load true)
  )
)
