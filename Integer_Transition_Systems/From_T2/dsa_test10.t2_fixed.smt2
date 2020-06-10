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

(define-fun init_main ( (pc^0 Loc) (i57^0 Int) (i911^0 Int) (tmp^0 Int) (x35^0 Int) (x79^0 Int) ) Bool
  (cfg_init pc^0 l6 true))

(define-fun next_main (
                 (pc^0 Loc) (i57^0 Int) (i911^0 Int) (tmp^0 Int) (x35^0 Int) (x79^0 Int)
                 (pc^post Loc) (i57^post Int) (i911^post Int) (tmp^post Int) (x35^post Int) (x79^post Int)
             ) Bool
  (or
    (cfg_trans2 pc^0 l0 pc^post l1 (and (and (and (and (= i57^0 i57^post) (= i911^0 i911^post)) (= tmp^0 tmp^post)) (= x35^0 x35^post)) (= x79^0 x79^post)))
    (cfg_trans2 pc^0 l2 pc^post l3 (and (and (and (and (and (<= 10 (+ 0 i911^0)) (= i57^0 i57^post)) (= i911^0 i911^post)) (= tmp^0 tmp^post)) (= x35^0 x35^post)) (= x79^0 x79^post)))
    (cfg_trans2 pc^0 l2 pc^post l4 (and (and (and (and (and (<= (+ 1 i911^0) 10) (= i911^post (+ 1 i911^0))) (= i57^0 i57^post)) (= tmp^0 tmp^post)) (= x35^0 x35^post)) (= x79^0 x79^post)))
    (cfg_trans2 pc^0 l4 pc^post l2 (and (and (and (and (= i57^0 i57^post) (= i911^0 i911^post)) (= tmp^0 tmp^post)) (= x35^0 x35^post)) (= x79^0 x79^post)))
    (cfg_trans2 pc^0 l1 pc^post l4 (and (and (and (and (and (<= 10 (+ 0 i57^0)) (= x79^post x79^post)) (= i911^post 0)) (= i57^0 i57^post)) (= tmp^0 tmp^post)) (= x35^0 x35^post)))
    (cfg_trans2 pc^0 l1 pc^post l0 (and (and (and (and (and (<= (+ 1 i57^0) 10) (= i57^post (+ 1 i57^0))) (= i911^0 i911^post)) (= tmp^0 tmp^post)) (= x35^0 x35^post)) (= x79^0 x79^post)))
    (cfg_trans2 pc^0 l5 pc^post l0 (and (and (and (and (= tmp^post tmp^post) (= x35^post x35^post)) (= i57^post 0)) (= i911^0 i911^post)) (= x79^0 x79^post)))
    (cfg_trans2 pc^0 l6 pc^post l5 (and (and (and (and (= i57^0 i57^post) (= i911^0 i911^post)) (= tmp^0 tmp^post)) (= x35^0 x35^post)) (= x79^0 x79^post)))
  )
)
