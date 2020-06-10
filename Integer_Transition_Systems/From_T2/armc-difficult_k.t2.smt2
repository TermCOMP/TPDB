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

(define-fun init_main ( (pc^0 Loc) (c1^0 Int) (c2^0 Int) (m^0 Int) (max^0 Int) (n^0 Int) (pi^0 Int) (pos^0 Int) (seq^0 Int) (wpos^0 Int) (z^0 Int) ) Bool
  (cfg_init pc^0 l3 true))

(define-fun next_main (
                 (pc^0 Loc) (c1^0 Int) (c2^0 Int) (m^0 Int) (max^0 Int) (n^0 Int) (pi^0 Int) (pos^0 Int) (seq^0 Int) (wpos^0 Int) (z^0 Int)
                 (pc^post Loc) (c1^post Int) (c2^post Int) (m^post Int) (max^post Int) (n^post Int) (pi^post Int) (pos^post Int) (seq^post Int) (wpos^post Int) (z^post Int)
             ) Bool
  (or
    (cfg_trans2 pc^0 l0 pc^post l1 (exists ( (c1^1 Int) (c1^2 Int) (c1^3 Int) (c1^4 Int) (c2^1 Int) (c2^2 Int) (c2^3 Int) (m^1 Int) (m^2 Int) (m^3 Int) (pi^1 Int) (pi^2 Int) (pos^1 Int) (wpos^1 Int) (wpos^2 Int) (wpos^3 Int) (wpos^4 Int) (wpos^5 Int) (z^1 Int) (z^2 Int) ) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (<= 1 (+ 0 m^0)) (= c1^1 c1^1)) (<= 0 (+ 0 c1^1))) (<= (+ 0 c1^1) 1)) (<= (+ 0 z^0) 0)) (<= 1 (+ 0 pos^0))) (<= (+ 0 pos^0) 1)) (<= (+ 0 wpos^0) 0)) (<= 1 (+ 0 c1^1))) (= wpos^1 (+ 1 wpos^0))) (<= 1 (+ 0 c1^1))) (= c2^1 c2^1)) (<= 0 (+ 0 c2^1))) (<= (+ 0 c2^1) 1)) (<= (+ 0 z^0) 0)) (<= 1 (+ 0 pos^0))) (<= (+ 0 pos^0) 1)) (<= 1 (+ 0 wpos^1))) (<= (+ 0 wpos^1) 1)) (<= 1 (+ 0 pi^0))) (<= (+ 0 c2^1) 0)) (= wpos^2 0)) (= pi^1 (+ -1 pi^0))) (<= (+ 1 c2^1) 1)) (= m^1 (+ -1 m^0))) (<= 1 (+ 0 m^1))) (= c1^2 c1^2)) (<= 0 (+ 0 c1^2))) (<= (+ 0 c1^2) 1)) (<= (+ 0 z^0) 0)) (<= 1 (+ 0 pos^0))) (<= (+ 0 pos^0) 1)) (<= (+ 0 wpos^2) 0)) (<= 1 (+ 0 c1^2))) (= wpos^3 (+ 1 wpos^2))) (<= 1 (+ 0 c1^2))) (= c2^2 c2^2)) (<= 0 (+ 0 c2^2))) (<= (+ 0 c2^2) 1)) (<= (+ 0 z^0) 0)) (<= 1 (+ 0 pos^0))) (<= (+ 0 pos^0) 1)) (<= 1 (+ 0 wpos^3))) (<= (+ 0 wpos^3) 1)) (<= (+ 0 pi^1) 0)) (= seq^post (+ 1 seq^0))) (= wpos^4 0)) (= pos^1 0)) (= pi^2 (+ 0 seq^post))) (= z^1 z^1)) (<= 0 (+ 0 z^1))) (<= 1 (+ 0 c2^2))) (<= (+ 1 m^1) (+ 0 max^0))) (= m^2 (+ 1 m^1))) (<= 1 (+ 0 m^2))) (= c1^3 c1^3)) (<= 0 (+ 0 c1^3))) (<= (+ 0 c1^3) 1)) (<= 1 (+ 0 z^1))) (= z^2 (+ -1 z^1))) (<= 1 (+ 0 c1^3))) (= c2^3 c2^3)) (<= 0 (+ 0 c2^3))) (<= (+ 0 c2^3) 1)) (<= 1 (+ 0 z^2))) (= z^post (+ -1 z^2))) (<= 1 (+ 0 c2^3))) (<= (+ 1 m^2) (+ 0 max^0))) (= m^3 (+ 1 m^2))) (<= 1 (+ 0 m^3))) (= c1^4 c1^4)) (<= 0 (+ 0 c1^4))) (<= (+ 0 c1^4) 1)) (<= (+ 0 z^post) 0)) (<= (+ 0 pos^1) 0)) (<= (+ 0 c1^4) 0)) (= pos^post (+ 1 pos^1))) (<= (+ 1 c1^4) 1)) (<= 1 (+ 0 m^3))) (= c1^post c1^post)) (<= 0 (+ 0 c1^post))) (<= (+ 0 c1^post) 1)) (<= (+ 0 z^post) 0)) (<= 1 (+ 0 pos^post))) (<= (+ 0 pos^post) 1)) (<= (+ 0 wpos^4) 0)) (<= 1 (+ 0 c1^post))) (= wpos^5 (+ 1 wpos^4))) (<= 1 (+ 0 c1^post))) (= c2^post c2^post)) (<= 0 (+ 0 c2^post))) (<= (+ 0 c2^post) 1)) (<= (+ 0 z^post) 0)) (<= 1 (+ 0 pos^post))) (<= (+ 0 pos^post) 1)) (<= 1 (+ 0 wpos^5))) (<= (+ 0 wpos^5) 1)) (<= 1 (+ 0 pi^2))) (<= (+ 0 c2^post) 0)) (= wpos^post 0)) (= pi^post (+ -1 pi^2))) (<= (+ 1 c2^post) 1)) (= m^post (+ -1 m^3))) (= max^0 max^post)) (= n^0 n^post))))
    (cfg_trans2 pc^0 l1 pc^post l0 (and (and (and (and (and (and (and (and (and (= c1^0 c1^post) (= c2^0 c2^post)) (= m^0 m^post)) (= max^0 max^post)) (= n^0 n^post)) (= pi^0 pi^post)) (= pos^0 pos^post)) (= seq^0 seq^post)) (= wpos^0 wpos^post)) (= z^0 z^post)))
    (cfg_trans2 pc^0 l2 pc^post l0 (exists ( (pos^1 Int) ) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= seq^post 1) (= wpos^post 0)) (= pi^post (+ 0 seq^post))) (= z^post z^post)) (<= 0 (+ 0 z^post))) (= pos^1 0)) (= n^post n^post)) (<= 0 (+ 0 n^post))) (= max^post max^post)) (<= 0 (+ 0 max^post))) (<= (+ 0 max^post) (+ 0 n^post))) (= m^post m^post)) (<= (+ 0 m^post) (+ 0 max^post))) (<= 0 (+ 0 m^post))) (<= 1 (+ 0 m^post))) (= c1^post c1^post)) (<= 0 (+ 0 c1^post))) (<= (+ 0 c1^post) 1)) (<= (+ 0 z^post) 0)) (<= (+ 0 pos^1) 0)) (<= (+ 0 c1^post) 0)) (= pos^post (+ 1 pos^1))) (<= (+ 1 c1^post) 1)) (= c2^0 c2^post))))
    (cfg_trans2 pc^0 l3 pc^post l2 (and (and (and (and (and (and (and (and (and (= c1^0 c1^post) (= c2^0 c2^post)) (= m^0 m^post)) (= max^0 max^post)) (= n^0 n^post)) (= pi^0 pi^post)) (= pos^0 pos^post)) (= seq^0 seq^post)) (= wpos^0 wpos^post)) (= z^0 z^post)))
  )
)
