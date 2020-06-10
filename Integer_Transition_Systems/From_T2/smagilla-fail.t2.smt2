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
(assert (distinct l0 l1 l2 l3 l4 l5 l6 l7 l8))

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

(define-fun init_main ( (pc^0 Loc) (___rho_1_^0 Int) (c^0 Int) (curr_serv^0 Int) (resp^0 Int) (servers^0 Int) ) Bool
  (cfg_init pc^0 l8 true))

(define-fun next_main (
                 (pc^0 Loc) (___rho_1_^0 Int) (c^0 Int) (curr_serv^0 Int) (resp^0 Int) (servers^0 Int)
                 (pc^post Loc) (___rho_1_^post Int) (c^post Int) (curr_serv^post Int) (resp^post Int) (servers^post Int)
             ) Bool
  (or
    (cfg_trans2 pc^0 l0 pc^post l1 (and (and (and (and (= ___rho_1_^0 ___rho_1_^post) (= c^0 c^post)) (= curr_serv^0 curr_serv^post)) (= resp^0 resp^post)) (= servers^0 servers^post)))
    (cfg_trans2 pc^0 l2 pc^post l3 (and (and (and (and (= ___rho_1_^0 ___rho_1_^post) (= c^0 c^post)) (= curr_serv^0 curr_serv^post)) (= resp^0 resp^post)) (= servers^0 servers^post)))
    (cfg_trans2 pc^0 l4 pc^post l5 (and (and (and (and (= ___rho_1_^0 ___rho_1_^post) (= c^0 c^post)) (= curr_serv^0 curr_serv^post)) (= resp^0 resp^post)) (= servers^0 servers^post)))
    (cfg_trans2 pc^0 l5 pc^post l4 (and (and (and (and (= ___rho_1_^0 ___rho_1_^post) (= c^0 c^post)) (= curr_serv^0 curr_serv^post)) (= resp^0 resp^post)) (= servers^0 servers^post)))
    (cfg_trans2 pc^0 l6 pc^post l0 (and (and (and (and (and (and (<= (+ 0 ___rho_1_^0) 0) (<= (+ 1 c^0) (+ 0 curr_serv^0))) (= curr_serv^post (+ -1 curr_serv^0))) (= ___rho_1_^0 ___rho_1_^post)) (= c^0 c^post)) (= resp^0 resp^post)) (= servers^0 servers^post)))
    (cfg_trans2 pc^0 l6 pc^post l0 (and (and (and (and (and (<= 1 (+ 0 ___rho_1_^0)) (= c^post (+ -1 c^0))) (= curr_serv^post (+ -1 curr_serv^0))) (= resp^post (+ 1 resp^0))) (= ___rho_1_^0 ___rho_1_^post)) (= servers^0 servers^post)))
    (cfg_trans2 pc^0 l1 pc^post l6 (and (and (and (and (and (<= 1 (+ 0 curr_serv^0)) (= ___rho_1_^post ___rho_1_^post)) (= c^0 c^post)) (= curr_serv^0 curr_serv^post)) (= resp^0 resp^post)) (= servers^0 servers^post)))
    (cfg_trans2 pc^0 l1 pc^post l4 (and (and (and (and (and (<= (+ 0 curr_serv^0) 0) (= ___rho_1_^0 ___rho_1_^post)) (= c^0 c^post)) (= curr_serv^0 curr_serv^post)) (= resp^0 resp^post)) (= servers^0 servers^post)))
    (cfg_trans2 pc^0 l7 pc^post l0 (and (and (and (and (and (= c^post c^post) (<= 1 (+ 0 c^post))) (= servers^post 4)) (= resp^post 0)) (= curr_serv^post (+ 0 servers^post))) (= ___rho_1_^0 ___rho_1_^post)))
    (cfg_trans2 pc^0 l8 pc^post l7 (and (and (and (and (= ___rho_1_^0 ___rho_1_^post) (= c^0 c^post)) (= curr_serv^0 curr_serv^post)) (= resp^0 resp^post)) (= servers^0 servers^post)))
  )
)
