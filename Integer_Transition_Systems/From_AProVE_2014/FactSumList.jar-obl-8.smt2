(declare-sort Loc 0)
(declare-const f1_0_main_New Loc)
(declare-const f83_0_doSum_NONNULL Loc)
(declare-const f160_0_factorial_GT Loc)
(declare-const __init Loc)
(assert (distinct f1_0_main_New f83_0_doSum_NONNULL f160_0_factorial_GT __init ))

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

(define-fun init_main ( (pc Loc) (arg1 Int) (arg2 Int) (arg3 Int) (arg4 Int) (arg5 Int) (arg6 Int) ) Bool
  (cfg_init pc __init true))

(define-fun next_main (
                 (pc Loc) (arg1 Int) (arg2 Int) (arg3 Int) (arg4 Int) (arg5 Int) (arg6 Int)
                 (pc1 Loc) (arg1P Int) (arg2P Int) (arg3P Int) (arg4P Int) (arg5P Int) (arg6P Int)
             ) Bool
  (or
    (cfg_trans2 pc f1_0_main_New pc1 f83_0_doSum_NONNULL (> arg1P 3))
    (cfg_trans2 pc f83_0_doSum_NONNULL pc1 f160_0_factorial_GT (and (and (and (and (and (and (and (and (<= arg1P arg1) (<= (+ arg6P 1) arg1)) (> arg1 0)) (> arg1P 0)) (> arg6P (- 1))) (<= (+ arg5P 2) arg1)) (= 1 arg2P)) (= 1 arg3P)) (= 1 arg4P)))
    (cfg_trans2 pc f160_0_factorial_GT pc1 f83_0_doSum_NONNULL (and (and (and (and (and (and (and (and (> arg2 0) (< arg5 arg3)) (>= arg1 (+ arg1P 1))) (>= arg6 arg1P)) (> arg1 0)) (> arg6 (- 1))) (> arg1P (- 1))) (<= (+ arg5 2) arg1)) (= arg3 arg4)))
    (cfg_trans2 pc f160_0_factorial_GT pc1 f160_0_factorial_GT (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (>= arg5 arg3) (> arg3 0)) (> arg2 0)) (<= arg1P arg1)) (<= (+ arg6P 1) arg1)) (<= arg6P arg6)) (> arg1 0)) (> arg6 (- 1))) (> arg1P 0)) (> arg6P (- 1))) (<= (+ arg5 2) arg1)) (= arg3 arg4)) (= (* arg2 arg3) arg2P)) (= (+ arg3 1) arg3P)) (= (+ arg3 1) arg4P)) (= arg5 arg5P)))
    (cfg_trans2 pc __init pc1 f1_0_main_New true)
  )
)
