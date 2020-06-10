(declare-sort Loc 0)
(declare-const l0 Loc)
(declare-const l1 Loc)
(declare-const l2 Loc)
(declare-const l3 Loc)
(declare-const l4 Loc)
(assert (distinct l0 l1 l2 l3 l4))

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

(define-fun init_main ( (pc^0 Loc) (nondet!13^0 Int) (result!12^0 Int) (temp0!15^0 Int) (x!14^0 Int) (x!20^0 Int) ) Bool
  (cfg_init pc^0 l4 true))

(define-fun next_main (
                 (pc^0 Loc) (nondet!13^0 Int) (result!12^0 Int) (temp0!15^0 Int) (x!14^0 Int) (x!20^0 Int)
                 (pc^post Loc) (nondet!13^post Int) (result!12^post Int) (temp0!15^post Int) (x!14^post Int) (x!20^post Int)
             ) Bool
  (or
    (cfg_trans2 pc^0 l0 pc^post l1 (exists ( (nondet!13^1 Int) ) (and (and (and (and (and (= nondet!13^1 nondet!13^1) (= x!14^post (+ 0 nondet!13^1))) (= nondet!13^post nondet!13^post)) (= result!12^0 result!12^post)) (= temp0!15^0 temp0!15^post)) (= x!20^0 x!20^post))))
    (cfg_trans2 pc^0 l1 pc^post l2 (and (and (and (and (and (<= (+ 0 x!14^0) 0) (= result!12^post (+ 0 temp0!15^0))) (= nondet!13^0 nondet!13^post)) (= temp0!15^0 temp0!15^post)) (= x!14^0 x!14^post)) (= x!20^0 x!20^post)))
    (cfg_trans2 pc^0 l1 pc^post l3 (and (and (and (and (and (and (and (and (<= 1 (+ 0 x!14^0)) (= x!14^post (+ -1 x!14^0))) (<= (+ 0 x!14^post) (+ -1 x!20^0))) (<= (+ -1 x!20^0) (+ 0 x!14^post))) (<= 1 (+ 0 x!20^0))) (= nondet!13^0 nondet!13^post)) (= result!12^0 result!12^post)) (= temp0!15^0 temp0!15^post)) (= x!20^0 x!20^post)))
    (cfg_trans2 pc^0 l3 pc^post l1 (and (and (and (and (= nondet!13^0 nondet!13^post) (= result!12^0 result!12^post)) (= temp0!15^0 temp0!15^post)) (= x!14^0 x!14^post)) (= x!20^0 x!20^post)))
    (cfg_trans2 pc^0 l4 pc^post l0 (and (and (and (and (= nondet!13^0 nondet!13^post) (= result!12^0 result!12^post)) (= temp0!15^0 temp0!15^post)) (= x!14^0 x!14^post)) (= x!20^0 x!20^post)))
  )
)
