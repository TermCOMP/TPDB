(declare-sort Loc 0)
(declare-const f1_0_main_Load Loc)
(declare-const f86_0_sum_NE Loc)
(declare-const __init Loc)
(assert (distinct f1_0_main_Load f86_0_sum_NE __init ))

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
    (cfg_trans2 pc f1_0_main_Load pc1 f86_0_sum_NE (and (and (> arg1 0) (> arg2 4)) (= arg2 arg1P)))
    (cfg_trans2 pc f1_0_main_Load pc1 f86_0_sum_NE (and (and (and (and (> 1 (* (- 1) arg2)) (> arg2 (- 1))) (< arg2 5)) (> arg1 0)) (= (* (- 1) arg2) arg1P)))
    (cfg_trans2 pc f86_0_sum_NE pc1 f86_0_sum_NE (and (and (< arg1 0) (< (- arg1 1) arg1)) (= (- arg1 1) arg1P)))
    (cfg_trans2 pc f86_0_sum_NE pc1 f86_0_sum_NE (and (and (> arg1 0) (< (- arg1 1) arg1)) (= (- arg1 1) arg1P)))
    (cfg_trans2 pc __init pc1 f1_0_main_Load true)
  )
)
