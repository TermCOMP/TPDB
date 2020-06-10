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

(define-fun init_main ( (pc^0 Loc) (IsochResourceData^0 Int) (ResourceIrp^0 Int) (StackSize^0 Int) (___rho_99_^0 Int) (k4^0 Int) (keA^0 Int) (keR^0 Int) (ntStatus^0 Int) (pIrb^0 Int) ) Bool
  (cfg_init pc^0 l10 true))

(define-fun next_main (
                 (pc^0 Loc) (IsochResourceData^0 Int) (ResourceIrp^0 Int) (StackSize^0 Int) (___rho_99_^0 Int) (k4^0 Int) (keA^0 Int) (keR^0 Int) (ntStatus^0 Int) (pIrb^0 Int)
                 (pc^post Loc) (IsochResourceData^post Int) (ResourceIrp^post Int) (StackSize^post Int) (___rho_99_^post Int) (k4^post Int) (keA^post Int) (keR^post Int) (ntStatus^post Int) (pIrb^post Int)
             ) Bool
  (or
    (cfg_trans2 pc^0 l0 pc^post l1 (and (and (and (and (and (and (and (and (= IsochResourceData^0 IsochResourceData^post) (= ResourceIrp^0 ResourceIrp^post)) (= StackSize^0 StackSize^post)) (= ___rho_99_^0 ___rho_99_^post)) (= k4^0 k4^post)) (= keA^0 keA^post)) (= keR^0 keR^post)) (= ntStatus^0 ntStatus^post)) (= pIrb^0 pIrb^post)))
    (cfg_trans2 pc^0 l1 pc^post l0 (and (and (and (and (and (and (and (and (= IsochResourceData^0 IsochResourceData^post) (= ResourceIrp^0 ResourceIrp^post)) (= StackSize^0 StackSize^post)) (= ___rho_99_^0 ___rho_99_^post)) (= k4^0 k4^post)) (= keA^0 keA^post)) (= keR^0 keR^post)) (= ntStatus^0 ntStatus^post)) (= pIrb^0 pIrb^post)))
    (cfg_trans2 pc^0 l2 pc^post l3 (and (and (and (and (and (and (and (and (= IsochResourceData^0 IsochResourceData^post) (= ResourceIrp^0 ResourceIrp^post)) (= StackSize^0 StackSize^post)) (= ___rho_99_^0 ___rho_99_^post)) (= k4^0 k4^post)) (= keA^0 keA^post)) (= keR^0 keR^post)) (= ntStatus^0 ntStatus^post)) (= pIrb^0 pIrb^post)))
    (cfg_trans2 pc^0 l4 pc^post l2 (and (and (and (and (and (and (and (and (and (<= 1 (+ 0 pIrb^0)) (= ntStatus^post ntStatus^post)) (= IsochResourceData^0 IsochResourceData^post)) (= ResourceIrp^0 ResourceIrp^post)) (= StackSize^0 StackSize^post)) (= ___rho_99_^0 ___rho_99_^post)) (= k4^0 k4^post)) (= keA^0 keA^post)) (= keR^0 keR^post)) (= pIrb^0 pIrb^post)))
    (cfg_trans2 pc^0 l4 pc^post l2 (and (and (and (and (and (and (and (and (and (<= (+ 0 pIrb^0) 0) (= IsochResourceData^0 IsochResourceData^post)) (= ResourceIrp^0 ResourceIrp^post)) (= StackSize^0 StackSize^post)) (= ___rho_99_^0 ___rho_99_^post)) (= k4^0 k4^post)) (= keA^0 keA^post)) (= keR^0 keR^post)) (= ntStatus^0 ntStatus^post)) (= pIrb^0 pIrb^post)))
    (cfg_trans2 pc^0 l5 pc^post l4 (and (and (and (and (and (and (and (and (= pIrb^post pIrb^post) (= IsochResourceData^0 IsochResourceData^post)) (= ResourceIrp^0 ResourceIrp^post)) (= StackSize^0 StackSize^post)) (= ___rho_99_^0 ___rho_99_^post)) (= k4^0 k4^post)) (= keA^0 keA^post)) (= keR^0 keR^post)) (= ntStatus^0 ntStatus^post)))
    (cfg_trans2 pc^0 l6 pc^post l5 (and (and (and (and (and (and (and (and (and (<= (+ 1 ResourceIrp^0) 0) (= IsochResourceData^0 IsochResourceData^post)) (= ResourceIrp^0 ResourceIrp^post)) (= StackSize^0 StackSize^post)) (= ___rho_99_^0 ___rho_99_^post)) (= k4^0 k4^post)) (= keA^0 keA^post)) (= keR^0 keR^post)) (= ntStatus^0 ntStatus^post)) (= pIrb^0 pIrb^post)))
    (cfg_trans2 pc^0 l6 pc^post l5 (and (and (and (and (and (and (and (and (and (<= 1 (+ 0 ResourceIrp^0)) (= IsochResourceData^0 IsochResourceData^post)) (= ResourceIrp^0 ResourceIrp^post)) (= StackSize^0 StackSize^post)) (= ___rho_99_^0 ___rho_99_^post)) (= k4^0 k4^post)) (= keA^0 keA^post)) (= keR^0 keR^post)) (= ntStatus^0 ntStatus^post)) (= pIrb^0 pIrb^post)))
    (cfg_trans2 pc^0 l6 pc^post l2 (and (and (and (and (and (and (and (and (and (and (<= (+ 0 ResourceIrp^0) 0) (<= 0 (+ 0 ResourceIrp^0))) (= IsochResourceData^0 IsochResourceData^post)) (= ResourceIrp^0 ResourceIrp^post)) (= StackSize^0 StackSize^post)) (= ___rho_99_^0 ___rho_99_^post)) (= k4^0 k4^post)) (= keA^0 keA^post)) (= keR^0 keR^post)) (= ntStatus^0 ntStatus^post)) (= pIrb^0 pIrb^post)))
    (cfg_trans2 pc^0 l7 pc^post l2 (and (and (and (and (and (and (and (and (and (<= (+ 0 IsochResourceData^0) 0) (= IsochResourceData^0 IsochResourceData^post)) (= ResourceIrp^0 ResourceIrp^post)) (= StackSize^0 StackSize^post)) (= ___rho_99_^0 ___rho_99_^post)) (= k4^0 k4^post)) (= keA^0 keA^post)) (= keR^0 keR^post)) (= ntStatus^0 ntStatus^post)) (= pIrb^0 pIrb^post)))
    (cfg_trans2 pc^0 l7 pc^post l6 (exists ( (ResourceIrp^1 Int) ) (and (and (and (and (and (and (and (and (and (and (<= 1 (+ 0 IsochResourceData^0)) (= ResourceIrp^1 ResourceIrp^1)) (= StackSize^post StackSize^post)) (= ___rho_99_^post ___rho_99_^post)) (= ResourceIrp^post (+ 0 ___rho_99_^post))) (= IsochResourceData^0 IsochResourceData^post)) (= k4^0 k4^post)) (= keA^0 keA^post)) (= keR^0 keR^post)) (= ntStatus^0 ntStatus^post)) (= pIrb^0 pIrb^post))))
    (cfg_trans2 pc^0 l8 pc^post l0 (exists ( (keR^1 Int) ) (and (and (and (and (and (and (and (and (and (and (<= (+ 0 k4^0) 0) (= keR^1 1)) (= keR^post 0)) (= IsochResourceData^0 IsochResourceData^post)) (= ResourceIrp^0 ResourceIrp^post)) (= StackSize^0 StackSize^post)) (= ___rho_99_^0 ___rho_99_^post)) (= k4^0 k4^post)) (= keA^0 keA^post)) (= ntStatus^0 ntStatus^post)) (= pIrb^0 pIrb^post))))
    (cfg_trans2 pc^0 l8 pc^post l7 (exists ( (keR^1 Int) ) (and (and (and (and (and (and (and (and (and (and (<= 1 (+ 0 k4^0)) (= k4^post (+ -1 k4^0))) (= keR^1 1)) (= keR^post 0)) (= IsochResourceData^0 IsochResourceData^post)) (= ResourceIrp^0 ResourceIrp^post)) (= StackSize^0 StackSize^post)) (= ___rho_99_^0 ___rho_99_^post)) (= keA^0 keA^post)) (= ntStatus^0 ntStatus^post)) (= pIrb^0 pIrb^post))))
    (cfg_trans2 pc^0 l3 pc^post l8 (exists ( (keA^1 Int) ) (and (and (and (and (and (and (and (and (and (= keA^1 1) (= keA^post 0)) (= IsochResourceData^0 IsochResourceData^post)) (= ResourceIrp^0 ResourceIrp^post)) (= StackSize^0 StackSize^post)) (= ___rho_99_^0 ___rho_99_^post)) (= k4^0 k4^post)) (= keR^0 keR^post)) (= ntStatus^0 ntStatus^post)) (= pIrb^0 pIrb^post))))
    (cfg_trans2 pc^0 l9 pc^post l3 (and (and (and (and (and (and (and (and (= keA^post 0) (= keR^post 0)) (= IsochResourceData^0 IsochResourceData^post)) (= ResourceIrp^0 ResourceIrp^post)) (= StackSize^0 StackSize^post)) (= ___rho_99_^0 ___rho_99_^post)) (= k4^0 k4^post)) (= ntStatus^0 ntStatus^post)) (= pIrb^0 pIrb^post)))
    (cfg_trans2 pc^0 l10 pc^post l9 (and (and (and (and (and (and (and (and (= IsochResourceData^0 IsochResourceData^post) (= ResourceIrp^0 ResourceIrp^post)) (= StackSize^0 StackSize^post)) (= ___rho_99_^0 ___rho_99_^post)) (= k4^0 k4^post)) (= keA^0 keA^post)) (= keR^0 keR^post)) (= ntStatus^0 ntStatus^post)) (= pIrb^0 pIrb^post)))
  )
)
