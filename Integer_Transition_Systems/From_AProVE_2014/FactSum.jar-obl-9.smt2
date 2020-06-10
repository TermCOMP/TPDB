(declare-sort Loc 0)
(declare-const f1_0_main_ConstantStackPush Loc)
(declare-const f149_0_doSum_LT Loc)
(declare-const f163_0_factorial_GT Loc)
(declare-const __init Loc)
(assert (distinct f1_0_main_ConstantStackPush f149_0_doSum_LT f163_0_factorial_GT __init ))

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

(define-fun init_main ( (pc Loc) (arg1 Int) ) Bool
  (cfg_init pc __init true))

(define-fun next_main (
                 (pc Loc) (arg1 Int)
                 (pc1 Loc) (arg1P Int)
             ) Bool
  (or
    (cfg_trans2 pc f1_0_main_ConstantStackPush pc1 f149_0_doSum_LT (= 10 arg1P))
    (cfg_trans2 pc f149_0_doSum_LT pc1 f163_0_factorial_GT (and (> arg1 (- 1)) (= arg1 arg1P)))
    (cfg_trans2 pc f149_0_doSum_LT pc1 f149_0_doSum_LT (and (> arg1 (- 1)) (= (- arg1 1) arg1P)))
    (cfg_trans2 pc f163_0_factorial_GT pc1 f163_0_factorial_GT (and (and (> arg1 0) (< (- arg1 1) arg1)) (= (- arg1 1) arg1P)))
    (cfg_trans2 pc __init pc1 f1_0_main_ConstantStackPush true)
  )
)
