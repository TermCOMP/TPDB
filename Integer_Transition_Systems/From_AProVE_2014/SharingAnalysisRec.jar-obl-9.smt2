(declare-sort Loc 0)
(declare-const f289_0_appendNewList_Return Loc)
(declare-const f540_0_random_ArrayAccess Loc)
(declare-const f1_0_main_Load Loc)
(declare-const f673_0_main_InvokeMethod Loc)
(declare-const f760_0_copy_NONNULL Loc)
(declare-const f422_0_random_ArrayAccess Loc)
(declare-const __init Loc)
(assert (distinct f289_0_appendNewList_Return f540_0_random_ArrayAccess f1_0_main_Load f673_0_main_InvokeMethod f760_0_copy_NONNULL f422_0_random_ArrayAccess __init ))

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

(define-fun init_main ( (pc Loc) (arg1 Int) (arg2 Int) (arg3 Int) (arg4 Int) (arg5 Int) ) Bool
  (cfg_init pc __init true))

(define-fun next_main (
                 (pc Loc) (arg1 Int) (arg2 Int) (arg3 Int) (arg4 Int) (arg5 Int)
                 (pc1 Loc) (arg1P Int) (arg2P Int) (arg3P Int) (arg4P Int) (arg5P Int)
             ) Bool
  (or
    (cfg_trans2 pc f289_0_appendNewList_Return pc1 f540_0_random_ArrayAccess (and (and (and (and (and (and (and (<= arg1P arg2) (> arg1 0)) (> arg2 3)) (> arg1P 3)) (<= (+ arg5 2) arg2)) (= 0 arg4)) (= 0 arg3P)) (= arg5 arg4P)))
    (cfg_trans2 pc f1_0_main_Load pc1 f540_0_random_ArrayAccess (and (and (and (> arg1 0) (> arg1P 3)) (= arg2 arg2P)) (= 0 arg3P)))
    (cfg_trans2 pc f540_0_random_ArrayAccess pc1 f673_0_main_InvokeMethod (exists ((x51 Int) (x52 Int)) (and (and (and (and (and (and (and (and (and (> x51 0) (< x51 arg2)) (> x52 (- 1))) (<= (+ arg1P 3) arg1)) (> arg1 3)) (> arg1P 0)) (> arg2P 3)) (<= (+ arg4 2) arg1)) (= 0 arg3)) (= arg4 arg5P))))
    (cfg_trans2 pc f673_0_main_InvokeMethod pc1 f760_0_copy_NONNULL (and (and (and (and (and (and (and (<= arg1P arg2) (> arg3 0)) (> arg1 0)) (> arg2 3)) (> arg1P 3)) (<= (+ arg5 2) arg2)) (<= (+ arg4 4) arg2)) (= arg3 arg2P)))
    (cfg_trans2 pc f1_0_main_Load pc1 f422_0_random_ArrayAccess (and (and (and (and (<= arg2P arg1) (> arg2 (- 1))) (> arg1 0)) (> arg2P 0)) (= 1 arg1P)))
    (cfg_trans2 pc f540_0_random_ArrayAccess pc1 f422_0_random_ArrayAccess (exists ((x59 Int)) (and (and (and (and (and (and (and (and (> x59 0) (< x59 arg2)) (> arg1P (- 1))) (> arg2 (- 1))) (<= (+ arg2P 3) arg1)) (> arg1 3)) (> arg2P 0)) (<= (+ arg4 2) arg1)) (= 0 arg3))))
    (cfg_trans2 pc f422_0_random_ArrayAccess pc1 f422_0_random_ArrayAccess (exists ((x37 Int) (x36 Int) (x41 Int)) (and (and (and (and (and (and (and (and (and (< x37 x36) (> arg1 1)) (> x37 (- 1))) (> x41 (- 1))) (> x36 (- 1))) (< (- arg1 1) arg1)) (<= arg2P arg2)) (> arg2 0)) (> arg2P 0)) (= (- arg1 1) arg1P))))
    (cfg_trans2 pc f760_0_copy_NONNULL pc1 f760_0_copy_NONNULL (and (and (and (and (<= (+ arg1P 1) arg1) (> arg2 0)) (> arg1 0)) (> arg1P (- 1))) (= arg2 arg2P)))
    (cfg_trans2 pc __init pc1 f1_0_main_Load true)
  )
)
