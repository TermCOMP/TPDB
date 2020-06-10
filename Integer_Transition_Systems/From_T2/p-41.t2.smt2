(declare-sort Loc 0)
(declare-const l0 Loc)
(declare-const l1 Loc)
(declare-const l2 Loc)
(assert (distinct l0 l1 l2))

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

(define-fun init_main ( (pc^0 Loc) (Result_4^0 Int) ) Bool
  (cfg_init pc^0 l2 true))

(define-fun next_main (
                 (pc^0 Loc) (Result_4^0 Int)
                 (pc^post Loc) (Result_4^post Int)
             ) Bool
  (or
    (cfg_trans2 pc^0 l0 pc^post l1 (exists ( (Result_4^1 Int) ) (and (= Result_4^1 Result_4^1) (= Result_4^post Result_4^post))))
    (cfg_trans2 pc^0 l2 pc^post l0 (= Result_4^0 Result_4^post))
  )
)
