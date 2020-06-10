(declare-sort Loc 0)
(declare-const f1_0_main_ConstantStackPush Loc)
(declare-const f458_0_sort_GE Loc)
(declare-const f543_0_sort_GE Loc)
(declare-const __init Loc)
(assert (distinct f1_0_main_ConstantStackPush f458_0_sort_GE f543_0_sort_GE __init ))

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

(define-fun init_main ( (pc Loc) (arg1 Int) (arg2 Int) (arg3 Int) ) Bool
  (cfg_init pc __init true))

(define-fun next_main (
                 (pc Loc) (arg1 Int) (arg2 Int) (arg3 Int)
                 (pc1 Loc) (arg1P Int) (arg2P Int) (arg3P Int)
             ) Bool
  (or
    (cfg_trans2 pc f1_0_main_ConstantStackPush pc1 f458_0_sort_GE (= 1 arg1P))
    (cfg_trans2 pc f458_0_sort_GE pc1 f543_0_sort_GE (and (and (and (and (> arg1 0) (< arg1 100)) (= arg1 arg1P)) (= 0 arg2P)) (= (- 100 arg1) arg3P)))
    (cfg_trans2 pc f543_0_sort_GE pc1 f458_0_sort_GE (and (<= arg3 arg2) (= (+ arg1 1) arg1P)))
    (cfg_trans2 pc f543_0_sort_GE pc1 f543_0_sort_GE (exists ((x8 Int) (x7 Int)) (and (and (and (and (and (and (and (and (< arg2 100) (> arg3 arg2)) (> arg2 (- 1))) (< arg2 99)) (<= x8 x7)) (> arg1 0)) (= arg1 arg1P)) (= (+ arg2 1) arg2P)) (= (- 100 arg1) arg3P))))
    (cfg_trans2 pc f543_0_sort_GE pc1 f543_0_sort_GE (exists ((x13 Int) (x12 Int)) (and (and (and (and (and (and (and (and (< arg2 100) (> arg3 arg2)) (> arg2 (- 1))) (< arg2 99)) (> arg1 0)) (> x13 x12)) (= arg1 arg1P)) (= (+ arg2 1) arg2P)) (= (- 100 arg1) arg3P))))
    (cfg_trans2 pc __init pc1 f1_0_main_ConstantStackPush true)
  )
)
