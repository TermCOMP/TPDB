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

(define-fun init_main ( (pc^0 Loc) (i^0 Int) (tmp10^0 Int) (tmp13^0 Int) (tmp___011^0 Int) (tmp___014^0 Int) ) Bool
  (cfg_init pc^0 l2 true))

(define-fun next_main (
                 (pc^0 Loc) (i^0 Int) (tmp10^0 Int) (tmp13^0 Int) (tmp___011^0 Int) (tmp___014^0 Int)
                 (pc^post Loc) (i^post Int) (tmp10^post Int) (tmp13^post Int) (tmp___011^post Int) (tmp___014^post Int)
             ) Bool
  (or
    (cfg_trans2 pc^0 l0 pc^post l1 (exists ( (i^1 Int) (i^2 Int) (i^3 Int) (i^4 Int) ) (and (and (and (and (and (and (and (and (= i^1 0) (= tmp10^post (+ 0 i^1))) (= i^2 (+ 1 i^1))) (= tmp___011^post (+ 0 i^2))) (= i^3 (+ 1 i^2))) (= tmp13^post (+ 0 i^3))) (= i^4 (+ 1 i^3))) (= tmp___014^post (+ 0 i^4))) (= i^post (+ 1 i^4)))))
    (cfg_trans2 pc^0 l2 pc^post l0 (and (and (and (and (= i^0 i^post) (= tmp10^0 tmp10^post)) (= tmp13^0 tmp13^post)) (= tmp___011^0 tmp___011^post)) (= tmp___014^0 tmp___014^post)))
  )
)
