(declare-sort Loc 0)
(declare-const f303_0_createIntList_Return Loc)
(declare-const f517_0_random_ArrayAccess Loc)
(declare-const f1_0_main_Load Loc)
(declare-const f704_0_nth_LE Loc)
(declare-const f754_0_main_LE Loc)
(declare-const f964_0_nth_LE Loc)
(declare-const f673_0_createIntList_LE Loc)
(declare-const __init Loc)
(assert (distinct f303_0_createIntList_Return f517_0_random_ArrayAccess f1_0_main_Load f704_0_nth_LE f754_0_main_LE f964_0_nth_LE f673_0_createIntList_LE __init ))

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
    (cfg_trans2 pc f303_0_createIntList_Return pc1 f517_0_random_ArrayAccess (and (and (<= arg1P arg1) (> arg1 (- 1))) (> arg1P (- 1))))
    (cfg_trans2 pc f1_0_main_Load pc1 f517_0_random_ArrayAccess (and (> arg1 0) (> arg1P (- 1))))
    (cfg_trans2 pc f517_0_random_ArrayAccess pc1 f704_0_nth_LE (exists ((x7 Int)) (and (and (and (and (and (and (and (> x7 0) (> arg3P (- 1))) (<= arg1P arg1)) (>= arg1 arg2P)) (> arg1 (- 1))) (> arg1P (- 1))) (> arg2P (- 1))) (= (+ x7 1) arg4P))))
    (cfg_trans2 pc f704_0_nth_LE pc1 f754_0_main_LE (and (and (and (and (and (and (<= arg1P arg1) (< arg3 2)) (> arg1 (- 1))) (> arg2 0)) (> arg1P (- 1))) (<= (+ arg2P 2) arg2)) (= arg4 arg3P)))
    (cfg_trans2 pc f704_0_nth_LE pc1 f704_0_nth_LE (and (and (and (and (and (and (and (and (<= arg1P arg1) (> arg3 1)) (<= (+ arg2P 1) arg2)) (> arg1 (- 1))) (> arg2 0)) (> arg1P (- 1))) (> arg2P (- 1))) (= (- arg3 1) arg3P)) (= arg4 arg4P)))
    (cfg_trans2 pc f754_0_main_LE pc1 f964_0_nth_LE (and (and (and (and (and (and (and (and (> arg3P (- 1)) (> arg3 0)) (> arg2 0)) (<= (+ arg1P 1) arg1)) (<= (+ arg2P 1) arg1)) (> arg1 0)) (> arg1P (- 1))) (> arg2P (- 1))) (= (+ arg3 1) arg4P)))
    (cfg_trans2 pc f964_0_nth_LE pc1 f754_0_main_LE (and (and (and (and (and (and (<= arg1P arg1) (< arg3 2)) (> arg1 (- 1))) (> arg2 0)) (> arg1P (- 1))) (<= (+ arg2P 2) arg2)) (= arg4 arg3P)))
    (cfg_trans2 pc f964_0_nth_LE pc1 f964_0_nth_LE (and (and (and (and (and (and (and (and (<= arg1P arg1) (> arg3 1)) (<= (+ arg2P 1) arg2)) (> arg1 (- 1))) (> arg2 0)) (> arg1P (- 1))) (> arg2P (- 1))) (= (- arg3 1) arg3P)) (= arg4 arg4P)))
    (cfg_trans2 pc f964_0_nth_LE pc1 f754_0_main_LE (and (and (and (and (and (and (<= arg1P arg1) (< arg3 2)) (> arg1 (- 1))) (> arg2 (- 1))) (> arg1P (- 1))) (= 0 arg2P)) (= arg4 arg3P)))
    (cfg_trans2 pc f964_0_nth_LE pc1 f754_0_main_LE (and (and (and (and (and (and (<= arg1P arg1) (> arg3 1)) (> arg1 (- 1))) (> arg2 (- 1))) (> arg1P (- 1))) (= 0 arg2P)) (= arg4 arg3P)))
    (cfg_trans2 pc f1_0_main_Load pc1 f673_0_createIntList_LE (and (and (and (> arg2 (- 1)) (> arg1P (- 1))) (> arg1 0)) (= 1 arg2P)))
    (cfg_trans2 pc f673_0_createIntList_LE pc1 f673_0_createIntList_LE (and (and (and (> arg1 0) (> arg2 0)) (= (- arg1 1) arg1P)) (= (+ arg2 1) arg2P)))
    (cfg_trans2 pc __init pc1 f1_0_main_Load true)
  )
)
