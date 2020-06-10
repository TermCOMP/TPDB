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

(define-fun init_main ( (pc^0 Loc) (__const_100^0 Int) (__const_200^0 Int) (__const_300^0 Int) (__const_400^0 Int) (x^0 Int) ) Bool
  (cfg_init pc^0 l3 true))

(define-fun next_main (
                 (pc^0 Loc) (__const_100^0 Int) (__const_200^0 Int) (__const_300^0 Int) (__const_400^0 Int) (x^0 Int)
                 (pc^post Loc) (__const_100^post Int) (__const_200^post Int) (__const_300^post Int) (__const_400^post Int) (x^post Int)
             ) Bool
  (or
    (cfg_trans2 pc^0 l0 pc^post l1 (and (and (and (and (and (= x^post (+ (+ 0 __const_300^0) x^0)) (<= (+ 1 __const_100^0) (+ 0 x^post))) (= __const_100^0 __const_100^post)) (= __const_200^0 __const_200^post)) (= __const_300^0 __const_300^post)) (= __const_400^0 __const_400^post)))
    (cfg_trans2 pc^0 l1 pc^post l0 (and (and (and (and (and (= x^post (+ (+ 0 __const_400^0) x^0)) (<= (+ 1 __const_100^0) (+ 0 x^post))) (= __const_100^0 __const_100^post)) (= __const_200^0 __const_200^post)) (= __const_300^0 __const_300^post)) (= __const_400^0 __const_400^post)))
    (cfg_trans2 pc^0 l2 pc^post l0 (and (and (and (and (and (= x^post (+ (+ 0 __const_200^0) x^0)) (<= (+ 1 __const_100^0) (+ 0 x^post))) (= __const_100^0 __const_100^post)) (= __const_200^0 __const_200^post)) (= __const_300^0 __const_300^post)) (= __const_400^0 __const_400^post)))
    (cfg_trans2 pc^0 l2 pc^post l1 (and (and (and (and (and (= x^post (+ (+ 0 __const_100^0) x^0)) (<= (+ 1 __const_100^0) (+ 0 x^post))) (= __const_100^0 __const_100^post)) (= __const_200^0 __const_200^post)) (= __const_300^0 __const_300^post)) (= __const_400^0 __const_400^post)))
    (cfg_trans2 pc^0 l3 pc^post l2 (and (and (and (and (= __const_100^0 __const_100^post) (= __const_200^0 __const_200^post)) (= __const_300^0 __const_300^post)) (= __const_400^0 __const_400^post)) (= x^0 x^post)))
  )
)
