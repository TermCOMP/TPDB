(declare-sort Loc 0)
(declare-const l0 Loc)
(declare-const l1 Loc)
(declare-const l2 Loc)
(declare-const l3 Loc)
(declare-const l4 Loc)
(declare-const l5 Loc)
(assert (distinct l0 l1 l2 l3 l4 l5))

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

(define-fun init_main ( (pc^0 Loc) (pc_Loop^0 Int) ) Bool
  (cfg_init pc^0 l5 true))

(define-fun next_main (
                 (pc^0 Loc) (pc_Loop^0 Int)
                 (pc^post Loc) (pc_Loop^post Int)
             ) Bool
  (or
    (cfg_trans2 pc^0 l0 pc^post l1 (= pc_Loop^post 2))
    (cfg_trans2 pc^0 l1 pc^post l0 (= pc_Loop^0 pc_Loop^post))
    (cfg_trans2 pc^0 l2 pc^post l3 (exists ( (pc_Loop^1 Int) ) (and (= pc_Loop^1 3) (= pc_Loop^post 2))))
    (cfg_trans2 pc^0 l3 pc^post l2 (= pc_Loop^0 pc_Loop^post))
    (cfg_trans2 pc^0 l4 pc^post l2 (= pc_Loop^post 2))
    (cfg_trans2 pc^0 l5 pc^post l4 (= pc_Loop^0 pc_Loop^post))
  )
)
