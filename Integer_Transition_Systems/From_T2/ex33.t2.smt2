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

(define-fun init_main ( (pc^0 Loc) (__len9^0 Int) (__val8^0 Int) (tmp10^0 Int) (tmp^0 Int) (tmp___0^0 Int) (tmp___1^0 Int) ) Bool
  (cfg_init pc^0 l5 true))

(define-fun next_main (
                 (pc^0 Loc) (__len9^0 Int) (__val8^0 Int) (tmp10^0 Int) (tmp^0 Int) (tmp___0^0 Int) (tmp___1^0 Int)
                 (pc^post Loc) (__len9^post Int) (__val8^post Int) (tmp10^post Int) (tmp^post Int) (tmp___0^post Int) (tmp___1^post Int)
             ) Bool
  (or
    (cfg_trans2 pc^0 l0 pc^post l1 (and (and (and (and (and (= __len9^0 __len9^post) (= __val8^0 __val8^post)) (= tmp^0 tmp^post)) (= tmp10^0 tmp10^post)) (= tmp___0^0 tmp___0^post)) (= tmp___1^0 tmp___1^post)))
    (cfg_trans2 pc^0 l2 pc^post l0 (and (and (and (and (and (= tmp___0^post tmp___0^post) (= __len9^0 __len9^post)) (= __val8^0 __val8^post)) (= tmp^0 tmp^post)) (= tmp10^0 tmp10^post)) (= tmp___1^0 tmp___1^post)))
    (cfg_trans2 pc^0 l3 pc^post l0 (and (and (and (and (and (and (and (<= (+ 0 tmp___1^0) -1) (<= -1 (+ 0 tmp___1^0))) (= __val8^post 0)) (= __len9^post __len9^post)) (= tmp10^post tmp10^post)) (= tmp^0 tmp^post)) (= tmp___0^0 tmp___0^post)) (= tmp___1^0 tmp___1^post)))
    (cfg_trans2 pc^0 l3 pc^post l2 (and (and (and (and (and (and (<= 0 (+ 0 tmp___1^0)) (= __len9^0 __len9^post)) (= __val8^0 __val8^post)) (= tmp^0 tmp^post)) (= tmp10^0 tmp10^post)) (= tmp___0^0 tmp___0^post)) (= tmp___1^0 tmp___1^post)))
    (cfg_trans2 pc^0 l3 pc^post l2 (and (and (and (and (and (and (<= (+ 1 tmp___1^0) -1) (= __len9^0 __len9^post)) (= __val8^0 __val8^post)) (= tmp^0 tmp^post)) (= tmp10^0 tmp10^post)) (= tmp___0^0 tmp___0^post)) (= tmp___1^0 tmp___1^post)))
    (cfg_trans2 pc^0 l4 pc^post l3 (and (and (and (and (and (= tmp^post tmp^post) (= tmp___1^post tmp___1^post)) (= __len9^0 __len9^post)) (= __val8^0 __val8^post)) (= tmp10^0 tmp10^post)) (= tmp___0^0 tmp___0^post)))
    (cfg_trans2 pc^0 l5 pc^post l4 (and (and (and (and (and (= __len9^0 __len9^post) (= __val8^0 __val8^post)) (= tmp^0 tmp^post)) (= tmp10^0 tmp10^post)) (= tmp___0^0 tmp___0^post)) (= tmp___1^0 tmp___1^post)))
  )
)
