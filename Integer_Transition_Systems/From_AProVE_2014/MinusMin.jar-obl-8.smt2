(declare-sort Loc 0)
(declare-const f1_0_main_Load Loc)
(declare-const f252_0_min_GE Loc)
(declare-const f261_0_main_NE Loc)
(declare-const __init Loc)
(assert (distinct f1_0_main_Load f252_0_min_GE f261_0_main_NE __init ))

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
    (cfg_trans2 pc f1_0_main_Load pc1 f252_0_min_GE (and (and (and (and (> arg1P (- 1)) (> arg2 (- 1))) (> arg3P (- 1))) (> arg1 0)) (= (- arg1P 1) arg2P)))
    (cfg_trans2 pc f252_0_min_GE pc1 f261_0_main_NE (and (and (and (> arg3 arg2) (= arg1 arg1P)) (= arg2 arg2P)) (= arg3 arg3P)))
    (cfg_trans2 pc f252_0_min_GE pc1 f261_0_main_NE (and (and (and (<= arg3 arg2) (= arg1 arg1P)) (= arg3 arg2P)) (= arg3 arg3P)))
    (cfg_trans2 pc f261_0_main_NE pc1 f252_0_min_GE (and (and (and (and (> arg1 (- 1)) (= arg2 arg3)) (= arg1 arg1P)) (= (- arg1 1) arg2P)) (= (+ arg2 1) arg3P)))
    (cfg_trans2 pc __init pc1 f1_0_main_Load true)
  )
)
