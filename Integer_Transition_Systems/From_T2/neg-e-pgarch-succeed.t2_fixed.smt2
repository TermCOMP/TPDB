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
(assert (distinct l0 l1 l2 l3 l4 l5 l6 l7 l8 l9 l10 l11 l12))

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

(define-fun init_main ( (pc^0 Loc) (___rho_2_^0 Int) (___rho_3_^0 Int) (___rho_4_^0 Int) (___rho_5_^0 Int) (a22^0 Int) (curtime^0 Int) (got_SIGHUP^0 Int) (last_copy_time^0 Int) (tt1^0 Int) (wakend^0 Int) ) Bool
  (cfg_init pc^0 l12 true))

(define-fun next_main (
                 (pc^0 Loc) (___rho_2_^0 Int) (___rho_3_^0 Int) (___rho_4_^0 Int) (___rho_5_^0 Int) (a22^0 Int) (curtime^0 Int) (got_SIGHUP^0 Int) (last_copy_time^0 Int) (tt1^0 Int) (wakend^0 Int)
                 (pc^post Loc) (___rho_2_^post Int) (___rho_3_^post Int) (___rho_4_^post Int) (___rho_5_^post Int) (a22^post Int) (curtime^post Int) (got_SIGHUP^post Int) (last_copy_time^post Int) (tt1^post Int) (wakend^post Int)
             ) Bool
  (or
    (cfg_trans2 pc^0 l0 pc^post l1 (and (and (and (and (and (and (and (and (and (and (<= (+ 0 got_SIGHUP^0) 0) (= ___rho_2_^0 ___rho_2_^post)) (= ___rho_3_^0 ___rho_3_^post)) (= ___rho_4_^0 ___rho_4_^post)) (= ___rho_5_^0 ___rho_5_^post)) (= a22^0 a22^post)) (= curtime^0 curtime^post)) (= got_SIGHUP^0 got_SIGHUP^post)) (= last_copy_time^0 last_copy_time^post)) (= tt1^0 tt1^post)) (= wakend^0 wakend^post)))
    (cfg_trans2 pc^0 l0 pc^post l2 (and (and (and (and (and (and (and (and (and (and (<= 1 (+ 0 got_SIGHUP^0)) (= got_SIGHUP^post 0)) (= a22^post 1)) (= ___rho_3_^post ___rho_3_^post)) (= tt1^post (+ 0 ___rho_3_^post))) (= ___rho_2_^0 ___rho_2_^post)) (= ___rho_4_^0 ___rho_4_^post)) (= ___rho_5_^0 ___rho_5_^post)) (= curtime^0 curtime^post)) (= last_copy_time^0 last_copy_time^post)) (= wakend^0 wakend^post)))
    (cfg_trans2 pc^0 l3 pc^post l4 (and (and (and (and (and (and (and (and (and (= ___rho_2_^0 ___rho_2_^post) (= ___rho_3_^0 ___rho_3_^post)) (= ___rho_4_^0 ___rho_4_^post)) (= ___rho_5_^0 ___rho_5_^post)) (= a22^0 a22^post)) (= curtime^0 curtime^post)) (= got_SIGHUP^0 got_SIGHUP^post)) (= last_copy_time^0 last_copy_time^post)) (= tt1^0 tt1^post)) (= wakend^0 wakend^post)))
    (cfg_trans2 pc^0 l5 pc^post l6 (and (and (and (and (and (and (and (and (and (= ___rho_2_^0 ___rho_2_^post) (= ___rho_3_^0 ___rho_3_^post)) (= ___rho_4_^0 ___rho_4_^post)) (= ___rho_5_^0 ___rho_5_^post)) (= a22^0 a22^post)) (= curtime^0 curtime^post)) (= got_SIGHUP^0 got_SIGHUP^post)) (= last_copy_time^0 last_copy_time^post)) (= tt1^0 tt1^post)) (= wakend^0 wakend^post)))
    (cfg_trans2 pc^0 l7 pc^post l5 (and (and (and (and (and (and (and (and (and (= ___rho_5_^post ___rho_5_^post) (= ___rho_2_^0 ___rho_2_^post)) (= ___rho_3_^0 ___rho_3_^post)) (= ___rho_4_^0 ___rho_4_^post)) (= a22^0 a22^post)) (= curtime^0 curtime^post)) (= got_SIGHUP^0 got_SIGHUP^post)) (= last_copy_time^0 last_copy_time^post)) (= tt1^0 tt1^post)) (= wakend^0 wakend^post)))
    (cfg_trans2 pc^0 l8 pc^post l7 (and (and (and (and (and (and (and (and (and (and (<= (+ (+ 1 curtime^0) (* -1 last_copy_time^0)) 1000) (= ___rho_2_^0 ___rho_2_^post)) (= ___rho_3_^0 ___rho_3_^post)) (= ___rho_4_^0 ___rho_4_^post)) (= ___rho_5_^0 ___rho_5_^post)) (= a22^0 a22^post)) (= curtime^0 curtime^post)) (= got_SIGHUP^0 got_SIGHUP^post)) (= last_copy_time^0 last_copy_time^post)) (= tt1^0 tt1^post)) (= wakend^0 wakend^post)))
    (cfg_trans2 pc^0 l8 pc^post l7 (and (and (and (and (and (and (and (and (and (and (<= 1000 (+ (+ 0 curtime^0) (* -1 last_copy_time^0))) (= wakend^post 1)) (= ___rho_2_^0 ___rho_2_^post)) (= ___rho_3_^0 ___rho_3_^post)) (= ___rho_4_^0 ___rho_4_^post)) (= ___rho_5_^0 ___rho_5_^post)) (= a22^0 a22^post)) (= curtime^0 curtime^post)) (= got_SIGHUP^0 got_SIGHUP^post)) (= last_copy_time^0 last_copy_time^post)) (= tt1^0 tt1^post)))
    (cfg_trans2 pc^0 l9 pc^post l7 (and (and (and (and (and (and (and (and (and (and (<= 1 (+ 0 wakend^0)) (= ___rho_2_^0 ___rho_2_^post)) (= ___rho_3_^0 ___rho_3_^post)) (= ___rho_4_^0 ___rho_4_^post)) (= ___rho_5_^0 ___rho_5_^post)) (= a22^0 a22^post)) (= curtime^0 curtime^post)) (= got_SIGHUP^0 got_SIGHUP^post)) (= last_copy_time^0 last_copy_time^post)) (= tt1^0 tt1^post)) (= wakend^0 wakend^post)))
    (cfg_trans2 pc^0 l9 pc^post l8 (and (and (and (and (and (and (and (and (and (and (<= (+ 0 wakend^0) 0) (= curtime^post curtime^post)) (= ___rho_2_^0 ___rho_2_^post)) (= ___rho_3_^0 ___rho_3_^post)) (= ___rho_4_^0 ___rho_4_^post)) (= ___rho_5_^0 ___rho_5_^post)) (= a22^0 a22^post)) (= got_SIGHUP^0 got_SIGHUP^post)) (= last_copy_time^0 last_copy_time^post)) (= tt1^0 tt1^post)) (= wakend^0 wakend^post)))
    (cfg_trans2 pc^0 l6 pc^post l10 (and (and (and (and (and (and (and (and (and (= ___rho_2_^0 ___rho_2_^post) (= ___rho_3_^0 ___rho_3_^post)) (= ___rho_4_^0 ___rho_4_^post)) (= ___rho_5_^0 ___rho_5_^post)) (= a22^0 a22^post)) (= curtime^0 curtime^post)) (= got_SIGHUP^0 got_SIGHUP^post)) (= last_copy_time^0 last_copy_time^post)) (= tt1^0 tt1^post)) (= wakend^0 wakend^post)))
    (cfg_trans2 pc^0 l10 pc^post l6 (and (and (and (and (and (and (and (and (and (= ___rho_2_^0 ___rho_2_^post) (= ___rho_3_^0 ___rho_3_^post)) (= ___rho_4_^0 ___rho_4_^post)) (= ___rho_5_^0 ___rho_5_^post)) (= a22^0 a22^post)) (= curtime^0 curtime^post)) (= got_SIGHUP^0 got_SIGHUP^post)) (= last_copy_time^0 last_copy_time^post)) (= tt1^0 tt1^post)) (= wakend^0 wakend^post)))
    (cfg_trans2 pc^0 l1 pc^post l9 (and (and (and (and (and (and (and (and (and (and (<= (+ 0 wakend^0) 0) (= ___rho_2_^0 ___rho_2_^post)) (= ___rho_3_^0 ___rho_3_^post)) (= ___rho_4_^0 ___rho_4_^post)) (= ___rho_5_^0 ___rho_5_^post)) (= a22^0 a22^post)) (= curtime^0 curtime^post)) (= got_SIGHUP^0 got_SIGHUP^post)) (= last_copy_time^0 last_copy_time^post)) (= tt1^0 tt1^post)) (= wakend^0 wakend^post)))
    (cfg_trans2 pc^0 l1 pc^post l9 (and (and (and (and (and (and (and (and (and (and (<= 1 (+ 0 wakend^0)) (= wakend^post 0)) (= ___rho_4_^post ___rho_4_^post)) (= last_copy_time^post (+ 0 ___rho_4_^post))) (= ___rho_2_^0 ___rho_2_^post)) (= ___rho_3_^0 ___rho_3_^post)) (= ___rho_5_^0 ___rho_5_^post)) (= a22^0 a22^post)) (= curtime^0 curtime^post)) (= got_SIGHUP^0 got_SIGHUP^post)) (= tt1^0 tt1^post)))
    (cfg_trans2 pc^0 l2 pc^post l1 (and (and (and (and (and (and (and (and (and (and (<= 1 (+ 0 tt1^0)) (= ___rho_2_^0 ___rho_2_^post)) (= ___rho_3_^0 ___rho_3_^post)) (= ___rho_4_^0 ___rho_4_^post)) (= ___rho_5_^0 ___rho_5_^post)) (= a22^0 a22^post)) (= curtime^0 curtime^post)) (= got_SIGHUP^0 got_SIGHUP^post)) (= last_copy_time^0 last_copy_time^post)) (= tt1^0 tt1^post)) (= wakend^0 wakend^post)))
    (cfg_trans2 pc^0 l2 pc^post l5 (and (and (and (and (and (and (and (and (and (and (<= (+ 0 tt1^0) 0) (= ___rho_2_^0 ___rho_2_^post)) (= ___rho_3_^0 ___rho_3_^post)) (= ___rho_4_^0 ___rho_4_^post)) (= ___rho_5_^0 ___rho_5_^post)) (= a22^0 a22^post)) (= curtime^0 curtime^post)) (= got_SIGHUP^0 got_SIGHUP^post)) (= last_copy_time^0 last_copy_time^post)) (= tt1^0 tt1^post)) (= wakend^0 wakend^post)))
    (cfg_trans2 pc^0 l11 pc^post l0 (exists ( (wakend^1 Int) ) (and (and (and (and (and (and (and (and (and (and (= wakend^1 1) (= ___rho_2_^post ___rho_2_^post)) (= got_SIGHUP^post (+ 0 ___rho_2_^post))) (= wakend^post 1)) (= ___rho_3_^0 ___rho_3_^post)) (= ___rho_4_^0 ___rho_4_^post)) (= ___rho_5_^0 ___rho_5_^post)) (= a22^0 a22^post)) (= curtime^0 curtime^post)) (= last_copy_time^0 last_copy_time^post)) (= tt1^0 tt1^post))))
    (cfg_trans2 pc^0 l12 pc^post l11 (and (and (and (and (and (and (and (and (and (= ___rho_2_^0 ___rho_2_^post) (= ___rho_3_^0 ___rho_3_^post)) (= ___rho_4_^0 ___rho_4_^post)) (= ___rho_5_^0 ___rho_5_^post)) (= a22^0 a22^post)) (= curtime^0 curtime^post)) (= got_SIGHUP^0 got_SIGHUP^post)) (= last_copy_time^0 last_copy_time^post)) (= tt1^0 tt1^post)) (= wakend^0 wakend^post)))
  )
)
