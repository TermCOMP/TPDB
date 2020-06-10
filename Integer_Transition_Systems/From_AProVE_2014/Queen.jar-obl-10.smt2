(declare-sort Loc 0)
(declare-const f1_0_main_Load Loc)
(declare-const f1549_0_search_LT Loc)
(declare-const f1911_0_search_GE Loc)
(declare-const f1944_0_displayChessboard_GE Loc)
(declare-const f2167_0_displayChessboard_GE Loc)
(declare-const f1876_0_safeMove_GE Loc)
(declare-const f1969_0_safeMove_NE Loc)
(declare-const __init Loc)
(assert (distinct f1_0_main_Load f1549_0_search_LT f1911_0_search_GE f1944_0_displayChessboard_GE f2167_0_displayChessboard_GE f1876_0_safeMove_GE f1969_0_safeMove_NE __init ))

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
    (cfg_trans2 pc f1_0_main_Load pc1 f1549_0_search_LT (and (and (> arg1 0) (> arg2 (- 1))) (= 0 arg1P)))
    (cfg_trans2 pc f1549_0_search_LT pc1 f1911_0_search_GE (exists ((x2 Int)) (and (and (< arg1 x2) (= arg1 arg1P)) (= 0 arg2P))))
    (cfg_trans2 pc f1911_0_search_GE pc1 f1911_0_search_GE (exists ((x4 Int)) (and (and (and (< arg2 x4) (> x4 0)) (= arg1 arg1P)) (= (+ arg2 1) arg2P))))
    (cfg_trans2 pc f1911_0_search_GE pc1 f1549_0_search_LT (exists ((x7 Int) (x10 Int)) (and (and (and (and (and (and (> x7 0) (< arg2 x7)) (> x10 0)) (> arg1 (- 1))) (< arg1 x7)) (> (+ arg1 1) arg1)) (= (+ arg1 1) arg1P))))
    (cfg_trans2 pc f1911_0_search_GE pc1 f1911_0_search_GE (exists ((x11 Int) (x14 Int)) (and (and (and (and (and (and (and (> x11 0) (< arg2 x11)) (> x14 0)) (> arg1 (- 1))) (< arg1 x11)) (> (+ arg1 1) arg1)) (= arg1 arg1P)) (= (+ arg2 1) arg2P))))
    (cfg_trans2 pc f1549_0_search_LT pc1 f1944_0_displayChessboard_GE (exists ((x15 Int)) (and (>= arg1 x15) (= 0 arg1P))))
    (cfg_trans2 pc f1944_0_displayChessboard_GE pc1 f2167_0_displayChessboard_GE (exists ((x17 Int)) (and (and (< arg1 x17) (= arg1 arg1P)) (= 0 arg2P))))
    (cfg_trans2 pc f2167_0_displayChessboard_GE pc1 f1944_0_displayChessboard_GE (exists ((x19 Int)) (and (>= arg2 x19) (= (+ arg1 1) arg1P))))
    (cfg_trans2 pc f2167_0_displayChessboard_GE pc1 f2167_0_displayChessboard_GE (exists ((x25 Int) (x22 Int)) (and (and (and (and (< x25 arg2) (< arg2 x22)) (< arg1 x22)) (= arg1 arg1P)) (= (+ arg2 1) arg2P))))
    (cfg_trans2 pc f2167_0_displayChessboard_GE pc1 f2167_0_displayChessboard_GE (exists ((x46 Int) (x49 Int)) (and (and (and (and (> x46 arg2) (< arg2 x49)) (< arg1 x49)) (= arg1 arg1P)) (= (+ arg2 1) arg2P))))
    (cfg_trans2 pc f2167_0_displayChessboard_GE pc1 f2167_0_displayChessboard_GE (exists ((x26 Int)) (and (and (and (< arg2 x26) (< arg1 x26)) (= arg1 arg1P)) (= (+ arg2 1) arg2P))))
    (cfg_trans2 pc f1911_0_search_GE pc1 f1876_0_safeMove_GE (exists ((x29 Int)) (and (and (and (and (< arg2 x29) (> x29 0)) (= 1 arg1P)) (= 0 arg2P)) (= arg1 arg3P))))
    (cfg_trans2 pc f1876_0_safeMove_GE pc1 f1969_0_safeMove_NE (exists ((x32 Int)) (and (and (and (and (and (and (and (> arg3 0) (> x32 0)) (> arg1 0)) (< arg2 x32)) (> arg3 arg2)) (= arg3 arg1P)) (= arg2 arg2P)) (= 1 arg3P))))
    (cfg_trans2 pc f1876_0_safeMove_GE pc1 f1969_0_safeMove_NE (exists ((x36 Int)) (and (and (and (and (and (and (and (> arg3 0) (> x36 0)) (> arg1 0)) (< arg2 x36)) (> arg3 arg2)) (= arg3 arg1P)) (= arg2 arg2P)) (= 0 arg3P))))
    (cfg_trans2 pc f1876_0_safeMove_GE pc1 f1876_0_safeMove_GE (and (and (and (and (> arg3 arg2) (= 0 arg1)) (= 0 arg1P)) (= (+ arg2 1) arg2P)) (= arg3 arg3P)))
    (cfg_trans2 pc f1969_0_safeMove_NE pc1 f1876_0_safeMove_GE (and (and (and (= 1 arg3) (= 0 arg1P)) (= (+ arg2 1) arg2P)) (= arg1 arg3P)))
    (cfg_trans2 pc f1969_0_safeMove_NE pc1 f1876_0_safeMove_GE (and (and (and (= 0 arg3) (= 1 arg1P)) (= (+ arg2 1) arg2P)) (= arg1 arg3P)))
    (cfg_trans2 pc __init pc1 f1_0_main_Load true)
  )
)
