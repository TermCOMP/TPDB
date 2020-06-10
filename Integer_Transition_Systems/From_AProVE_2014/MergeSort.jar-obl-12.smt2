(declare-sort Loc 0)
(declare-const f1_0_main_Load Loc)
(declare-const f229_0_main_GE Loc)
(declare-const f507_0_sort_GE Loc)
(declare-const f507_0_sort_GE' Loc)
(declare-const f1503_0_sort_InvokeMethod Loc)
(declare-const f757_0_merge_GT Loc)
(declare-const f774_0_merge_GT Loc)
(declare-const f1440_0_merge_GT Loc)
(declare-const __init Loc)
(assert (distinct f1_0_main_Load f229_0_main_GE f507_0_sort_GE f507_0_sort_GE' f1503_0_sort_InvokeMethod f757_0_merge_GT f774_0_merge_GT f1440_0_merge_GT __init ))

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
    (cfg_trans2 pc f1_0_main_Load pc1 f229_0_main_GE (and (and (and (and (and (<= arg1P arg1) (> arg2 (- 1))) (> arg1 0)) (> arg1P 0)) (= 0 arg2P)) (= arg2 arg3P)))
    (cfg_trans2 pc f229_0_main_GE pc1 f229_0_main_GE (and (and (and (and (and (<= arg1P arg1) (> arg3 arg2)) (> arg1 0)) (> arg1P 0)) (= (+ arg2 1) arg2P)) (= arg3 arg3P)))
    (cfg_trans2 pc f229_0_main_GE pc1 f507_0_sort_GE (and (and (and (and (and (and (and (and (and (and (< (- arg3 1) arg3) (> arg3 (- 1))) (<= arg3 arg2)) (>= arg1 arg1P)) (>= arg1 arg2P)) (> arg1 0)) (> arg1P 0)) (> arg2P 0)) (= 0 arg3P)) (= (- arg3 1) arg4P)) (= arg3 arg5P)))
    (cfg_trans2 pc f507_0_sort_GE pc1 f507_0_sort_GE' (exists ((x56 Int) (x63 Int) (x116 Int)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (> arg4 arg3) (> (- arg4 arg3) (- x56 arg3))) (<= x63 arg1)) (<= x63 arg2)) (<= x116 arg1)) (<= x116 arg2)) (> arg1 0)) (> arg2 0)) (> x63 0)) (> x116 0)) (= arg1 arg1P)) (= arg2 arg2P)) (= arg3 arg3P)) (= arg4 arg4P)) (= arg5 arg5P))))
    (cfg_trans2 pc f507_0_sort_GE' pc1 f507_0_sort_GE (and (and (and (and (and (and (and (and (and (and (and (and (and (> arg4 arg3) (> (- arg4 arg3) (- arg4P arg3))) (<= arg1P arg1)) (<= arg1P arg2)) (<= arg2P arg1)) (<= arg2P arg2)) (> arg1 0)) (> arg2 0)) (> arg1P 0)) (> arg2P 0)) (< (- (+ arg3 arg4) (* 2 arg4P)) 2)) (>= (- (+ arg3 arg4) (* 2 arg4P)) 0)) (= arg3 arg3P)) (= arg5 arg5P)))
    (cfg_trans2 pc f507_0_sort_GE pc1 f507_0_sort_GE' (exists ((x130 Int) (x131 Int) (x132 Int)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (> arg4 arg3) (<= (- arg4 arg3) (- x130 arg3))) (> (- arg4 arg3) (- arg4 (+ x130 1)))) (> (+ x130 1) x130)) (<= x131 arg1)) (<= x131 arg2)) (<= x132 arg1)) (<= x132 arg2)) (> arg1 0)) (> arg2 0)) (> x131 0)) (> x132 0)) (= arg1 arg1P)) (= arg2 arg2P)) (= arg3 arg3P)) (= arg4 arg4P)) (= arg5 arg5P))))
    (cfg_trans2 pc f507_0_sort_GE' pc1 f507_0_sort_GE (exists ((x140 Int)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (> arg4 arg3) (<= (- arg4 arg3) (- x140 arg3))) (> (- arg4 arg3) (- arg4 (+ x140 1)))) (> (+ x140 1) x140)) (<= arg1P arg1)) (<= arg1P arg2)) (<= arg2P arg1)) (<= arg2P arg2)) (> arg1 0)) (> arg2 0)) (> arg1P 0)) (> arg2P 0)) (< (- (+ arg3 arg4) (* 2 x140)) 2)) (>= (- (+ arg3 arg4) (* 2 x140)) 0)) (= (+ x140 1) arg3P)) (= arg4 arg4P)) (= arg5 arg5P))))
    (cfg_trans2 pc f507_0_sort_GE pc1 f507_0_sort_GE' (exists ((x146 Int) (x147 Int) (x148 Int)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (> arg4 arg3) (> (- arg4 arg3) (- x146 arg3))) (> (+ x146 1) x146)) (> (- arg4 arg3) (- arg4 (+ x146 1)))) (<= x147 arg1)) (<= x147 arg2)) (<= x148 arg1)) (<= x148 arg2)) (> arg1 0)) (> arg2 0)) (> x147 0)) (> x148 0)) (= arg1 arg1P)) (= arg2 arg2P)) (= arg3 arg3P)) (= arg4 arg4P)) (= arg5 arg5P))))
    (cfg_trans2 pc f507_0_sort_GE' pc1 f507_0_sort_GE (exists ((x156 Int)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (> arg4 arg3) (> (- arg4 arg3) (- x156 arg3))) (> (+ x156 1) x156)) (> (- arg4 arg3) (- arg4 (+ x156 1)))) (<= arg1P arg1)) (<= arg1P arg2)) (<= arg2P arg1)) (<= arg2P arg2)) (> arg1 0)) (> arg2 0)) (> arg1P 0)) (> arg2P 0)) (< (- (+ arg3 arg4) (* 2 x156)) 2)) (>= (- (+ arg3 arg4) (* 2 x156)) 0)) (= (+ x156 1) arg3P)) (= arg4 arg4P)) (= arg5 arg5P))))
    (cfg_trans2 pc f507_0_sort_GE pc1 f507_0_sort_GE' (exists ((x162 Int) (x163 Int)) (and (and (and (and (and (and (and (and (and (and (and (and (> arg4 arg3) (> (- arg4 arg3) (- x162 arg3))) (<= (- arg4 arg3) (- arg4 (+ x162 1)))) (<= x163 arg1)) (<= x163 arg2)) (> arg1 0)) (> arg2 0)) (> x163 0)) (= arg1 arg1P)) (= arg2 arg2P)) (= arg3 arg3P)) (= arg4 arg4P)) (= arg5 arg5P))))
    (cfg_trans2 pc f507_0_sort_GE' pc1 f1503_0_sort_InvokeMethod (and (and (and (and (and (and (and (and (and (and (and (and (> arg4 arg3) (> (- arg4 arg3) (- arg3P arg3))) (<= (- arg4 arg3) (- arg4 (+ arg3P 1)))) (<= arg4P arg1)) (<= arg4P arg2)) (> arg1 0)) (> arg2 0)) (> arg4P 0)) (< (- (+ arg3 arg4) (* 2 arg3P)) 2)) (>= (- (+ arg3 arg4) (* 2 arg3P)) 0)) (= arg3 arg1P)) (= arg4 arg2P)) (= arg5 arg5P)))
    (cfg_trans2 pc f507_0_sort_GE pc1 f507_0_sort_GE' (exists ((x176 Int) (x177 Int)) (and (and (and (and (and (and (and (and (and (and (and (and (and (> arg4 arg3) (> (- arg4 arg3) (- x176 arg3))) (> (+ x176 1) x176)) (> (- arg4 arg3) (- arg4 (+ x176 1)))) (<= x177 arg1)) (<= x177 arg2)) (> arg1 0)) (> arg2 0)) (> x177 0)) (= arg1 arg1P)) (= arg2 arg2P)) (= arg3 arg3P)) (= arg4 arg4P)) (= arg5 arg5P))))
    (cfg_trans2 pc f507_0_sort_GE' pc1 f1503_0_sort_InvokeMethod (and (and (and (and (and (and (and (and (and (and (and (and (and (> arg4 arg3) (> (- arg4 arg3) (- arg3P arg3))) (> (+ arg3P 1) arg3P)) (> (- arg4 arg3) (- arg4 (+ arg3P 1)))) (<= arg4P arg1)) (<= arg4P arg2)) (> arg1 0)) (> arg2 0)) (> arg4P 0)) (< (- (+ arg3 arg4) (* 2 arg3P)) 2)) (>= (- (+ arg3 arg4) (* 2 arg3P)) 0)) (= arg3 arg1P)) (= arg4 arg2P)) (= arg5 arg5P)))
    (cfg_trans2 pc f507_0_sort_GE pc1 f507_0_sort_GE' (exists ((x190 Int) (x191 Int)) (and (and (and (and (and (and (and (and (and (and (and (and (and (> arg4 arg3) (<= (- arg4 arg3) (- x190 arg3))) (<= (- arg4 arg3) (- arg4 (+ x190 1)))) (> arg5 (- 1))) (<= x191 arg1)) (<= x191 arg2)) (> arg1 0)) (> arg2 0)) (> x191 0)) (= arg1 arg1P)) (= arg2 arg2P)) (= arg3 arg3P)) (= arg4 arg4P)) (= arg5 arg5P))))
    (cfg_trans2 pc f507_0_sort_GE' pc1 f757_0_merge_GT (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (> arg4 arg3) (<= (- arg4 arg3) (- arg6P arg3))) (<= (- arg4 arg3) (- arg4 (+ arg6P 1)))) (> arg5 (- 1))) (<= arg3P arg1)) (<= arg3P arg2)) (> arg1 0)) (> arg2 0)) (> arg3P 0)) (< (- (+ arg3 arg4) (* 2 arg6P)) 2)) (>= (- (+ arg3 arg4) (* 2 arg6P)) 0)) (= arg3 arg1P)) (= arg4 arg2P)) (= arg3 arg4P)) (= arg3 arg5P)) (= arg5 arg7P)))
    (cfg_trans2 pc f507_0_sort_GE pc1 f507_0_sort_GE' (exists ((x204 Int) (x205 Int)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (> arg4 arg3) (<= (- arg4 arg3) (- x204 arg3))) (> (- arg4 arg3) (- arg4 (+ x204 1)))) (> (+ x204 1) x204)) (> arg5 (- 1))) (<= x205 arg1)) (<= x205 arg2)) (> arg1 0)) (> arg2 0)) (> x205 0)) (= arg1 arg1P)) (= arg2 arg2P)) (= arg3 arg3P)) (= arg4 arg4P)) (= arg5 arg5P))))
    (cfg_trans2 pc f507_0_sort_GE' pc1 f757_0_merge_GT (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (> arg4 arg3) (<= (- arg4 arg3) (- arg6P arg3))) (> (- arg4 arg3) (- arg4 (+ arg6P 1)))) (> (+ arg6P 1) arg6P)) (> arg5 (- 1))) (<= arg3P arg1)) (<= arg3P arg2)) (> arg1 0)) (> arg2 0)) (> arg3P 0)) (< (- (+ arg3 arg4) (* 2 arg6P)) 2)) (>= (- (+ arg3 arg4) (* 2 arg6P)) 0)) (= arg3 arg1P)) (= arg4 arg2P)) (= arg3 arg4P)) (= arg3 arg5P)) (= arg5 arg7P)))
    (cfg_trans2 pc f1503_0_sort_InvokeMethod pc1 f757_0_merge_GT (and (and (and (and (and (and (and (and (and (<= arg3P arg4) (> arg5 (- 1))) (> arg4 0)) (> arg3P 0)) (= arg1 arg1P)) (= arg2 arg2P)) (= arg1 arg4P)) (= arg1 arg5P)) (= arg3 arg6P)) (= arg5 arg7P)))
    (cfg_trans2 pc f757_0_merge_GT pc1 f774_0_merge_GT (and (and (and (and (and (and (and (and (and (<= arg3P arg3) (< arg6 arg4)) (> arg3 0)) (> arg3P 0)) (= arg4 arg5)) (= arg1 arg1P)) (= arg6 arg2P)) (= (+ arg6 1) arg4P)) (= arg2 arg5P)) (= arg7 arg6P)))
    (cfg_trans2 pc f757_0_merge_GT pc1 f757_0_merge_GT (and (and (and (and (and (and (and (and (and (and (and (>= arg6 arg4) (> arg7 arg4)) (<= arg3P arg3)) (> arg3 0)) (> arg3P 0)) (= arg4 arg5)) (= arg1 arg1P)) (= arg2 arg2P)) (= (+ arg4 1) arg4P)) (= (+ arg4 1) arg5P)) (= arg6 arg6P)) (= arg7 arg7P)))
    (cfg_trans2 pc f774_0_merge_GT pc1 f774_0_merge_GT (and (and (and (and (and (and (and (and (and (and (> arg6 (- (+ (+ arg5 arg2) 1) arg4)) (>= arg5 arg4)) (> arg6 arg4)) (<= arg3P arg3)) (> arg3 0)) (> arg3P 0)) (= arg1 arg1P)) (= arg2 arg2P)) (= (+ arg4 1) arg4P)) (= arg5 arg5P)) (= arg6 arg6P)))
    (cfg_trans2 pc f774_0_merge_GT pc1 f1440_0_merge_GT (and (and (and (and (and (and (and (and (and (<= arg1P arg3) (< arg5 arg4)) (> arg3 0)) (> arg1P 0)) (= arg1 arg2P)) (= arg5 arg3P)) (= arg1 arg4P)) (= arg1 arg5P)) (= arg5 arg6P)) (= arg6 arg7P)))
    (cfg_trans2 pc f1440_0_merge_GT pc1 f1440_0_merge_GT (exists ((x106 Int) (x105 Int)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (>= arg6 arg4) (< arg2 arg7)) (> arg7 arg3)) (>= x106 x105)) (> arg7 arg4)) (>= arg1 arg1P)) (> arg1 0)) (> arg1P 0)) (= arg4 arg5)) (= arg2 arg2P)) (= (- arg3 1) arg3P)) (= (+ arg4 1) arg4P)) (= (+ arg4 1) arg5P)) (= arg6 arg6P)) (= arg7 arg7P))))
    (cfg_trans2 pc f1440_0_merge_GT pc1 f1440_0_merge_GT (exists ((x115 Int) (x114 Int)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (>= arg6 arg4) (> arg7 arg2)) (> arg7 arg3)) (< x115 x114)) (> arg7 arg4)) (<= arg1P arg1)) (> arg1 0)) (> arg1P 0)) (= arg4 arg5)) (= (+ arg2 1) arg2P)) (= arg3 arg3P)) (= (+ arg4 1) arg4P)) (= (+ arg4 1) arg5P)) (= arg6 arg6P)) (= arg7 arg7P))))
    (cfg_trans2 pc __init pc1 f1_0_main_Load true)
  )
)
