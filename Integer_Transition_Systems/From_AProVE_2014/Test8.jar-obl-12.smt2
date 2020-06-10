(declare-sort Loc 0)
(declare-const f1_0_main_ConstantStackPush Loc)
(declare-const f162_0_mk_LE Loc)
(declare-const f276_0_mk_LE Loc)
(declare-const f401_0_mk_LE Loc)
(declare-const f576_0_test_LT Loc)
(declare-const f470_0_length_NONNULL Loc)
(declare-const __init Loc)
(assert (distinct f1_0_main_ConstantStackPush f162_0_mk_LE f276_0_mk_LE f401_0_mk_LE f576_0_test_LT f470_0_length_NONNULL __init ))

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
    (cfg_trans2 pc f1_0_main_ConstantStackPush pc1 f162_0_mk_LE (and (and (and (and (and (and (<= arg1P arg1) (> arg2 (- 1))) (> arg1 0)) (> arg1P 0)) (= (- arg2 1) arg2P)) (= arg2 arg3P)) (= arg2 arg4P)))
    (cfg_trans2 pc f162_0_mk_LE pc1 f162_0_mk_LE (and (and (and (and (and (and (<= arg1P arg1) (> arg3 0)) (> arg1 0)) (> arg1P 0)) (= (- arg2 1) arg2P)) (= arg2 arg3P)) (= arg4 arg4P)))
    (cfg_trans2 pc f162_0_mk_LE pc1 f276_0_mk_LE (and (and (and (and (and (and (and (< arg3 1) (> arg4 (- 1))) (>= arg1 arg1P)) (> arg1 0)) (> arg1P 0)) (= (- arg4 1) arg2P)) (= arg4 arg3P)) (= arg4 arg4P)))
    (cfg_trans2 pc f276_0_mk_LE pc1 f276_0_mk_LE (and (and (and (and (and (and (<= arg1P arg1) (> arg3 0)) (> arg1 0)) (> arg1P 0)) (= (- arg2 1) arg2P)) (= arg2 arg3P)) (= arg4 arg4P)))
    (cfg_trans2 pc f276_0_mk_LE pc1 f401_0_mk_LE (and (and (and (and (< arg3 1) (> arg4 (- 1))) (> arg1 0)) (= (- arg4 1) arg1P)) (= arg4 arg2P)))
    (cfg_trans2 pc f401_0_mk_LE pc1 f576_0_test_LT (and (< arg2 1) (= 2 arg1P)))
    (cfg_trans2 pc f401_0_mk_LE pc1 f401_0_mk_LE (and (and (> arg2 0) (= (- arg1 1) arg1P)) (= arg1 arg2P)))
    (cfg_trans2 pc f576_0_test_LT pc1 f470_0_length_NONNULL (and (and (> arg1 (- 1)) (> arg1P (- 1))) (< arg1 3)))
    (cfg_trans2 pc f576_0_test_LT pc1 f576_0_test_LT (and (and (> arg1 (- 1)) (< arg1 3)) (= (- arg1 1) arg1P)))
    (cfg_trans2 pc f470_0_length_NONNULL pc1 f470_0_length_NONNULL (and (and (<= (+ arg1P 1) arg1) (> arg1 0)) (> arg1P (- 1))))
    (cfg_trans2 pc __init pc1 f1_0_main_ConstantStackPush true)
  )
)
