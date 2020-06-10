(declare-sort Loc 0)
(declare-const l0 Loc)
(declare-const l1 Loc)
(declare-const l2 Loc)
(declare-const l3 Loc)
(declare-const l4 Loc)
(declare-const l5 Loc)
(declare-const l6 Loc)
(declare-const l7 Loc)
(assert (distinct l0 l1 l2 l3 l4 l5 l6 l7))

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

(define-fun init_main ( (pc^0 Loc) (a^0 Int) (b^0 Int) (c^0 Int) (d^0 Int) (e^0 Int) (sum^0 Int) ) Bool
  (cfg_init pc^0 l7 true))

(define-fun next_main (
                 (pc^0 Loc) (a^0 Int) (b^0 Int) (c^0 Int) (d^0 Int) (e^0 Int) (sum^0 Int)
                 (pc^post Loc) (a^post Int) (b^post Int) (c^post Int) (d^post Int) (e^post Int) (sum^post Int)
             ) Bool
  (or
    (cfg_trans2 pc^0 l0 pc^post l1 (and (and (and (and (and (and (= a^post a^post) (= b^post b^post)) (= c^post c^post)) (= d^post d^post)) (= e^post e^post)) (<= 1 (+ (+ (+ (+ (+ 0 a^post) b^post) c^post) d^post) e^post))) (= sum^post (+ (+ (+ (+ (+ 0 a^post) b^post) c^post) d^post) e^post))))
    (cfg_trans2 pc^0 l1 pc^post l2 (and (and (and (and (and (and (<= (+ 1 e^0) 0) (= e^post (+ 0 (* -1 e^0)))) (= d^post (+ (+ 0 d^0) (* -1 e^post)))) (= a^post (+ (+ 0 a^0) (* -1 e^post)))) (= b^0 b^post)) (= c^0 c^post)) (= sum^0 sum^post)))
    (cfg_trans2 pc^0 l2 pc^post l1 (and (and (and (and (and (= a^0 a^post) (= b^0 b^post)) (= c^0 c^post)) (= d^0 d^post)) (= e^0 e^post)) (= sum^0 sum^post)))
    (cfg_trans2 pc^0 l1 pc^post l3 (and (and (and (and (and (and (<= (+ 1 d^0) 0) (= d^post (+ 0 (* -1 d^0)))) (= c^post (+ (+ 0 c^0) (* -1 d^post)))) (= e^post (+ (+ 0 (* -1 d^post)) e^0))) (= a^0 a^post)) (= b^0 b^post)) (= sum^0 sum^post)))
    (cfg_trans2 pc^0 l3 pc^post l1 (and (and (and (and (and (= a^0 a^post) (= b^0 b^post)) (= c^0 c^post)) (= d^0 d^post)) (= e^0 e^post)) (= sum^0 sum^post)))
    (cfg_trans2 pc^0 l1 pc^post l4 (and (and (and (and (and (and (<= (+ 1 c^0) 0) (= c^post (+ 0 (* -1 c^0)))) (= b^post (+ (+ 0 b^0) (* -1 c^post)))) (= d^post (+ (+ 0 (* -1 c^post)) d^0))) (= a^0 a^post)) (= e^0 e^post)) (= sum^0 sum^post)))
    (cfg_trans2 pc^0 l4 pc^post l1 (and (and (and (and (and (= a^0 a^post) (= b^0 b^post)) (= c^0 c^post)) (= d^0 d^post)) (= e^0 e^post)) (= sum^0 sum^post)))
    (cfg_trans2 pc^0 l1 pc^post l5 (and (and (and (and (and (and (<= (+ 1 b^0) 0) (= b^post (+ 0 (* -1 b^0)))) (= a^post (+ (+ 0 a^0) (* -1 b^post)))) (= c^post (+ (+ 0 (* -1 b^post)) c^0))) (= d^0 d^post)) (= e^0 e^post)) (= sum^0 sum^post)))
    (cfg_trans2 pc^0 l5 pc^post l1 (and (and (and (and (and (= a^0 a^post) (= b^0 b^post)) (= c^0 c^post)) (= d^0 d^post)) (= e^0 e^post)) (= sum^0 sum^post)))
    (cfg_trans2 pc^0 l1 pc^post l6 (and (and (and (and (and (and (<= (+ 1 a^0) 0) (= a^post (+ 0 (* -1 a^0)))) (= b^post (+ (+ 0 (* -1 a^post)) b^0))) (= e^post (+ (+ 0 (* -1 a^post)) e^0))) (= c^0 c^post)) (= d^0 d^post)) (= sum^0 sum^post)))
    (cfg_trans2 pc^0 l6 pc^post l1 (and (and (and (and (and (= a^0 a^post) (= b^0 b^post)) (= c^0 c^post)) (= d^0 d^post)) (= e^0 e^post)) (= sum^0 sum^post)))
    (cfg_trans2 pc^0 l7 pc^post l0 (and (and (and (and (and (= a^0 a^post) (= b^0 b^post)) (= c^0 c^post)) (= d^0 d^post)) (= e^0 e^post)) (= sum^0 sum^post)))
  )
)
