(declare-sort Loc 0)
(declare-const l0 Loc)
(declare-const l1 Loc)
(declare-const l2 Loc)
(declare-const l3 Loc)
(declare-const l4 Loc)
(declare-const l5 Loc)
(declare-const l6 Loc)
(assert (distinct l0 l1 l2 l3 l4 l5 l6))

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

(define-fun init_main ( (pc^0 Loc) (i10^0 Int) (i13^0 Int) (n12^0 Int) (n9^0 Int) (n^0 Int) (tmp^0 Int) (tmp___0^0 Int) ) Bool
  (cfg_init pc^0 l6 true))

(define-fun next_main (
                 (pc^0 Loc) (i10^0 Int) (i13^0 Int) (n12^0 Int) (n9^0 Int) (n^0 Int) (tmp^0 Int) (tmp___0^0 Int)
                 (pc^post Loc) (i10^post Int) (i13^post Int) (n12^post Int) (n9^post Int) (n^post Int) (tmp^post Int) (tmp___0^post Int)
             ) Bool
  (or
    (cfg_trans2 pc^0 l0 pc^post l1 (and (and (and (and (and (and (= i10^0 i10^post) (= i13^0 i13^post)) (= n^0 n^post)) (= n12^0 n12^post)) (= n9^0 n9^post)) (= tmp^0 tmp^post)) (= tmp___0^0 tmp___0^post)))
    (cfg_trans2 pc^0 l2 pc^post l3 (and (and (and (and (and (and (and (<= (+ 0 n12^0) (+ 0 i13^0)) (= i10^0 i10^post)) (= i13^0 i13^post)) (= n^0 n^post)) (= n12^0 n12^post)) (= n9^0 n9^post)) (= tmp^0 tmp^post)) (= tmp___0^0 tmp___0^post)))
    (cfg_trans2 pc^0 l2 pc^post l4 (and (and (and (and (and (and (and (<= (+ 1 i13^0) (+ 0 n12^0)) (= i13^post (+ 1 i13^0))) (= i10^0 i10^post)) (= n^0 n^post)) (= n12^0 n12^post)) (= n9^0 n9^post)) (= tmp^0 tmp^post)) (= tmp___0^0 tmp___0^post)))
    (cfg_trans2 pc^0 l4 pc^post l2 (and (and (and (and (and (and (= i10^0 i10^post) (= i13^0 i13^post)) (= n^0 n^post)) (= n12^0 n12^post)) (= n9^0 n9^post)) (= tmp^0 tmp^post)) (= tmp___0^0 tmp___0^post)))
    (cfg_trans2 pc^0 l1 pc^post l4 (and (and (and (and (and (and (and (<= (+ 0 n9^0) (+ 0 i10^0)) (= tmp___0^post tmp___0^post)) (= n12^post (+ 0 n^0))) (= i13^post 0)) (= i10^0 i10^post)) (= n^0 n^post)) (= n9^0 n9^post)) (= tmp^0 tmp^post)))
    (cfg_trans2 pc^0 l1 pc^post l0 (and (and (and (and (and (and (and (<= (+ 1 i10^0) (+ 0 n9^0)) (= i10^post (+ 1 i10^0))) (= i13^0 i13^post)) (= n^0 n^post)) (= n12^0 n12^post)) (= n9^0 n9^post)) (= tmp^0 tmp^post)) (= tmp___0^0 tmp___0^post)))
    (cfg_trans2 pc^0 l5 pc^post l0 (and (and (and (and (and (and (= n^post n^post) (= tmp^post tmp^post)) (= n9^post n9^post)) (= i10^post 0)) (= i13^0 i13^post)) (= n12^0 n12^post)) (= tmp___0^0 tmp___0^post)))
    (cfg_trans2 pc^0 l6 pc^post l5 (and (and (and (and (and (and (= i10^0 i10^post) (= i13^0 i13^post)) (= n^0 n^post)) (= n12^0 n12^post)) (= n9^0 n9^post)) (= tmp^0 tmp^post)) (= tmp___0^0 tmp___0^post)))
  )
)
