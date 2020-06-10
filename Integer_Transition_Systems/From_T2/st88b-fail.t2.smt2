(declare-sort Loc 0)
(declare-const l0 Loc)
(declare-const l1 Loc)
(declare-const l2 Loc)
(declare-const l3 Loc)
(declare-const l4 Loc)
(declare-const l5 Loc)
(declare-const l6 Loc)
(declare-const l7 Loc)
(declare-const l8 Loc)
(declare-const l9 Loc)
(declare-const l10 Loc)
(declare-const l11 Loc)
(declare-const l12 Loc)
(declare-const l13 Loc)
(assert (distinct l0 l1 l2 l3 l4 l5 l6 l7 l8 l9 l10 l11 l12 l13))

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

(define-fun init_main ( (pc^0 Loc) (WItemsNum^0 Int) (___rho_1_^0 Int) (___rho_2_^0 Int) ) Bool
  (cfg_init pc^0 l13 true))

(define-fun next_main (
                 (pc^0 Loc) (WItemsNum^0 Int) (___rho_1_^0 Int) (___rho_2_^0 Int)
                 (pc^post Loc) (WItemsNum^post Int) (___rho_1_^post Int) (___rho_2_^post Int)
             ) Bool
  (or
    (cfg_trans2 pc^0 l0 pc^post l1 (and (and (= WItemsNum^0 WItemsNum^post) (= ___rho_1_^0 ___rho_1_^post)) (= ___rho_2_^0 ___rho_2_^post)))
    (cfg_trans2 pc^0 l1 pc^post l2 (and (and (= ___rho_2_^post ___rho_2_^post) (= WItemsNum^0 WItemsNum^post)) (= ___rho_1_^0 ___rho_1_^post)))
    (cfg_trans2 pc^0 l3 pc^post l4 (and (and (= WItemsNum^0 WItemsNum^post) (= ___rho_1_^0 ___rho_1_^post)) (= ___rho_2_^0 ___rho_2_^post)))
    (cfg_trans2 pc^0 l5 pc^post l6 (and (and (= WItemsNum^0 WItemsNum^post) (= ___rho_1_^0 ___rho_1_^post)) (= ___rho_2_^0 ___rho_2_^post)))
    (cfg_trans2 pc^0 l7 pc^post l8 (and (and (= WItemsNum^0 WItemsNum^post) (= ___rho_1_^0 ___rho_1_^post)) (= ___rho_2_^0 ___rho_2_^post)))
    (cfg_trans2 pc^0 l4 pc^post l3 (and (and (and (<= 3 (+ 0 WItemsNum^0)) (= WItemsNum^post (+ -1 WItemsNum^0))) (= ___rho_1_^0 ___rho_1_^post)) (= ___rho_2_^0 ___rho_2_^post)))
    (cfg_trans2 pc^0 l4 pc^post l0 (and (and (and (<= (+ 0 WItemsNum^0) 2) (= WItemsNum^0 WItemsNum^post)) (= ___rho_1_^0 ___rho_1_^post)) (= ___rho_2_^0 ___rho_2_^post)))
    (cfg_trans2 pc^0 l8 pc^post l9 (and (and (= WItemsNum^0 WItemsNum^post) (= ___rho_1_^0 ___rho_1_^post)) (= ___rho_2_^0 ___rho_2_^post)))
    (cfg_trans2 pc^0 l9 pc^post l8 (and (and (= WItemsNum^0 WItemsNum^post) (= ___rho_1_^0 ___rho_1_^post)) (= ___rho_2_^0 ___rho_2_^post)))
    (cfg_trans2 pc^0 l10 pc^post l1 (and (and (and (<= 6 (+ 0 WItemsNum^0)) (= WItemsNum^post (+ 1 WItemsNum^0))) (= ___rho_1_^0 ___rho_1_^post)) (= ___rho_2_^0 ___rho_2_^post)))
    (cfg_trans2 pc^0 l10 pc^post l1 (and (and (and (<= (+ 0 WItemsNum^0) 5) (= WItemsNum^post (+ 1 WItemsNum^0))) (= ___rho_1_^0 ___rho_1_^post)) (= ___rho_2_^0 ___rho_2_^post)))
    (cfg_trans2 pc^0 l11 pc^post l10 (and (and (and (<= (+ 0 ___rho_2_^0) 0) (= WItemsNum^0 WItemsNum^post)) (= ___rho_1_^0 ___rho_1_^post)) (= ___rho_2_^0 ___rho_2_^post)))
    (cfg_trans2 pc^0 l11 pc^post l3 (and (and (and (<= 1 (+ 0 ___rho_2_^0)) (= WItemsNum^0 WItemsNum^post)) (= ___rho_1_^0 ___rho_1_^post)) (= ___rho_2_^0 ___rho_2_^post)))
    (cfg_trans2 pc^0 l2 pc^post l10 (and (and (and (<= 6 (+ 0 WItemsNum^0)) (= WItemsNum^0 WItemsNum^post)) (= ___rho_1_^0 ___rho_1_^post)) (= ___rho_2_^0 ___rho_2_^post)))
    (cfg_trans2 pc^0 l2 pc^post l11 (and (and (and (<= (+ 0 WItemsNum^0) 5) (= WItemsNum^0 WItemsNum^post)) (= ___rho_1_^0 ___rho_1_^post)) (= ___rho_2_^0 ___rho_2_^post)))
    (cfg_trans2 pc^0 l12 pc^post l0 (exists ( (WItemsNum^1 Int) ) (and (and (and (= WItemsNum^1 WItemsNum^1) (= ___rho_1_^post ___rho_1_^post)) (= WItemsNum^post (+ 0 ___rho_1_^post))) (= ___rho_2_^0 ___rho_2_^post))))
    (cfg_trans2 pc^0 l13 pc^post l12 (and (and (= WItemsNum^0 WItemsNum^post) (= ___rho_1_^0 ___rho_1_^post)) (= ___rho_2_^0 ___rho_2_^post)))
  )
)
