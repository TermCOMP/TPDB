(declare-sort Loc 0)
(declare-const f1_0_main_Load Loc)
(declare-const f165_0_appendNewList_LE Loc)
(declare-const f200_0_random_ArrayAccess Loc)
(declare-const f314_0_appendNewList_LE Loc)
(declare-const f387_0_length_NULL Loc)
(declare-const __init Loc)
(assert (distinct f1_0_main_Load f165_0_appendNewList_LE f200_0_random_ArrayAccess f314_0_appendNewList_LE f387_0_length_NULL __init ))

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
    (cfg_trans2 pc f1_0_main_Load pc1 f165_0_appendNewList_LE (and (and (and (and (and (and (and (and (and (> arg2 0) (> arg4P (- 1))) (<= arg1P arg1)) (<= (- arg2P 5) arg1)) (<= (- arg3P 3) arg1)) (> arg1 0)) (> arg1P 0)) (> arg2P 5)) (> arg3P 3)) (= 0 arg5P)))
    (cfg_trans2 pc f165_0_appendNewList_LE pc1 f200_0_random_ArrayAccess (exists ((x13 Int) (x14 Int)) (and (and (and (and (and (and (and (< arg4 2) (> arg5 0)) (> x13 arg5)) (> x14 arg5)) (> arg1 0)) (> arg2 4)) (> arg3 2)) (> arg1P 4))))
    (cfg_trans2 pc f165_0_appendNewList_LE pc1 f200_0_random_ArrayAccess (and (and (and (and (and (and (and (<= (- arg1P 6) arg1) (< arg4 2)) (<= (- arg1P 1) arg2)) (<= (- arg1P 3) arg3)) (> arg1 0)) (> arg2 5)) (> arg3 3)) (> arg1P 6)))
    (cfg_trans2 pc f165_0_appendNewList_LE pc1 f165_0_appendNewList_LE (and (and (and (and (and (and (and (and (and (and (and (and (> arg5P arg5) (> arg5 0)) (> arg4 1)) (<= arg1P arg1)) (<= (+ arg1P 4) arg2)) (<= (+ arg1P 2) arg3)) (> arg1 0)) (> arg2 4)) (> arg3 2)) (> arg1P 0)) (> arg2P 4)) (> arg3P 2)) (= (- arg4 1) arg4P)))
    (cfg_trans2 pc f165_0_appendNewList_LE pc1 f165_0_appendNewList_LE (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (<= arg1P arg1) (> arg4 1)) (<= (+ arg1P 5) arg2)) (<= (+ arg1P 3) arg3)) (<= (- arg2P 7) arg1)) (<= (- arg2P 2) arg2)) (<= (- arg2P 4) arg3)) (<= (- arg3P 5) arg1)) (<= arg3P arg2)) (<= (- arg3P 2) arg3)) (> arg1 0)) (> arg2 5)) (> arg3 3)) (> arg1P 0)) (> arg2P 7)) (> arg3P 5)) (= (- arg4 1) arg4P)) (= 1 arg5P)))
    (cfg_trans2 pc f200_0_random_ArrayAccess pc1 f314_0_appendNewList_LE (and (and (and (and (and (> arg2 1) (> arg2P (- 1))) (<= (+ arg1P 1) arg1)) (> arg1 4)) (> arg1P 3)) (= 0 arg3P)))
    (cfg_trans2 pc f314_0_appendNewList_LE pc1 f314_0_appendNewList_LE (and (and (and (and (and (> arg3P arg3) (> arg3 0)) (> arg2 1)) (> arg1 2)) (> arg1P 2)) (= (- arg2 1) arg2P)))
    (cfg_trans2 pc f314_0_appendNewList_LE pc1 f314_0_appendNewList_LE (and (and (and (and (and (<= (- arg1P 2) arg1) (> arg2 1)) (> arg1 3)) (> arg1P 5)) (= (- arg2 1) arg2P)) (= 1 arg3P)))
    (cfg_trans2 pc f314_0_appendNewList_LE pc1 f387_0_length_NULL (and (and (and (<= (+ arg1P 2) arg1) (< arg2 2)) (> arg1 2)) (> arg1P 0)))
    (cfg_trans2 pc f387_0_length_NULL pc1 f387_0_length_NULL (and (and (<= (+ arg1P 1) arg1) (> arg1 0)) (> arg1P (- 1))))
    (cfg_trans2 pc __init pc1 f1_0_main_Load true)
  )
)
