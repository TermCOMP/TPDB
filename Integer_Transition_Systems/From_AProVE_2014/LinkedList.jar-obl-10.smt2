(declare-sort Loc 0)
(declare-const f1_0_main_New Loc)
(declare-const f909_0_main_GE Loc)
(declare-const f1058_0_size_NULL Loc)
(declare-const f1097_0_outputList_NULL Loc)
(declare-const __init Loc)
(assert (distinct f1_0_main_New f909_0_main_GE f1058_0_size_NULL f1097_0_outputList_NULL __init ))

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
    (cfg_trans2 pc f1_0_main_New pc1 f909_0_main_GE (and (and (and (and (and (and (and (<= arg1P arg1) (> arg2 (- 1))) (<= (- arg2P 1) arg1)) (> arg1 0)) (> arg1P 0)) (> arg2P 1)) (= 1 arg3P)) (= arg2 arg4P)))
    (cfg_trans2 pc f909_0_main_GE pc1 f1058_0_size_NULL (and (and (and (> arg1 0) (<= arg4 arg3)) (> arg2 0)) (> arg1P (- 1))))
    (cfg_trans2 pc f1058_0_size_NULL pc1 f1097_0_outputList_NULL (and (> arg1 (- 1)) (> arg1P (- 1))))
    (cfg_trans2 pc f1058_0_size_NULL pc1 f1058_0_size_NULL (and (> arg1 0) (> arg1P (- 1))))
    (cfg_trans2 pc f1097_0_outputList_NULL pc1 f1097_0_outputList_NULL (and (> arg1 0) (> arg1P (- 1))))
    (cfg_trans2 pc f909_0_main_GE pc1 f909_0_main_GE (and (and (and (and (and (and (and (and (and (and (> arg4 (+ arg3 2)) (> arg4 (+ arg3 1))) (> arg4 (- 1))) (<= arg1P arg1)) (<= arg1P arg2)) (> arg1 0)) (> arg2 0)) (> arg1P 0)) (> arg2P 6)) (= (+ arg3 4) arg3P)) (= arg4 arg4P)))
    (cfg_trans2 pc __init pc1 f1_0_main_New true)
  )
)
