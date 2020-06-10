(declare-sort Loc 0)
(declare-const f1_0_main_Load Loc)
(declare-const f80_0_create_LE Loc)
(declare-const f108_0_main_ArrayAccess Loc)
(declare-const f147_0_get_LE Loc)
(declare-const __init Loc)
(assert (distinct f1_0_main_Load f80_0_create_LE f108_0_main_ArrayAccess f147_0_get_LE __init ))

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

(define-fun init_main ( (pc Loc) (arg1 Int) (arg2 Int) (arg3 Int) (arg4 Int) ) Bool
  (cfg_init pc __init true))

(define-fun next_main (
                 (pc Loc) (arg1 Int) (arg2 Int) (arg3 Int) (arg4 Int)
                 (pc1 Loc) (arg1P Int) (arg2P Int) (arg3P Int) (arg4P Int)
             ) Bool
  (or
    (cfg_trans2 pc f1_0_main_Load pc1 f80_0_create_LE (and (and (and (and (and (and (<= arg1P arg1) (> arg2 (- 1))) (> arg1 0)) (> arg1P 0)) (= (- arg2 1) arg2P)) (= 0 arg3P)) (= arg2 arg4P)))
    (cfg_trans2 pc f80_0_create_LE pc1 f108_0_main_ArrayAccess (and (and (and (and (and (and (< arg2 1) (> arg3 0)) (> arg2P arg3)) (<= arg1P arg1)) (> arg1 0)) (> arg1P 0)) (= arg4 arg3P)))
    (cfg_trans2 pc f80_0_create_LE pc1 f108_0_main_ArrayAccess (and (and (and (and (and (>= arg1 arg1P) (< arg2 1)) (> arg1 0)) (> arg1P 0)) (= 1 arg2P)) (= arg4 arg3P)))
    (cfg_trans2 pc f80_0_create_LE pc1 f80_0_create_LE (and (and (and (and (and (<= arg1P arg1) (> arg2 0)) (> arg1 0)) (> arg1P 0)) (= (- arg2 1) arg2P)) (= arg4 arg4P)))
    (cfg_trans2 pc f108_0_main_ArrayAccess pc1 f147_0_get_LE (exists ((x23 Int)) (and (and (and (and (> arg3 0) (> x23 (- 1))) (> arg1 0)) (= (- x23 1) arg1P)) (= arg2 arg2P))))
    (cfg_trans2 pc f147_0_get_LE pc1 f147_0_get_LE (exists ((x27 Int)) (and (and (and (and (and (> arg2 (- 1)) (> x27 0)) (< x27 arg2)) (> arg1 0)) (< x27 arg2P)) (= (- arg1 1) arg1P))))
    (cfg_trans2 pc f147_0_get_LE pc1 f147_0_get_LE (exists ((x30 Int)) (and (and (and (and (> arg1 0) (< x30 arg2)) (> arg2 (- 1))) (= (- arg1 1) arg1P)) (= 1 arg2P))))
    (cfg_trans2 pc __init pc1 f1_0_main_Load true)
  )
)
