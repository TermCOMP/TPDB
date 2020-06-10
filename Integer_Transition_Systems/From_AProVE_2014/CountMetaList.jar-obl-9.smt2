(declare-sort Loc 0)
(declare-const f265_0_createMetaList_Return Loc)
(declare-const f724_0_countMetaList_NULL Loc)
(declare-const f1_0_main_Load Loc)
(declare-const f693_0_createMetaList_GE Loc)
(declare-const f932_0_createMetaList_LE Loc)
(declare-const __init Loc)
(assert (distinct f265_0_createMetaList_Return f724_0_countMetaList_NULL f1_0_main_Load f693_0_createMetaList_GE f932_0_createMetaList_LE __init ))

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
    (cfg_trans2 pc f265_0_createMetaList_Return pc1 f724_0_countMetaList_NULL (and (and (<= arg1P arg1) (> arg1 (- 1))) (> arg1P (- 1))))
    (cfg_trans2 pc f1_0_main_Load pc1 f724_0_countMetaList_NULL (and (> arg1 0) (> arg1P (- 1))))
    (cfg_trans2 pc f724_0_countMetaList_NULL pc1 f724_0_countMetaList_NULL (and (and (<= (+ arg1P 2) arg1) (> arg1 2)) (> arg1P (- 1))))
    (cfg_trans2 pc f724_0_countMetaList_NULL pc1 f724_0_countMetaList_NULL (and (and (<= (+ arg1P 2) arg1) (> arg1 1)) (> arg1P (- 1))))
    (cfg_trans2 pc f724_0_countMetaList_NULL pc1 f724_0_countMetaList_NULL (and (and (>= arg1 arg1P) (> arg1 2)) (> arg1P 0)))
    (cfg_trans2 pc f1_0_main_Load pc1 f693_0_createMetaList_GE (and (and (and (and (> arg2 (- 1)) (> arg2P (- 1))) (> arg1 0)) (= 0 arg1P)) (= 1 arg3P)))
    (cfg_trans2 pc f693_0_createMetaList_GE pc1 f932_0_createMetaList_LE (and (and (and (and (and (> arg3P (- 1)) (> arg2 arg1)) (> arg3 0)) (= arg2 arg1P)) (= arg1 arg2P)) (= (+ arg3 1) arg4P)))
    (cfg_trans2 pc f932_0_createMetaList_LE pc1 f693_0_createMetaList_GE (and (and (and (= 0 arg3) (= (+ arg2 1) arg1P)) (= arg1 arg2P)) (= arg4 arg3P)))
    (cfg_trans2 pc f932_0_createMetaList_LE pc1 f932_0_createMetaList_LE (and (and (and (and (> arg3 0) (= arg1 arg1P)) (= arg2 arg2P)) (= (- arg3 1) arg3P)) (= arg4 arg4P)))
    (cfg_trans2 pc __init pc1 f1_0_main_Load true)
  )
)
