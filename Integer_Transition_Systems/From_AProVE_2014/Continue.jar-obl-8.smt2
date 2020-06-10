(declare-sort Loc 0)
(declare-const f33_0_main_Load Loc)
(declare-const f1_0_main_ConstantStackPush Loc)
(declare-const __init Loc)
(assert (distinct f33_0_main_Load f1_0_main_ConstantStackPush __init ))

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

(define-fun init_main ( (pc Loc)  ) Bool
  (cfg_init pc __init true))

(define-fun next_main (
                 (pc Loc) 
                 (pc1 Loc) 
             ) Bool
  (or
    (cfg_trans2 pc f33_0_main_Load pc1 f33_0_main_Load true)
    (cfg_trans2 pc f1_0_main_ConstantStackPush pc1 f33_0_main_Load true)
    (cfg_trans2 pc __init pc1 f1_0_main_ConstantStackPush true)
  )
)
