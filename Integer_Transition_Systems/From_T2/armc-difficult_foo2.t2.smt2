(declare-sort Loc 0)
(declare-const l1 Loc)
(declare-const l0 Loc)
(assert (distinct l1 l0))

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

(define-fun init_main ( (pc^0 Loc)  ) Bool
  (cfg_init pc^0 l1 true))

(define-fun next_main (
                 (pc^0 Loc) 
                 (pc^post Loc) 
             ) Bool
  (or
    (cfg_trans2 pc^0 l1 pc^post l0 (<= 0 0))
  )
)
