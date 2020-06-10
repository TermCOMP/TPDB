(declare-sort Loc 0)
(declare-const f1_0_main_New Loc)
(declare-const f230_0_alternate_NONNULL Loc)
(declare-const f1096_0_append_NONNULL Loc)
(declare-const f565_0_iter_NULL Loc)
(declare-const f717_0_reverseAcc_NONNULL Loc)
(declare-const f845_0_reverse_NONNULL Loc)
(declare-const f1225_0_reverse_InvokeMethod Loc)
(declare-const f991_0_reverse_Return Loc)
(declare-const __init Loc)
(assert (distinct f1_0_main_New f230_0_alternate_NONNULL f1096_0_append_NONNULL f565_0_iter_NULL f717_0_reverseAcc_NONNULL f845_0_reverse_NONNULL f1225_0_reverse_InvokeMethod f991_0_reverse_Return __init ))

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
    (cfg_trans2 pc f1_0_main_New pc1 f230_0_alternate_NONNULL (and (and (and (> arg1P 3) (> arg2P 3)) (> arg4P 3)) (> arg3P 3)))
    (cfg_trans2 pc f230_0_alternate_NONNULL pc1 f230_0_alternate_NONNULL (and (and (and (and (and (and (and (and (and (and (and (and (and (<= (+ arg1P 1) arg2) (<= arg2P arg1)) (<= arg2P arg3)) (<= arg2P arg4)) (>= arg2 (+ arg3P 1))) (>= arg2 (+ arg4P 1))) (> arg1 0)) (> arg2 0)) (> arg3 0)) (> arg4 0)) (> arg1P (- 1))) (> arg2P 0)) (> arg3P (- 1))) (> arg4P (- 1))))
    (cfg_trans2 pc f1_0_main_New pc1 f1096_0_append_NONNULL (and (and (> arg1P 3) (> arg3P (- 1))) (> arg2P 4)))
    (cfg_trans2 pc f1096_0_append_NONNULL pc1 f1096_0_append_NONNULL (and (and (and (and (and (and (<= arg2P arg2) (> arg1 2)) (> arg2 0)) (> arg3 0)) (> arg1P 0)) (> arg2P 0)) (> arg3P (- 1))))
    (cfg_trans2 pc f1_0_main_New pc1 f565_0_iter_NULL (and (> arg2P 1) (> arg1P 3)))
    (cfg_trans2 pc f565_0_iter_NULL pc1 f565_0_iter_NULL (and (and (and (and (and (and (and (<= (+ arg1P 2) arg1) (<= arg1P arg2)) (<= (+ arg2P 3) arg1)) (<= (+ arg2P 1) arg2)) (> arg1 2)) (> arg2 0)) (> arg1P 0)) (> arg2P (- 1))))
    (cfg_trans2 pc f1_0_main_New pc1 f717_0_reverseAcc_NONNULL (and (> arg2P 1) (> arg1P 3)))
    (cfg_trans2 pc f717_0_reverseAcc_NONNULL pc1 f717_0_reverseAcc_NONNULL (and (and (and (and (and (and (and (<= (+ arg1P 2) arg1) (<= arg1P arg2)) (<= (+ arg2P 3) arg1)) (<= (+ arg2P 1) arg2)) (> arg1 2)) (> arg2 0)) (> arg1P 0)) (> arg2P (- 1))))
    (cfg_trans2 pc f1_0_main_New pc1 f845_0_reverse_NONNULL (and (> arg2P 1) (> arg1P 3)))
    (cfg_trans2 pc f845_0_reverse_NONNULL pc1 f845_0_reverse_NONNULL (and (and (and (and (and (and (and (<= (+ arg1P 2) arg1) (<= arg1P arg2)) (<= (+ arg2P 3) arg1)) (<= (+ arg2P 1) arg2)) (> arg1 2)) (> arg2 0)) (> arg1P 0)) (> arg2P (- 1))))
    (cfg_trans2 pc f845_0_reverse_NONNULL pc1 f1096_0_append_NONNULL (and (and (and (and (and (and (and (and (<= (+ arg1P 1) arg1) (<= (- arg1P 1) arg2)) (<= (+ arg2P 1) arg1)) (<= (- arg2P 1) arg2)) (> arg1 2)) (> arg2 0)) (> arg1P 1)) (> arg2P 1)) (> arg3P (- 1))))
    (cfg_trans2 pc f845_0_reverse_NONNULL pc1 f1225_0_reverse_InvokeMethod (and (and (> arg1 2) (> arg2 0)) (> arg1P 4)))
    (cfg_trans2 pc f845_0_reverse_NONNULL pc1 f1225_0_reverse_InvokeMethod (and (and (> arg1 2) (> arg2 0)) (> arg1P 2)))
    (cfg_trans2 pc f991_0_reverse_Return pc1 f1225_0_reverse_InvokeMethod (and (and (and (<= arg1P arg1) (> arg1 2)) (> arg1P 2)) (<= (+ arg2 4) arg1)))
    (cfg_trans2 pc f1225_0_reverse_InvokeMethod pc1 f1096_0_append_NONNULL (and (and (and (and (and (<= arg1P arg1) (<= (+ arg2P 1) arg1)) (> arg1 2)) (> arg1P 2)) (> arg2P 1)) (> arg3P (- 1))))
    (cfg_trans2 pc __init pc1 f1_0_main_New true)
  )
)
