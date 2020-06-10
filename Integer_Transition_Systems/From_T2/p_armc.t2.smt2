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
(assert (distinct l0 l1 l2 l3 l4 l5 l6 l7 l8 l9 l10 l11))

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

(define-fun init_main ( (pc^0 Loc) (a^0 Int) (b^0 Int) (c^0 Int) (d^0 Int) (e^0 Int) ) Bool
  (cfg_init pc^0 l11 true))

(define-fun next_main (
                 (pc^0 Loc) (a^0 Int) (b^0 Int) (c^0 Int) (d^0 Int) (e^0 Int)
                 (pc^post Loc) (a^post Int) (b^post Int) (c^post Int) (d^post Int) (e^post Int)
             ) Bool
  (or
    (cfg_trans2 pc^0 l0 pc^post l1 (exists ( (a^1 Int) (a^2 Int) (a^3 Int) (b^1 Int) (b^2 Int) (b^3 Int) (c^1 Int) (c^2 Int) (c^3 Int) (d^1 Int) (d^2 Int) (d^3 Int) (e^1 Int) (e^2 Int) (e^3 Int) ) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (<= 0 (+ 0 e^0)) (= e^1 (+ 0 e^0))) (= d^1 (+ 0 d^0))) (= c^1 (+ 0 c^0))) (= b^1 (+ 0 b^0))) (= a^1 (+ 0 a^0))) (= e^2 (+ 0 e^1))) (= d^2 (+ 0 d^1))) (= c^2 (+ 0 c^1))) (= b^2 (+ 0 b^1))) (= a^2 (+ 0 a^1))) (= e^3 (+ 0 e^2))) (= d^3 (+ 0 d^2))) (= c^3 (+ 0 c^2))) (= b^3 (+ 0 b^2))) (= a^3 (+ 0 a^2))) (= e^post (+ 0 e^3))) (= d^post (+ 0 d^3))) (= c^post (+ 0 c^3))) (= b^post (+ 0 b^3))) (= a^post (+ 0 a^3)))))
    (cfg_trans2 pc^0 l0 pc^post l2 (and (and (and (and (and (<= (+ 1 e^0) 0) (= e^post (+ 0 e^0))) (= d^post (+ 0 d^0))) (= c^post (+ 0 c^0))) (= b^post (+ 0 b^0))) (= a^post (+ 0 a^0))))
    (cfg_trans2 pc^0 l3 pc^post l0 (and (and (and (and (and (<= (+ 0 d^0) (+ 0 c^0)) (= e^post (+ 0 e^0))) (= d^post (+ 0 d^0))) (= c^post (+ 0 c^0))) (= b^post (+ 0 b^0))) (= a^post (+ 0 a^0))))
    (cfg_trans2 pc^0 l3 pc^post l2 (and (and (and (and (and (<= (+ 1 c^0) (+ 0 d^0)) (= e^post (+ 0 e^0))) (= d^post (+ 0 d^0))) (= c^post (+ 0 c^0))) (= b^post (+ 0 b^0))) (= a^post (+ 0 a^0))))
    (cfg_trans2 pc^0 l4 pc^post l3 (and (and (and (and (and (<= 0 (+ 0 b^0)) (= e^post (+ 0 e^0))) (= d^post (+ 0 d^0))) (= c^post (+ 0 c^0))) (= b^post (+ 0 b^0))) (= a^post (+ 0 a^0))))
    (cfg_trans2 pc^0 l4 pc^post l2 (and (and (and (and (and (<= (+ 1 b^0) 0) (= e^post (+ 0 e^0))) (= d^post (+ 0 d^0))) (= c^post (+ 0 c^0))) (= b^post (+ 0 b^0))) (= a^post (+ 0 a^0))))
    (cfg_trans2 pc^0 l2 pc^post l5 (and (and (and (and (and (<= 0 (+ 0 a^0)) (= e^post (+ 0 e^0))) (= d^post (+ 0 d^0))) (= c^post (+ 0 c^0))) (= b^post (+ 0 b^0))) (= a^post (+ 0 a^0))))
    (cfg_trans2 pc^0 l2 pc^post l6 (exists ( (a^1 Int) (a^2 Int) (a^3 Int) (b^1 Int) (b^2 Int) (b^3 Int) (c^1 Int) (c^2 Int) (c^3 Int) (d^1 Int) (d^2 Int) (d^3 Int) (e^1 Int) (e^2 Int) (e^3 Int) ) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (<= (+ 1 a^0) 0) (= e^1 (+ 0 e^0))) (= d^1 (+ 0 d^0))) (= c^1 (+ 0 c^0))) (= b^1 (+ 0 b^0))) (= a^1 (+ 0 a^0))) (= e^2 (+ 0 e^1))) (= d^2 (+ 0 d^1))) (= c^2 (+ 0 c^1))) (= b^2 (+ 0 b^1))) (= a^2 (+ 0 (* -1 a^1)))) (= e^3 (+ 0 e^2))) (= d^3 (+ 0 d^2))) (= c^3 (+ 0 c^2))) (= b^3 (+ (+ 0 (* -1 a^2)) b^2))) (= a^3 (+ 0 a^2))) (= e^post (+ (+ 0 (* -1 a^3)) e^3))) (= d^post (+ 0 d^3))) (= c^post (+ 0 c^3))) (= b^post (+ 0 b^3))) (= a^post (+ 0 a^3)))))
    (cfg_trans2 pc^0 l7 pc^post l6 (and (and (and (and (and (<= 0 (+ 0 e^0)) (= e^post (+ 0 e^0))) (= d^post (+ 0 d^0))) (= c^post (+ 0 c^0))) (= b^post (+ 0 b^0))) (= a^post (+ 0 a^0))))
    (cfg_trans2 pc^0 l7 pc^post l6 (exists ( (a^1 Int) (a^2 Int) (a^3 Int) (b^1 Int) (b^2 Int) (b^3 Int) (c^1 Int) (c^2 Int) (c^3 Int) (d^1 Int) (d^2 Int) (d^3 Int) (e^1 Int) (e^2 Int) (e^3 Int) ) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (<= (+ 1 e^0) 0) (= e^1 (+ 0 e^0))) (= d^1 (+ 0 d^0))) (= c^1 (+ 0 c^0))) (= b^1 (+ 0 b^0))) (= a^1 (+ 0 a^0))) (= e^2 (+ 0 (* -1 e^1)))) (= d^2 (+ 0 d^1))) (= c^2 (+ 0 c^1))) (= b^2 (+ 0 b^1))) (= a^2 (+ 0 a^1))) (= e^3 (+ 0 e^2))) (= d^3 (+ (+ 0 d^2) (* -1 e^3)))) (= c^3 (+ 0 c^2))) (= b^3 (+ 0 b^2))) (= a^3 (+ 0 a^2))) (= e^post (+ 0 e^3))) (= d^post (+ 0 d^3))) (= c^post (+ 0 c^3))) (= b^post (+ 0 b^3))) (= a^post (+ (+ 0 a^3) (* -1 e^post))))))
    (cfg_trans2 pc^0 l8 pc^post l4 (and (and (and (and (and (<= 0 (+ 0 a^0)) (= e^post (+ 0 e^0))) (= d^post (+ 0 d^0))) (= c^post (+ 0 c^0))) (= b^post (+ 0 b^0))) (= a^post (+ 0 a^0))))
    (cfg_trans2 pc^0 l8 pc^post l2 (and (and (and (and (and (<= (+ 1 a^0) 0) (= e^post (+ 0 e^0))) (= d^post (+ 0 d^0))) (= c^post (+ 0 c^0))) (= b^post (+ 0 b^0))) (= a^post (+ 0 a^0))))
    (cfg_trans2 pc^0 l9 pc^post l7 (and (and (and (and (and (<= 0 (+ 0 d^0)) (= e^post (+ 0 e^0))) (= d^post (+ 0 d^0))) (= c^post (+ 0 c^0))) (= b^post (+ 0 b^0))) (= a^post (+ 0 a^0))))
    (cfg_trans2 pc^0 l9 pc^post l6 (exists ( (a^1 Int) (a^2 Int) (a^3 Int) (b^1 Int) (b^2 Int) (b^3 Int) (c^1 Int) (c^2 Int) (c^3 Int) (d^1 Int) (d^2 Int) (d^3 Int) (e^1 Int) (e^2 Int) (e^3 Int) ) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (<= (+ 1 d^0) 0) (= e^1 (+ 0 e^0))) (= d^1 (+ 0 d^0))) (= c^1 (+ 0 c^0))) (= b^1 (+ 0 b^0))) (= a^1 (+ 0 a^0))) (= e^2 (+ 0 e^1))) (= d^2 (+ 0 (* -1 d^1)))) (= c^2 (+ 0 c^1))) (= b^2 (+ 0 b^1))) (= a^2 (+ 0 a^1))) (= e^3 (+ 0 e^2))) (= d^3 (+ 0 d^2))) (= c^3 (+ (+ 0 c^2) (* -1 d^3)))) (= b^3 (+ 0 b^2))) (= a^3 (+ 0 a^2))) (= e^post (+ (+ 0 (* -1 d^3)) e^3))) (= d^post (+ 0 d^3))) (= c^post (+ 0 c^3))) (= b^post (+ 0 b^3))) (= a^post (+ 0 a^3)))))
    (cfg_trans2 pc^0 l10 pc^post l9 (and (and (and (and (and (<= 0 (+ 0 c^0)) (= e^post (+ 0 e^0))) (= d^post (+ 0 d^0))) (= c^post (+ 0 c^0))) (= b^post (+ 0 b^0))) (= a^post (+ 0 a^0))))
    (cfg_trans2 pc^0 l10 pc^post l6 (exists ( (a^1 Int) (a^2 Int) (a^3 Int) (b^1 Int) (b^2 Int) (b^3 Int) (c^1 Int) (c^2 Int) (c^3 Int) (d^1 Int) (d^2 Int) (d^3 Int) (e^1 Int) (e^2 Int) (e^3 Int) ) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (<= (+ 1 c^0) 0) (= e^1 (+ 0 e^0))) (= d^1 (+ 0 d^0))) (= c^1 (+ 0 c^0))) (= b^1 (+ 0 b^0))) (= a^1 (+ 0 a^0))) (= e^2 (+ 0 e^1))) (= d^2 (+ 0 d^1))) (= c^2 (+ 0 (* -1 c^1)))) (= b^2 (+ 0 b^1))) (= a^2 (+ 0 a^1))) (= e^3 (+ 0 e^2))) (= d^3 (+ 0 d^2))) (= c^3 (+ 0 c^2))) (= b^3 (+ (+ 0 b^2) (* -1 c^3)))) (= a^3 (+ 0 a^2))) (= e^post (+ 0 e^3))) (= d^post (+ (+ 0 (* -1 c^3)) d^3))) (= c^post (+ 0 c^3))) (= b^post (+ 0 b^3))) (= a^post (+ 0 a^3)))))
    (cfg_trans2 pc^0 l5 pc^post l10 (and (and (and (and (and (<= 0 (+ 0 b^0)) (= e^post (+ 0 e^0))) (= d^post (+ 0 d^0))) (= c^post (+ 0 c^0))) (= b^post (+ 0 b^0))) (= a^post (+ 0 a^0))))
    (cfg_trans2 pc^0 l5 pc^post l6 (exists ( (a^1 Int) (a^2 Int) (a^3 Int) (b^1 Int) (b^2 Int) (b^3 Int) (c^1 Int) (c^2 Int) (c^3 Int) (d^1 Int) (d^2 Int) (d^3 Int) (e^1 Int) (e^2 Int) (e^3 Int) ) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (<= (+ 1 b^0) 0) (= e^1 (+ 0 e^0))) (= d^1 (+ 0 d^0))) (= c^1 (+ 0 c^0))) (= b^1 (+ 0 b^0))) (= a^1 (+ 0 a^0))) (= e^2 (+ 0 e^1))) (= d^2 (+ 0 d^1))) (= c^2 (+ 0 c^1))) (= b^2 (+ 0 (* -1 b^1)))) (= a^2 (+ 0 a^1))) (= e^3 (+ 0 e^2))) (= d^3 (+ 0 d^2))) (= c^3 (+ 0 c^2))) (= b^3 (+ 0 b^2))) (= a^3 (+ (+ 0 a^2) (* -1 b^3)))) (= e^post (+ 0 e^3))) (= d^post (+ 0 d^3))) (= c^post (+ (+ 0 (* -1 b^3)) c^3))) (= b^post (+ 0 b^3))) (= a^post (+ 0 a^3)))))
    (cfg_trans2 pc^0 l6 pc^post l8 (and (and (and (and (= e^post (+ 0 e^0)) (= d^post (+ 0 d^0))) (= c^post (+ 0 c^0))) (= b^post (+ 0 b^0))) (= a^post (+ 0 a^0))))
    (cfg_trans2 pc^0 l11 pc^post l6 (and (and (and (and (= a^0 a^post) (= b^0 b^post)) (= c^0 c^post)) (= d^0 d^post)) (= e^0 e^post)))
  )
)
