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

(define-fun init_main ( (pc^0 Loc) (CRITICAL^0 Int) (INCREASE^0 Int) (MAX^0 Int) (MAX_MIN^0 Int) (MIN^0 Int) (NONCRITICAL^0 Int) (NUM_MIN^0 Int) (P^0 Int) (Q^0 Int) (conditional^0 Int) (j_min^0 Int) (num^0 Int) (pid^0 Int) ) Bool
  (cfg_init pc^0 l6 true))

(define-fun next_main (
                 (pc^0 Loc) (CRITICAL^0 Int) (INCREASE^0 Int) (MAX^0 Int) (MAX_MIN^0 Int) (MIN^0 Int) (NONCRITICAL^0 Int) (NUM_MIN^0 Int) (P^0 Int) (Q^0 Int) (conditional^0 Int) (j_min^0 Int) (num^0 Int) (pid^0 Int)
                 (pc^post Loc) (CRITICAL^post Int) (INCREASE^post Int) (MAX^post Int) (MAX_MIN^post Int) (MIN^post Int) (NONCRITICAL^post Int) (NUM_MIN^post Int) (P^post Int) (Q^post Int) (conditional^post Int) (j_min^post Int) (num^post Int) (pid^post Int)
             ) Bool
  (or
    (cfg_trans2 pc^0 l0 pc^post l1 (and (and (and (and (and (and (and (and (and (and (and (and (and (<= (+ 0 conditional^0) 1) (= conditional^post conditional^post)) (= CRITICAL^0 CRITICAL^post)) (= INCREASE^0 INCREASE^post)) (= MAX^0 MAX^post)) (= MAX_MIN^0 MAX_MIN^post)) (= MIN^0 MIN^post)) (= NONCRITICAL^0 NONCRITICAL^post)) (= NUM_MIN^0 NUM_MIN^post)) (= P^0 P^post)) (= Q^0 Q^post)) (= j_min^0 j_min^post)) (= num^0 num^post)) (= pid^0 pid^post)))
    (cfg_trans2 pc^0 l0 pc^post l1 (and (and (and (and (and (and (and (and (and (and (and (and (and (and (<= 2 (+ 0 conditional^0)) (= INCREASE^post INCREASE^post)) (<= 1 (+ 0 INCREASE^post))) (= j_min^post (+ (+ 0 INCREASE^post) j_min^0))) (= conditional^post conditional^post)) (= CRITICAL^0 CRITICAL^post)) (= MAX^0 MAX^post)) (= MAX_MIN^0 MAX_MIN^post)) (= MIN^0 MIN^post)) (= NONCRITICAL^0 NONCRITICAL^post)) (= NUM_MIN^0 NUM_MIN^post)) (= P^0 P^post)) (= Q^0 Q^post)) (= num^0 num^post)) (= pid^0 pid^post)))
    (cfg_trans2 pc^0 l2 pc^post l0 (and (and (and (and (and (and (and (and (and (and (and (and (and (<= (+ 0 conditional^0) 1) (= P^post 1)) (= conditional^post conditional^post)) (= CRITICAL^0 CRITICAL^post)) (= INCREASE^0 INCREASE^post)) (= MAX^0 MAX^post)) (= MAX_MIN^0 MAX_MIN^post)) (= MIN^0 MIN^post)) (= NONCRITICAL^0 NONCRITICAL^post)) (= NUM_MIN^0 NUM_MIN^post)) (= Q^0 Q^post)) (= j_min^0 j_min^post)) (= num^0 num^post)) (= pid^0 pid^post)))
    (cfg_trans2 pc^0 l2 pc^post l1 (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (<= 2 (+ 0 conditional^0)) (= INCREASE^post INCREASE^post)) (= MAX_MIN^post (+ (+ 0 MAX^0) (* -1 MIN^0)))) (= NUM_MIN^post (+ (+ 0 (* -1 MIN^0)) num^0))) (<= (+ 0 num^0) (+ 0 INCREASE^post))) (<= (+ 0 INCREASE^post) (+ (+ 0 MAX^0) (* -1 MIN^0)))) (<= (+ 0 INCREASE^post) (+ 0 NUM_MIN^post))) (= MIN^post (+ (+ 0 INCREASE^post) MIN^0))) (= Q^post 1)) (= j_min^post j_min^post)) (<= 1 (+ 0 j_min^post))) (= conditional^post conditional^post)) (= CRITICAL^0 CRITICAL^post)) (= MAX^0 MAX^post)) (= NONCRITICAL^0 NONCRITICAL^post)) (= P^0 P^post)) (= num^0 num^post)) (= pid^0 pid^post)))
    (cfg_trans2 pc^0 l3 pc^post l2 (and (and (and (and (and (and (and (and (and (and (and (and (and (<= (+ 0 conditional^0) 1) (= conditional^post conditional^post)) (= CRITICAL^0 CRITICAL^post)) (= INCREASE^0 INCREASE^post)) (= MAX^0 MAX^post)) (= MAX_MIN^0 MAX_MIN^post)) (= MIN^0 MIN^post)) (= NONCRITICAL^0 NONCRITICAL^post)) (= NUM_MIN^0 NUM_MIN^post)) (= P^0 P^post)) (= Q^0 Q^post)) (= j_min^0 j_min^post)) (= num^0 num^post)) (= pid^0 pid^post)))
    (cfg_trans2 pc^0 l3 pc^post l2 (and (and (and (and (and (and (and (and (and (and (and (and (and (and (<= 2 (+ 0 conditional^0)) (= INCREASE^post INCREASE^post)) (<= 1 (+ 0 INCREASE^post))) (= MAX^post (+ (+ 0 INCREASE^post) MAX^0))) (= conditional^post conditional^post)) (= CRITICAL^0 CRITICAL^post)) (= MAX_MIN^0 MAX_MIN^post)) (= MIN^0 MIN^post)) (= NONCRITICAL^0 NONCRITICAL^post)) (= NUM_MIN^0 NUM_MIN^post)) (= P^0 P^post)) (= Q^0 Q^post)) (= j_min^0 j_min^post)) (= num^0 num^post)) (= pid^0 pid^post)))
    (cfg_trans2 pc^0 l1 pc^post l3 (and (and (and (and (and (and (and (and (and (and (and (and (and (and (<= (+ 0 MIN^0) (+ 0 num^0)) (<= (+ 1 j_min^0) (+ 0 pid^0))) (= conditional^post conditional^post)) (= CRITICAL^0 CRITICAL^post)) (= INCREASE^0 INCREASE^post)) (= MAX^0 MAX^post)) (= MAX_MIN^0 MAX_MIN^post)) (= MIN^0 MIN^post)) (= NONCRITICAL^0 NONCRITICAL^post)) (= NUM_MIN^0 NUM_MIN^post)) (= P^0 P^post)) (= Q^0 Q^post)) (= j_min^0 j_min^post)) (= num^0 num^post)) (= pid^0 pid^post)))
    (cfg_trans2 pc^0 l1 pc^post l4 (and (and (and (and (and (and (and (and (and (and (and (and (and (= Q^post 0) (= P^post 0)) (<= (+ 0 pid^0) (+ 0 j_min^0))) (= CRITICAL^post 1)) (= INCREASE^0 INCREASE^post)) (= MAX^0 MAX^post)) (= MAX_MIN^0 MAX_MIN^post)) (= MIN^0 MIN^post)) (= NONCRITICAL^0 NONCRITICAL^post)) (= NUM_MIN^0 NUM_MIN^post)) (= conditional^0 conditional^post)) (= j_min^0 j_min^post)) (= num^0 num^post)) (= pid^0 pid^post)))
    (cfg_trans2 pc^0 l1 pc^post l4 (and (and (and (and (and (and (and (and (and (and (and (and (and (= Q^post 0) (= P^post 0)) (<= (+ 1 num^0) (+ 0 MIN^0))) (= CRITICAL^post 1)) (= INCREASE^0 INCREASE^post)) (= MAX^0 MAX^post)) (= MAX_MIN^0 MAX_MIN^post)) (= MIN^0 MIN^post)) (= NONCRITICAL^0 NONCRITICAL^post)) (= NUM_MIN^0 NUM_MIN^post)) (= conditional^0 conditional^post)) (= j_min^0 j_min^post)) (= num^0 num^post)) (= pid^0 pid^post)))
    (cfg_trans2 pc^0 l4 pc^post l1 (and (and (and (and (and (and (and (and (and (and (and (and (= num^post (+ 1 MAX^0)) (= MAX^post (+ 1 MAX^0))) (= NONCRITICAL^post 1)) (= CRITICAL^post 0)) (= INCREASE^0 INCREASE^post)) (= MAX_MIN^0 MAX_MIN^post)) (= MIN^0 MIN^post)) (= NUM_MIN^0 NUM_MIN^post)) (= P^0 P^post)) (= Q^0 Q^post)) (= conditional^0 conditional^post)) (= j_min^0 j_min^post)) (= pid^0 pid^post)))
    (cfg_trans2 pc^0 l5 pc^post l4 (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= P^post 0) (= Q^post 0)) (= pid^post pid^post)) (<= 1 (+ 0 pid^post))) (= j_min^post j_min^post)) (<= 1 (+ 0 j_min^post))) (= MIN^post MIN^post)) (<= 1 (+ 0 MIN^post))) (= MAX^post MAX^post)) (<= (+ 0 MIN^post) (+ 0 MAX^post))) (= NONCRITICAL^post 1)) (= CRITICAL^post 0)) (= INCREASE^0 INCREASE^post)) (= MAX_MIN^0 MAX_MIN^post)) (= NUM_MIN^0 NUM_MIN^post)) (= conditional^0 conditional^post)) (= num^0 num^post)))
    (cfg_trans2 pc^0 l6 pc^post l5 (and (and (and (and (and (and (and (and (and (and (and (and (= CRITICAL^0 CRITICAL^post) (= INCREASE^0 INCREASE^post)) (= MAX^0 MAX^post)) (= MAX_MIN^0 MAX_MIN^post)) (= MIN^0 MIN^post)) (= NONCRITICAL^0 NONCRITICAL^post)) (= NUM_MIN^0 NUM_MIN^post)) (= P^0 P^post)) (= Q^0 Q^post)) (= conditional^0 conditional^post)) (= j_min^0 j_min^post)) (= num^0 num^post)) (= pid^0 pid^post)))
  )
)
