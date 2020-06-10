(declare-sort Loc 0)
(declare-const f1_0_main_Load Loc)
(declare-const f1317_0_mirror_NULL Loc)
(declare-const f322_0_createTree_Return Loc)
(declare-const f477_0_createNode_Return Loc)
(declare-const f731_0_random_ArrayAccess Loc)
(declare-const f512_0_createNode_Return Loc)
(declare-const f750_0_random_ArrayAccess Loc)
(declare-const f1551_0_createTree_LE Loc)
(declare-const f973_0_random_ArrayAccess Loc)
(declare-const __init Loc)
(assert (distinct f1_0_main_Load f1317_0_mirror_NULL f322_0_createTree_Return f477_0_createNode_Return f731_0_random_ArrayAccess f512_0_createNode_Return f750_0_random_ArrayAccess f1551_0_createTree_LE f973_0_random_ArrayAccess __init ))

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
    (cfg_trans2 pc f1_0_main_Load pc1 f1317_0_mirror_NULL (and (> arg1 0) (> arg1P (- 1))))
    (cfg_trans2 pc f322_0_createTree_Return pc1 f1317_0_mirror_NULL (and (and (<= arg1P arg1) (> arg1 (- 1))) (> arg1P (- 1))))
    (cfg_trans2 pc f1317_0_mirror_NULL pc1 f1317_0_mirror_NULL (and (and (<= (+ arg1P 1) arg1) (> arg1 0)) (> arg1P (- 1))))
    (cfg_trans2 pc f477_0_createNode_Return pc1 f731_0_random_ArrayAccess (> arg1P 0))
    (cfg_trans2 pc f1_0_main_Load pc1 f731_0_random_ArrayAccess (and (and (<= arg1P arg1) (> arg1 0)) (> arg1P 0)))
    (cfg_trans2 pc f512_0_createNode_Return pc1 f750_0_random_ArrayAccess (> arg1P 0))
    (cfg_trans2 pc f1_0_main_Load pc1 f750_0_random_ArrayAccess (and (and (<= arg1P arg1) (> arg1 0)) (> arg1P 0)))
    (cfg_trans2 pc f750_0_random_ArrayAccess pc1 f1551_0_createTree_LE (exists ((x22 Int)) (and (and (and (and (and (> x22 0) (> arg2P (- 1))) (<= (- arg1P 3) arg1)) (> arg1 0)) (> arg1P 3)) (= (+ x22 1) arg4P))))
    (cfg_trans2 pc f731_0_random_ArrayAccess pc1 f1551_0_createTree_LE (exists ((x27 Int)) (and (and (and (and (and (> x27 0) (> arg2P (- 1))) (<= (- arg1P 1) arg1)) (> arg1 0)) (> arg1P 1)) (= (+ x27 1) arg4P))))
    (cfg_trans2 pc f1551_0_createTree_LE pc1 f1551_0_createTree_LE (and (and (and (and (and (and (<= (+ arg1P 2) arg1) (> arg2 0)) (> arg1 1)) (> arg1P (- 1))) (= (- arg2 1) arg2P)) (= arg3 arg3P)) (= arg4 arg4P)))
    (cfg_trans2 pc f1551_0_createTree_LE pc1 f1551_0_createTree_LE (exists ((x42 Int)) (and (and (and (and (and (and (and (> arg2 0) (> arg4 0)) (> x42 0)) (<= (- arg1P 2) arg1)) (> arg1 2)) (> arg1P 3)) (= (- arg2 1) arg2P)) (= arg3 arg3P))))
    (cfg_trans2 pc f1551_0_createTree_LE pc1 f1551_0_createTree_LE (exists ((x49 Int)) (and (and (and (and (and (and (and (> arg2 0) (> arg4 0)) (> x49 0)) (<= (- arg1P 2) arg1)) (> arg1 2)) (> arg1P 3)) (= (- arg2 1) arg2P)) (= arg3 arg3P))))
    (cfg_trans2 pc f1551_0_createTree_LE pc1 f1551_0_createTree_LE (exists ((x56 Int)) (and (and (and (and (and (and (and (> arg2 0) (> arg4 0)) (> x56 0)) (<= (- arg1P 3) arg1)) (> arg1 2)) (> arg1P 5)) (= (- arg2 1) arg2P)) (= arg3 arg3P))))
    (cfg_trans2 pc f1551_0_createTree_LE pc1 f1551_0_createTree_LE (exists ((x63 Int)) (and (and (and (and (and (and (and (> arg2 0) (> arg4 0)) (> x63 0)) (<= (- arg1P 3) arg1)) (> arg1 2)) (> arg1P 5)) (= (- arg2 1) arg2P)) (= arg3 arg3P))))
    (cfg_trans2 pc f1_0_main_Load pc1 f973_0_random_ArrayAccess (and (and (and (and (and (and (<= arg1P arg1) (> arg2 (- 1))) (<= arg2P arg1)) (> arg1 0)) (> arg1P 0)) (> arg2P 0)) (= 0 arg3P)))
    (cfg_trans2 pc f1551_0_createTree_LE pc1 f973_0_random_ArrayAccess (and (and (and (and (and (and (> arg2 0) (> arg4 0)) (> arg3 (- 1))) (<= (+ arg2P 2) arg1)) (> arg1 2)) (> arg2P 0)) (= arg4 arg3P)))
    (cfg_trans2 pc f1551_0_createTree_LE pc1 f973_0_random_ArrayAccess (and (and (and (and (and (and (> arg2 0) (> arg4 0)) (> arg3P 0)) (> arg3 (- 1))) (<= (+ arg2P 2) arg1)) (> arg1 2)) (> arg2P 0)))
    (cfg_trans2 pc __init pc1 f1_0_main_Load true)
  )
)
