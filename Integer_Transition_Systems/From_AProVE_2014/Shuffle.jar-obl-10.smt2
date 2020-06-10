(declare-sort Loc 0)
(declare-const f226_0_createIntList_Return Loc)
(declare-const f570_0_main_NULL Loc)
(declare-const f1_0_main_Load Loc)
(declare-const f507_0_createIntList_LE Loc)
(declare-const f726_0_reverse_NULL Loc)
(declare-const __init Loc)
(assert (distinct f226_0_createIntList_Return f570_0_main_NULL f1_0_main_Load f507_0_createIntList_LE f726_0_reverse_NULL __init ))

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

(define-fun init_main ( (pc Loc) (arg1 Int) (arg2 Int) ) Bool
  (cfg_init pc __init true))

(define-fun next_main (
                 (pc Loc) (arg1 Int) (arg2 Int)
                 (pc1 Loc) (arg1P Int) (arg2P Int)
             ) Bool
  (or
    (cfg_trans2 pc f226_0_createIntList_Return pc1 f570_0_main_NULL (and (and (and (and (and (and (<= arg1P arg1) (<= (- arg1P 1) arg2)) (<= arg2P arg2)) (> arg1 0)) (> arg2 (- 1))) (> arg1P 0)) (> arg2P (- 1))))
    (cfg_trans2 pc f1_0_main_Load pc1 f570_0_main_NULL (and (and (and (<= arg1P arg1) (> arg1 0)) (> arg1P 0)) (> arg2P (- 1))))
    (cfg_trans2 pc f570_0_main_NULL pc1 f570_0_main_NULL (and (and (and (and (and (and (and (<= arg1P arg1) (<= (+ arg1P 1) arg2)) (<= (+ arg2P 1) arg1)) (<= (+ arg2P 2) arg2)) (> arg1 0)) (> arg2 1)) (> arg1P 0)) (> arg2P (- 1))))
    (cfg_trans2 pc f570_0_main_NULL pc1 f570_0_main_NULL (exists ((x14 Int) (x19 Int)) (and (and (and (and (and (and (and (> x14 0) (> x19 0)) (<= arg1P arg1)) (<= (+ arg1P 2) arg2)) (> arg1 0)) (> arg2 2)) (> arg1P 0)) (> arg2P (- 1)))))
    (cfg_trans2 pc f1_0_main_Load pc1 f507_0_createIntList_LE (and (and (and (> arg2 (- 1)) (> arg1P (- 1))) (> arg1 0)) (= 1 arg2P)))
    (cfg_trans2 pc f507_0_createIntList_LE pc1 f507_0_createIntList_LE (and (and (and (> arg1 0) (> arg2 0)) (= (- arg1 1) arg1P)) (= (+ arg2 1) arg2P)))
    (cfg_trans2 pc f570_0_main_NULL pc1 f726_0_reverse_NULL (exists ((x25 Int) (x29 Int)) (and (and (and (and (and (> x25 0) (> x29 0)) (<= (+ arg1P 2) arg2)) (> arg1 0)) (> arg2 2)) (> arg1P 0))))
    (cfg_trans2 pc f726_0_reverse_NULL pc1 f726_0_reverse_NULL (and (and (<= (+ arg1P 1) arg1) (> arg1 0)) (> arg1P (- 1))))
    (cfg_trans2 pc __init pc1 f1_0_main_Load true)
  )
)
