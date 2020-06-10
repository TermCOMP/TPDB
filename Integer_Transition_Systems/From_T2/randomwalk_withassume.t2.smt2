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
(assert (distinct l0 l1 l2 l3 l4 l5 l6 l7 l8 l9 l10))

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

(define-fun init_main ( (pc^0 Loc) (N^0 Int) (choice^0 Int) (i^0 Int) (pos^0 Int) (seq^0 Int) (walker^0 Int) (z^0 Int) ) Bool
  (cfg_init pc^0 l10 true))

(define-fun next_main (
                 (pc^0 Loc) (N^0 Int) (choice^0 Int) (i^0 Int) (pos^0 Int) (seq^0 Int) (walker^0 Int) (z^0 Int)
                 (pc^post Loc) (N^post Int) (choice^post Int) (i^post Int) (pos^post Int) (seq^post Int) (walker^post Int) (z^post Int)
             ) Bool
  (or
    (cfg_trans2 pc^0 l0 pc^post l1 (and (and (and (and (and (and (= N^0 N^post) (= choice^0 choice^post)) (= i^0 i^post)) (= pos^0 pos^post)) (= seq^0 seq^post)) (= walker^0 walker^post)) (= z^0 z^post)))
    (cfg_trans2 pc^0 l2 pc^post l3 (and (and (and (and (and (and (and (<= (+ 0 seq^0) (+ 1 N^0)) (= N^0 N^post)) (= choice^0 choice^post)) (= i^0 i^post)) (= pos^0 pos^post)) (= seq^0 seq^post)) (= walker^0 walker^post)) (= z^0 z^post)))
    (cfg_trans2 pc^0 l4 pc^post l2 (and (and (and (and (and (and (and (<= 1 (+ 0 choice^0)) (= walker^post (+ 1 walker^0))) (= N^0 N^post)) (= choice^0 choice^post)) (= i^0 i^post)) (= pos^0 pos^post)) (= seq^0 seq^post)) (= z^0 z^post)))
    (cfg_trans2 pc^0 l4 pc^post l2 (and (and (and (and (and (and (and (<= (+ 0 choice^0) 0) (= walker^post (+ -1 walker^0))) (= N^0 N^post)) (= choice^0 choice^post)) (= i^0 i^post)) (= pos^0 pos^post)) (= seq^0 seq^post)) (= z^0 z^post)))
    (cfg_trans2 pc^0 l5 pc^post l3 (and (and (and (and (and (and (and (and (and (= seq^post 1) (= i^post (+ 0 seq^post))) (= z^post z^post)) (<= 0 (+ 0 z^post))) (= pos^post 0)) (= N^post N^post)) (<= (+ 0 N^post) 2)) (<= 2 (+ 0 N^post))) (= walker^post 1)) (= choice^0 choice^post)))
    (cfg_trans2 pc^0 l6 pc^post l4 (and (and (and (and (and (and (and (and (<= (+ 0 i^0) 0) (= seq^post (+ 1 seq^0))) (= i^post (+ 0 seq^post))) (= z^post z^post)) (<= 0 (+ 0 z^post))) (= N^0 N^post)) (= choice^0 choice^post)) (= pos^0 pos^post)) (= walker^0 walker^post)))
    (cfg_trans2 pc^0 l6 pc^post l4 (and (and (and (and (and (and (and (and (<= 1 (+ 0 i^0)) (<= (+ 0 choice^0) 0)) (= i^post (+ -1 i^0))) (= N^0 N^post)) (= choice^0 choice^post)) (= pos^0 pos^post)) (= seq^0 seq^post)) (= walker^0 walker^post)) (= z^0 z^post)))
    (cfg_trans2 pc^0 l7 pc^post l4 (and (and (and (and (and (and (and (<= 1 (+ 0 z^0)) (= z^post (+ -1 z^0))) (= N^0 N^post)) (= choice^0 choice^post)) (= i^0 i^post)) (= pos^0 pos^post)) (= seq^0 seq^post)) (= walker^0 walker^post)))
    (cfg_trans2 pc^0 l7 pc^post l6 (and (and (and (and (and (and (and (<= (+ 0 z^0) 0) (= N^0 N^post)) (= choice^0 choice^post)) (= i^0 i^post)) (= pos^0 pos^post)) (= seq^0 seq^post)) (= walker^0 walker^post)) (= z^0 z^post)))
    (cfg_trans2 pc^0 l8 pc^post l0 (and (and (and (and (and (and (and (<= (+ 1 walker^0) 1) (= N^0 N^post)) (= choice^0 choice^post)) (= i^0 i^post)) (= pos^0 pos^post)) (= seq^0 seq^post)) (= walker^0 walker^post)) (= z^0 z^post)))
    (cfg_trans2 pc^0 l8 pc^post l7 (and (and (and (and (and (and (and (and (and (<= 1 (+ 0 walker^0)) (= choice^post choice^post)) (<= 0 (+ 0 choice^post))) (<= (+ 0 choice^post) 1)) (= N^0 N^post)) (= i^0 i^post)) (= pos^0 pos^post)) (= seq^0 seq^post)) (= walker^0 walker^post)) (= z^0 z^post)))
    (cfg_trans2 pc^0 l9 pc^post l0 (and (and (and (and (and (and (and (<= (+ 1 N^0) (+ 0 walker^0)) (= N^0 N^post)) (= choice^0 choice^post)) (= i^0 i^post)) (= pos^0 pos^post)) (= seq^0 seq^post)) (= walker^0 walker^post)) (= z^0 z^post)))
    (cfg_trans2 pc^0 l9 pc^post l8 (and (and (and (and (and (and (and (<= (+ 0 walker^0) (+ 0 N^0)) (= N^0 N^post)) (= choice^0 choice^post)) (= i^0 i^post)) (= pos^0 pos^post)) (= seq^0 seq^post)) (= walker^0 walker^post)) (= z^0 z^post)))
    (cfg_trans2 pc^0 l3 pc^post l9 (and (and (and (and (and (and (= N^0 N^post) (= choice^0 choice^post)) (= i^0 i^post)) (= pos^0 pos^post)) (= seq^0 seq^post)) (= walker^0 walker^post)) (= z^0 z^post)))
    (cfg_trans2 pc^0 l10 pc^post l5 (and (and (and (and (and (and (= N^0 N^post) (= choice^0 choice^post)) (= i^0 i^post)) (= pos^0 pos^post)) (= seq^0 seq^post)) (= walker^0 walker^post)) (= z^0 z^post)))
  )
)
