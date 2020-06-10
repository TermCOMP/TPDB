(declare-sort Loc 0)
(declare-const l0 Loc)
(declare-const l1 Loc)
(declare-const l2 Loc)
(declare-const l3 Loc)
(assert (distinct l0 l1 l2 l3))

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

(define-fun init_main ( (pc^0 Loc) (t^0 Int) (x^0 Int) (y^0 Int) ) Bool
  (cfg_init pc^0 l3 true))

(define-fun next_main (
                 (pc^0 Loc) (t^0 Int) (x^0 Int) (y^0 Int)
                 (pc^post Loc) (t^post Int) (x^post Int) (y^post Int)
             ) Bool
  (or
    (cfg_trans2 pc^0 l0 pc^post l1 (and (and (and (and (<= 0 (+ 0 x^0)) (<= (+ 0 t^0) (+ 0 y^0))) (= x^post (+ (+ 0 x^0) y^0))) (= t^0 t^post)) (= y^0 y^post)))
    (cfg_trans2 pc^0 l1 pc^post l0 (and (and (= t^0 t^post) (= x^0 x^post)) (= y^0 y^post)))
    (cfg_trans2 pc^0 l2 pc^post l0 (exists ( (t^1 Int) (t^2 Int) (t^3 Int) (t^4 Int) (t^5 Int) (t^6 Int) (t^7 Int) (t^8 Int) (t^9 Int) ) (and (and (and (and (and (and (and (and (and (and (and (and (and (= t^1 -1) (= t^2 (+ -1 t^1))) (= t^3 (+ -1 t^2))) (= t^4 (+ -1 t^3))) (= t^5 (+ -1 t^4))) (= t^6 (+ -1 t^5))) (= t^7 (+ -1 t^6))) (= t^8 (+ -1 t^7))) (= t^9 (+ -1 t^8))) (= t^post (+ -1 t^9))) (<= -1 (+ 0 x^0))) (<= (+ 0 t^post) (+ 0 y^0))) (= x^0 x^post)) (= y^0 y^post))))
    (cfg_trans2 pc^0 l3 pc^post l2 (and (and (= t^0 t^post) (= x^0 x^post)) (= y^0 y^post)))
  )
)
