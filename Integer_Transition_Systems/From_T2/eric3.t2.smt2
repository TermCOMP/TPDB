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

(define-fun init_main ( (pc^0 Loc) (retp^0 Int) (retpp^0 Int) (rho^0 Int) (rhop^0 Int) (x^0 Int) (xp^0 Int) ) Bool
  (cfg_init pc^0 l6 true))

(define-fun next_main (
                 (pc^0 Loc) (retp^0 Int) (retpp^0 Int) (rho^0 Int) (rhop^0 Int) (x^0 Int) (xp^0 Int)
                 (pc^post Loc) (retp^post Int) (retpp^post Int) (rho^post Int) (rhop^post Int) (x^post Int) (xp^post Int)
             ) Bool
  (or
    (cfg_trans2 pc^0 l0 pc^post l1 (and (and (and (and (and (and (<= 1 (+ 0 rhop^0)) (= xp^post (+ 1 xp^0))) (= retp^0 retp^post)) (= retpp^0 retpp^post)) (= rho^0 rho^post)) (= rhop^0 rhop^post)) (= x^0 x^post)))
    (cfg_trans2 pc^0 l0 pc^post l1 (and (and (and (and (and (and (<= (+ 0 rhop^0) 0) (= xp^post (+ -1 xp^0))) (= retp^0 retp^post)) (= retpp^0 retpp^post)) (= rho^0 rho^post)) (= rhop^0 rhop^post)) (= x^0 x^post)))
    (cfg_trans2 pc^0 l2 pc^post l3 (and (and (and (and (and (and (<= (+ 0 retpp^0) 0) (= retp^post 0)) (= retpp^0 retpp^post)) (= rho^0 rho^post)) (= rhop^0 rhop^post)) (= x^0 x^post)) (= xp^0 xp^post)))
    (cfg_trans2 pc^0 l2 pc^post l3 (and (and (and (and (and (= retp^post 1) (= retpp^0 retpp^post)) (= rho^0 rho^post)) (= rhop^0 rhop^post)) (= x^0 x^post)) (= xp^0 xp^post)))
    (cfg_trans2 pc^0 l2 pc^post l0 (and (and (and (and (and (and (= rhop^post rhop^post) (<= 1 (+ 0 rhop^post))) (= retp^0 retp^post)) (= retpp^0 retpp^post)) (= rho^0 rho^post)) (= x^0 x^post)) (= xp^0 xp^post)))
    (cfg_trans2 pc^0 l1 pc^post l2 (and (and (and (and (and (and (<= (+ 0 xp^0) 1) (= retpp^post 0)) (= retp^0 retp^post)) (= rho^0 rho^post)) (= rhop^0 rhop^post)) (= x^0 x^post)) (= xp^0 xp^post)))
    (cfg_trans2 pc^0 l1 pc^post l2 (and (and (and (and (and (and (<= 2 (+ 0 xp^0)) (= retpp^post 1)) (= retp^0 retp^post)) (= rho^0 rho^post)) (= rhop^0 rhop^post)) (= x^0 x^post)) (= xp^0 xp^post)))
    (cfg_trans2 pc^0 l4 pc^post l1 (and (and (and (and (and (= x^post 2) (= xp^post (+ 0 x^post))) (= rhop^post (+ 0 rho^0))) (= retp^0 retp^post)) (= retpp^0 retpp^post)) (= rho^0 rho^post)))
    (cfg_trans2 pc^0 l3 pc^post l5 (and (and (and (and (and (and (<= (+ 0 retp^0) 0) (= retp^0 retp^post)) (= retpp^0 retpp^post)) (= rho^0 rho^post)) (= rhop^0 rhop^post)) (= x^0 x^post)) (= xp^0 xp^post)))
    (cfg_trans2 pc^0 l6 pc^post l4 (and (and (and (and (and (= retp^0 retp^post) (= retpp^0 retpp^post)) (= rho^0 rho^post)) (= rhop^0 rhop^post)) (= x^0 x^post)) (= xp^0 xp^post)))
  )
)
