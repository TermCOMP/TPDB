(declare-sort Loc 0)
(declare-const l0 Loc)
(declare-const l2 Loc)
(declare-const l1 Loc)
(declare-const l3 Loc)
(declare-const l4 Loc)
(assert (distinct l0 l2 l1 l3 l4))

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

(define-fun init_main ( (pc^0 Loc) (x^0 Int) ) Bool
  (cfg_init pc^0 l4 true))

(define-fun next_main (
                 (pc^0 Loc) (x^0 Int)
                 (pc^post Loc) (x^post Int)
             ) Bool
  (or
    (cfg_trans2 pc^0 l0 pc^post l2 (= x^post (+ -1 x^0)))
    (cfg_trans2 pc^0 l2 pc^post l1 (and (<= (+ 1 x^0) 300) (= x^0 x^post)))
    (cfg_trans2 pc^0 l2 pc^post l1 (and (<= 301 (+ 0 x^0)) (= x^0 x^post)))
    (cfg_trans2 pc^0 l1 pc^post l0 (= x^0 x^post))
    (cfg_trans2 pc^0 l3 pc^post l0 (= x^post 100))
    (cfg_trans2 pc^0 l4 pc^post l3 (= x^0 x^post))
  )
)
