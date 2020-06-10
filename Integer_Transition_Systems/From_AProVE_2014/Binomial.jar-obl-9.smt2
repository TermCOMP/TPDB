(declare-sort Loc 0)
(declare-const f1_0_main_ConstantStackPush Loc)
(declare-const f179_0_main_GT Loc)
(declare-const f535_0_main_GT Loc)
(declare-const f350_0_fact_GT Loc)
(declare-const f535_0_main_GT' Loc)
(declare-const __init Loc)
(assert (distinct f1_0_main_ConstantStackPush f179_0_main_GT f535_0_main_GT f350_0_fact_GT f535_0_main_GT' __init ))

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

(define-fun init_main ( (pc Loc) (arg1 Int) (arg2 Int) (arg3 Int) (arg4 Int) ) Bool
  (cfg_init pc __init true))

(define-fun next_main (
                 (pc Loc) (arg1 Int) (arg2 Int) (arg3 Int) (arg4 Int)
                 (pc1 Loc) (arg1P Int) (arg2P Int) (arg3P Int) (arg4P Int)
             ) Bool
  (or
    (cfg_trans2 pc f1_0_main_ConstantStackPush pc1 f179_0_main_GT (and (and (and (and (and (<= arg1P arg1) (> arg2 (- 1))) (> arg1 0)) (> arg1P 0)) (= 0 arg2P)) (= arg2 arg3P)))
    (cfg_trans2 pc f179_0_main_GT pc1 f535_0_main_GT (and (and (and (and (and (and (and (>= arg3 arg2) (> arg3 (- 1))) (<= arg1P arg1)) (> arg1 0)) (> arg1P 0)) (= arg2 arg2P)) (= 0 arg3P)) (= arg3 arg4P)))
    (cfg_trans2 pc f535_0_main_GT pc1 f179_0_main_GT (and (and (and (and (and (and (> arg3 arg4) (> arg4 (- 1))) (>= arg1 arg1P)) (> arg1 0)) (> arg1P 0)) (= (+ arg2 1) arg2P)) (= arg4 arg3P)))
    (cfg_trans2 pc f535_0_main_GT pc1 f350_0_fact_GT (and (and (and (and (and (> arg3 0) (>= arg4 arg2)) (>= arg4 arg3)) (> arg3 arg2)) (> arg1 0)) (= arg3 arg1P)))
    (cfg_trans2 pc f535_0_main_GT pc1 f350_0_fact_GT (and (and (and (and (>= arg4 arg2) (>= arg4 arg3)) (<= arg3 arg2)) (> arg1 0)) (= arg2 arg1P)))
    (cfg_trans2 pc f535_0_main_GT pc1 f350_0_fact_GT (exists ((x24 Int)) (and (and (and (and (and (and (> arg3 0) (>= arg4 arg2)) (>= arg4 arg3)) (> x24 0)) (> arg3 arg2)) (> arg1 0)) (= arg2 arg1P))))
    (cfg_trans2 pc f535_0_main_GT pc1 f350_0_fact_GT (and (and (and (and (and (> arg4 (- 1)) (>= arg4 arg3)) (< arg3 1)) (> arg1 0)) (= 0 arg2)) (= arg3 arg1P)))
    (cfg_trans2 pc f535_0_main_GT pc1 f350_0_fact_GT (exists ((x32 Int)) (and (and (and (and (and (and (>= arg4 arg2) (>= arg4 arg3)) (> arg2 0)) (> x32 0)) (<= arg3 arg2)) (> arg1 0)) (= arg3 arg1P))))
    (cfg_trans2 pc f535_0_main_GT pc1 f350_0_fact_GT (exists ((x101 Int) (x112 Int)) (and (and (and (and (and (and (and (> arg3 0) (> arg4 (- 1))) (>= arg4 arg3)) (> x101 0)) (> x112 0)) (> arg1 0)) (= 0 arg2)) (= arg3 arg1P))))
    (cfg_trans2 pc f535_0_main_GT pc1 f350_0_fact_GT (exists ((x42 Int) (x43 Int) (x44 Int)) (and (and (and (and (and (and (and (and (and (> arg3 0) (>= arg4 arg2)) (>= arg4 arg3)) (> x42 0)) (> arg3 arg2)) (> x43 0)) (> x44 0)) (> arg2 0)) (> arg1 0)) (= (- arg3 arg2) arg1P))))
    (cfg_trans2 pc f535_0_main_GT pc1 f350_0_fact_GT (and (and (and (and (and (> arg4 (- 1)) (>= arg4 arg3)) (< arg3 1)) (> arg1 0)) (= 0 arg2)) (= (- 0 arg3) arg1P)))
    (cfg_trans2 pc f535_0_main_GT pc1 f350_0_fact_GT (exists ((x132 Int)) (and (and (and (and (and (and (and (>= arg4 arg3) (> arg3 0)) (> arg4 (- 1))) (< arg3 1)) (> x132 0)) (> arg1 0)) (= 0 arg2)) (= (- 0 arg3) arg1P))))
    (cfg_trans2 pc f535_0_main_GT pc1 f350_0_fact_GT (exists ((x56 Int) (x57 Int)) (and (and (and (and (and (and (and (and (and (>= arg4 arg2) (>= arg4 arg3)) (> arg2 0)) (> x56 0)) (<= arg3 arg2)) (>= (- arg2 arg3) 1)) (> x57 0)) (< arg3 1)) (> arg1 0)) (= (- arg2 arg3) arg1P))))
    (cfg_trans2 pc f535_0_main_GT pc1 f350_0_fact_GT (exists ((x62 Int) (x63 Int) (x64 Int)) (and (and (and (and (and (and (and (and (and (>= arg4 arg2) (>= arg4 arg3)) (> arg2 0)) (> x62 0)) (<= arg3 arg2)) (> x63 0)) (> x64 0)) (> arg3 0)) (> arg1 0)) (= (- arg2 arg3) arg1P))))
    (cfg_trans2 pc f535_0_main_GT pc1 f535_0_main_GT' (exists ((x137 Int)) (and (and (and (and (and (and (and (and (and (and (> arg4 (- 1)) (>= arg4 arg3)) (< arg3 1)) (<= x137 arg1)) (> arg1 0)) (> x137 0)) (= 0 arg2)) (= arg1 arg1P)) (= 0 arg2P)) (= arg3 arg3P)) (= arg4 arg4P))))
    (cfg_trans2 pc f535_0_main_GT' pc1 f535_0_main_GT (exists ((x143 Int) (x144 Int)) (and (and (and (and (and (and (and (and (and (and (and (> arg4 (- 1)) (>= arg4 arg3)) (< arg3 1)) (<= arg1P arg1)) (> arg1 0)) (> arg1P 0)) (> x143 (- 1 (* x143 x144)))) (<= (* x143 x144) 1)) (= 0 arg2)) (= 0 arg2P)) (= (+ arg3 1) arg3P)) (= arg4 arg4P))))
    (cfg_trans2 pc f535_0_main_GT pc1 f535_0_main_GT' (exists ((x149 Int)) (and (and (and (and (and (and (and (and (and (> arg4 (- 1)) (<= x149 arg1)) (> arg1 0)) (> x149 0)) (= 0 arg2)) (= 0 arg3)) (= arg1 arg1P)) (= 0 arg2P)) (= 0 arg3P)) (= arg4 arg4P))))
    (cfg_trans2 pc f535_0_main_GT' pc1 f535_0_main_GT (exists ((x155 Int) (x156 Int)) (and (and (and (and (and (and (and (and (and (and (> arg4 (- 1)) (<= arg1P arg1)) (> arg1 0)) (> arg1P 0)) (> x155 (- 1 (* x155 x156)))) (<= (* x155 x156) 1)) (= 0 arg2)) (= 0 arg3)) (= 0 arg2P)) (= 1 arg3P)) (= arg4 arg4P))))
    (cfg_trans2 pc f535_0_main_GT pc1 f535_0_main_GT' (exists ((x161 Int) (x162 Int) (x163 Int)) (and (and (and (and (and (and (and (and (and (and (and (and (> arg3 0) (> arg4 (- 1))) (>= arg4 arg3)) (> x161 0)) (> x162 0)) (<= x163 arg1)) (> arg1 0)) (> x163 0)) (= 0 arg2)) (= arg1 arg1P)) (= 0 arg2P)) (= arg3 arg3P)) (= arg4 arg4P))))
    (cfg_trans2 pc f535_0_main_GT' pc1 f535_0_main_GT (exists ((x169 Int) (x170 Int) (x171 Int) (x172 Int) (x173 Int)) (and (and (and (and (and (and (and (and (and (and (and (and (and (> arg3 0) (> arg4 (- 1))) (>= arg4 arg3)) (> x169 0)) (> x170 0)) (<= arg1P arg1)) (> arg1 0)) (> arg1P 0)) (> x171 (- x172 (* x171 x173)))) (>= (- x172 (* x171 x173)) 0)) (= 0 arg2)) (= 0 arg2P)) (= (+ arg3 1) arg3P)) (= arg4 arg4P))))
    (cfg_trans2 pc f535_0_main_GT pc1 f535_0_main_GT' (exists ((x178 Int) (x179 Int)) (and (and (and (and (and (and (and (and (and (and (and (and (>= arg4 arg3) (> arg3 0)) (> arg4 (- 1))) (< arg3 1)) (> x178 0)) (<= x179 arg1)) (> arg1 0)) (> x179 0)) (= 0 arg2)) (= arg1 arg1P)) (= 0 arg2P)) (= arg3 arg3P)) (= arg4 arg4P))))
    (cfg_trans2 pc f535_0_main_GT' pc1 f535_0_main_GT (exists ((x185 Int) (x186 Int) (x187 Int)) (and (and (and (and (and (and (and (and (and (and (and (and (and (>= arg4 arg3) (> arg3 0)) (> arg4 (- 1))) (< arg3 1)) (> x185 0)) (<= arg1P arg1)) (> arg1 0)) (> arg1P 0)) (> x186 (- 1 (* x186 x187)))) (<= (* x186 x187) 1)) (= 0 arg2)) (= 0 arg2P)) (= (+ arg3 1) arg3P)) (= arg4 arg4P))))
    (cfg_trans2 pc f535_0_main_GT pc1 f535_0_main_GT' (exists ((x97 Int) (x98 Int) (x96 Int)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (>= arg4 arg2) (>= arg4 arg3)) (> arg2 0)) (> x97 0)) (<= arg3 arg2)) (>= (- arg2 arg3) 1)) (> x98 0)) (< arg3 1)) (> arg4 (- 1))) (<= x96 arg1)) (> arg1 0)) (> x96 0)) (= arg1 arg1P)) (= arg2 arg2P)) (= arg3 arg3P)) (= arg4 arg4P))))
    (cfg_trans2 pc f535_0_main_GT' pc1 f535_0_main_GT (exists ((x193 Int) (x194 Int) (x195 Int) (x196 Int) (x197 Int)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (>= arg4 arg2) (>= arg4 arg3)) (> arg2 0)) (> x193 0)) (<= arg3 arg2)) (>= (- arg2 arg3) 1)) (> x194 0)) (< arg3 1)) (> arg4 (- 1))) (<= arg1P arg1)) (> arg1 0)) (> arg1P 0)) (< (- x195 (* x196 x197)) x196)) (>= (- x195 (* x196 x197)) 0)) (= arg2 arg2P)) (= (+ arg3 1) arg3P)) (= arg4 arg4P))))
    (cfg_trans2 pc f535_0_main_GT pc1 f535_0_main_GT' (exists ((x107 Int) (x108 Int) (x109 Int) (x106 Int)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (> arg3 0) (>= arg4 arg2)) (>= arg4 arg3)) (> x107 0)) (> arg3 arg2)) (> x108 0)) (> x109 0)) (> arg2 0)) (> arg4 (- 1))) (<= x106 arg1)) (> arg1 0)) (> x106 0)) (= arg1 arg1P)) (= arg2 arg2P)) (= arg3 arg3P)) (= arg4 arg4P))))
    (cfg_trans2 pc f535_0_main_GT' pc1 f535_0_main_GT (exists ((x203 Int) (x204 Int) (x205 Int) (x206 Int) (x207 Int) (x208 Int)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (> arg3 0) (>= arg4 arg2)) (>= arg4 arg3)) (> x203 0)) (> arg3 arg2)) (> x204 0)) (> x205 0)) (> arg2 0)) (> arg4 (- 1))) (<= arg1P arg1)) (> arg1 0)) (> arg1P 0)) (> x206 (- x207 (* x206 x208)))) (>= (- x207 (* x206 x208)) 0)) (= arg2 arg2P)) (= (+ arg3 1) arg3P)) (= arg4 arg4P))))
    (cfg_trans2 pc f535_0_main_GT pc1 f535_0_main_GT' (exists ((x118 Int) (x119 Int) (x120 Int) (x117 Int)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (>= arg4 arg2) (>= arg4 arg3)) (> arg2 0)) (> x118 0)) (<= arg3 arg2)) (> x119 0)) (> x120 0)) (> arg3 0)) (> arg4 (- 1))) (<= x117 arg1)) (> arg1 0)) (> x117 0)) (= arg1 arg1P)) (= arg2 arg2P)) (= arg3 arg3P)) (= arg4 arg4P))))
    (cfg_trans2 pc f535_0_main_GT' pc1 f535_0_main_GT (exists ((x214 Int) (x215 Int) (x216 Int) (x217 Int) (x218 Int) (x219 Int)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (>= arg4 arg2) (>= arg4 arg3)) (> arg2 0)) (> x214 0)) (<= arg3 arg2)) (> x215 0)) (> x216 0)) (> arg3 0)) (> arg4 (- 1))) (<= arg1P arg1)) (> arg1 0)) (> arg1P 0)) (> x217 (- x218 (* x217 x219)))) (>= (- x218 (* x217 x219)) 0)) (= arg2 arg2P)) (= (+ arg3 1) arg3P)) (= arg4 arg4P))))
    (cfg_trans2 pc f350_0_fact_GT pc1 f350_0_fact_GT (and (and (> arg1 0) (< (- arg1 1) arg1)) (= (- arg1 1) arg1P)))
    (cfg_trans2 pc __init pc1 f1_0_main_ConstantStackPush true)
  )
)
