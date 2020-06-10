(declare-sort Loc 0)
(declare-const f1_0_main_Load Loc)
(declare-const f731_0_main_GE Loc)
(declare-const f958_0_getNext_Return Loc)
(declare-const f1280_0_getPowerOfKInSource_IntArithmetic Loc)
(declare-const f873_0_findKthPrime_Return Loc)
(declare-const f1280_0_getPowerOfKInSource_IntArithmetic' Loc)
(declare-const f1029_0_findKthPrime_GE Loc)
(declare-const f1209_0_checkPrime_GE Loc)
(declare-const f1209_0_checkPrime_GE' Loc)
(declare-const __init Loc)
(assert (distinct f1_0_main_Load f731_0_main_GE f958_0_getNext_Return f1280_0_getPowerOfKInSource_IntArithmetic f873_0_findKthPrime_Return f1280_0_getPowerOfKInSource_IntArithmetic' f1029_0_findKthPrime_GE f1209_0_checkPrime_GE f1209_0_checkPrime_GE' __init ))

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

(define-fun init_main ( (pc Loc) (arg1 Int) (arg2 Int) (arg3 Int) (arg4 Int) (arg5 Int) (arg6 Int) (arg7 Int) ) Bool
  (cfg_init pc __init true))

(define-fun next_main (
                 (pc Loc) (arg1 Int) (arg2 Int) (arg3 Int) (arg4 Int) (arg5 Int) (arg6 Int) (arg7 Int)
                 (pc1 Loc) (arg1P Int) (arg2P Int) (arg3P Int) (arg4P Int) (arg5P Int) (arg6P Int) (arg7P Int)
             ) Bool
  (or
    (cfg_trans2 pc f1_0_main_Load pc1 f731_0_main_GE (and (and (and (and (and (and (and (and (and (> arg4P (- 1)) (> arg2 1)) (> arg7P 0)) (<= arg1P arg1)) (> arg1 0)) (> arg1P 0)) (> arg2P 2)) (= 0 arg3P)) (= arg2 arg5P)) (= 1 arg6P)))
    (cfg_trans2 pc f731_0_main_GE pc1 f731_0_main_GE (and (and (and (and (and (and (and (and (and (and (and (and (and (and (> arg5 1) (> arg4 arg3)) (> arg7 0)) (> arg4 0)) (>= arg1 arg1P)) (>= arg2 arg1P)) (> arg1 0)) (> arg2 0)) (> arg1P 0)) (> arg2P 0)) (>= arg2 (+ arg7 2))) (>= arg2 (+ arg6 2))) (= (+ arg3 1) arg3P)) (= arg4 arg4P)) (= arg5 arg5P)))
    (cfg_trans2 pc f958_0_getNext_Return pc1 f731_0_main_GE (and (and (and (and (and (and (and (and (and (and (and (and (and (<= arg1P arg1) (<= arg1P arg2)) (<= arg2P arg2)) (> arg1 0)) (> arg2 0)) (> arg1P 0)) (> arg2P 0)) (<= (+ arg7 2) arg2)) (<= (+ arg6 2) arg2)) (= (+ arg4 1) arg3P)) (= arg3 arg4P)) (= arg5 arg5P)) (= arg6 arg6P)) (= arg7 arg7P)))
    (cfg_trans2 pc f731_0_main_GE pc1 f1280_0_getPowerOfKInSource_IntArithmetic (and (and (and (and (and (and (and (and (and (and (and (and (> arg5 1) (> arg4 arg3)) (> arg4 0)) (> arg7 0)) (<= (- arg1P 1) arg2)) (> arg1 0)) (> arg2 0)) (> arg1P 0)) (<= (+ arg7 2) arg2)) (<= (+ arg6 2) arg2)) (= arg7 arg2P)) (= (+ arg6 1) arg4P)) (= arg7 arg5P)))
    (cfg_trans2 pc f873_0_findKthPrime_Return pc1 f1280_0_getPowerOfKInSource_IntArithmetic (and (and (and (and (and (and (and (and (<= (- arg1P 1) arg1) (> arg1 0)) (> arg1P 0)) (<= (+ arg4 2) arg1)) (<= (+ arg3 2) arg1)) (= arg4 arg2P)) (= arg2 arg3P)) (= (+ arg3 1) arg4P)) (= arg4 arg5P)))
    (cfg_trans2 pc f1280_0_getPowerOfKInSource_IntArithmetic pc1 f1280_0_getPowerOfKInSource_IntArithmetic' (exists ((x76 Int) (x77 Int)) (and (and (and (and (and (and (and (and (and (and (= (- arg2 (* arg3 x76)) 0) (<= x77 arg1)) (> arg1 0)) (> x77 0)) (<= (+ arg5 2) arg1)) (<= (+ arg4 2) arg1)) (= arg1 arg1P)) (= arg2 arg2P)) (= arg3 arg3P)) (= arg4 arg4P)) (= arg5 arg5P))))
    (cfg_trans2 pc f1280_0_getPowerOfKInSource_IntArithmetic' pc1 f1280_0_getPowerOfKInSource_IntArithmetic (exists ((x85 Int)) (and (and (and (and (and (and (and (and (and (and (and (and (= (- arg2 (* arg3 x85)) 0) (<= arg1P arg1)) (> arg1 0)) (> arg1P 0)) (<= (+ arg4 2) arg1)) (<= (+ arg5 2) arg1)) (>= (- arg2 (* arg3 arg2P)) 0)) (> arg3 (- arg2 (* arg3 arg2P)))) (> arg3 (- arg2 (* arg3 x85)))) (>= (- arg2 (* arg3 x85)) 0)) (= arg3 arg3P)) (= arg4 arg4P)) (= arg5 arg5P))))
    (cfg_trans2 pc f731_0_main_GE pc1 f1029_0_findKthPrime_GE (and (and (and (and (and (and (and (and (and (and (> arg5 1) (> arg4 arg3)) (> arg4 0)) (> arg7 0)) (> arg1 0)) (> arg2 0)) (<= (+ arg7 2) arg2)) (<= (+ arg6 2) arg2)) (= 1 arg1P)) (= 0 arg2P)) (= arg6 arg3P)))
    (cfg_trans2 pc f1029_0_findKthPrime_GE pc1 f1209_0_checkPrime_GE (and (and (and (and (and (> arg3 arg2) (> arg1 0)) (= arg3 arg1P)) (= arg2 arg2P)) (= 2 arg3P)) (= (+ arg1 1) arg4P)))
    (cfg_trans2 pc f1209_0_checkPrime_GE pc1 f1209_0_checkPrime_GE' (exists ((x90 Int)) (and (and (and (and (and (> arg4 arg3) (< (- arg4 (* arg3 x90)) 0)) (= arg1 arg1P)) (= arg2 arg2P)) (= arg3 arg3P)) (= arg4 arg4P))))
    (cfg_trans2 pc f1209_0_checkPrime_GE pc1 f1209_0_checkPrime_GE' (exists ((x95 Int)) (and (and (and (and (and (> arg4 arg3) (> (- arg4 (* arg3 x95)) 0)) (= arg1 arg1P)) (= arg2 arg2P)) (= arg3 arg3P)) (= arg4 arg4P))))
    (cfg_trans2 pc f1209_0_checkPrime_GE' pc1 f1209_0_checkPrime_GE (exists ((x100 Int)) (and (and (and (and (and (and (> (- arg4 (* arg3 x100)) 0) (< (- arg4 (* arg3 x100)) arg3)) (> arg4 arg3)) (= arg1 arg1P)) (= arg2 arg2P)) (= (+ arg3 1) arg3P)) (= arg4 arg4P))))
    (cfg_trans2 pc f1209_0_checkPrime_GE pc1 f1029_0_findKthPrime_GE (and (and (and (<= arg4 arg3) (= arg4 arg1P)) (= (+ arg2 1) arg2P)) (= arg1 arg3P)))
    (cfg_trans2 pc f1029_0_findKthPrime_GE pc1 f1029_0_findKthPrime_GE (and (and (and (and (> arg3 arg2) (< arg1 1)) (= (+ arg1 1) arg1P)) (= arg2 arg2P)) (= arg3 arg3P)))
    (cfg_trans2 pc f1209_0_checkPrime_GE pc1 f1209_0_checkPrime_GE' (exists ((x105 Int)) (and (and (and (and (and (> arg4 arg3) (= (- arg4 (* arg3 x105)) 0)) (= arg1 arg1P)) (= arg2 arg2P)) (= arg3 arg3P)) (= arg4 arg4P))))
    (cfg_trans2 pc f1209_0_checkPrime_GE' pc1 f1029_0_findKthPrime_GE (exists ((x110 Int)) (and (and (and (and (and (and (= (- arg4 (* arg3 x110)) 0) (> arg4 arg3)) (< (- arg4 (* arg3 x110)) arg3)) (>= (- arg4 (* arg3 x110)) 0)) (= arg4 arg1P)) (= arg2 arg2P)) (= arg1 arg3P))))
    (cfg_trans2 pc __init pc1 f1_0_main_Load true)
  )
)
