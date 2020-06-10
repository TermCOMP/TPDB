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

(define-fun init_main ( (pc^0 Loc) (DName^0 Int) (IoCreateDevice^0 Int) (PPBlockInits^0 Int) (PPBunlockInits^0 Int) (Pdo^0 Int) (Pdolen^0 Int) (conditional^0 Int) (i^0 Int) (num^0 Int) (status^0 Int) ) Bool
  (cfg_init pc^0 l7 true))

(define-fun next_main (
                 (pc^0 Loc) (DName^0 Int) (IoCreateDevice^0 Int) (PPBlockInits^0 Int) (PPBunlockInits^0 Int) (Pdo^0 Int) (Pdolen^0 Int) (conditional^0 Int) (i^0 Int) (num^0 Int) (status^0 Int)
                 (pc^post Loc) (DName^post Int) (IoCreateDevice^post Int) (PPBlockInits^post Int) (PPBunlockInits^post Int) (Pdo^post Int) (Pdolen^post Int) (conditional^post Int) (i^post Int) (num^post Int) (status^post Int)
             ) Bool
  (or
    (cfg_trans2 pc^0 l0 pc^post l1 (and (and (and (and (and (and (and (and (and (and (<= (+ 0 conditional^0) 1) (= DName^0 DName^post)) (= IoCreateDevice^0 IoCreateDevice^post)) (= PPBlockInits^0 PPBlockInits^post)) (= PPBunlockInits^0 PPBunlockInits^post)) (= Pdo^0 Pdo^post)) (= Pdolen^0 Pdolen^post)) (= conditional^0 conditional^post)) (= i^0 i^post)) (= num^0 num^post)) (= status^0 status^post)))
    (cfg_trans2 pc^0 l0 pc^post l2 (and (and (and (and (and (and (and (and (and (and (<= 2 (+ 0 conditional^0)) (= num^post (+ 1 num^0))) (= DName^0 DName^post)) (= IoCreateDevice^0 IoCreateDevice^post)) (= PPBlockInits^0 PPBlockInits^post)) (= PPBunlockInits^0 PPBunlockInits^post)) (= Pdo^0 Pdo^post)) (= Pdolen^0 Pdolen^post)) (= conditional^0 conditional^post)) (= i^0 i^post)) (= status^0 status^post)))
    (cfg_trans2 pc^0 l3 pc^post l2 (and (and (and (and (and (and (and (and (and (and (<= (+ 0 conditional^0) 1) (= IoCreateDevice^post 0)) (= status^post 1)) (= i^post (+ 1 i^0))) (= DName^0 DName^post)) (= PPBlockInits^0 PPBlockInits^post)) (= PPBunlockInits^0 PPBunlockInits^post)) (= Pdo^0 Pdo^post)) (= Pdolen^0 Pdolen^post)) (= conditional^0 conditional^post)) (= num^0 num^post)))
    (cfg_trans2 pc^0 l3 pc^post l0 (and (and (and (and (and (and (and (and (and (and (<= 2 (+ 0 conditional^0)) (= IoCreateDevice^post 0)) (= Pdo^post 0)) (= conditional^post conditional^post)) (= DName^0 DName^post)) (= PPBlockInits^0 PPBlockInits^post)) (= PPBunlockInits^0 PPBunlockInits^post)) (= Pdolen^0 Pdolen^post)) (= i^0 i^post)) (= num^0 num^post)) (= status^0 status^post)))
    (cfg_trans2 pc^0 l1 pc^post l4 (and (and (and (and (and (and (and (and (and (= num^post 0) (= PPBunlockInits^post 1)) (= DName^0 DName^post)) (= IoCreateDevice^0 IoCreateDevice^post)) (= PPBlockInits^0 PPBlockInits^post)) (= Pdo^0 Pdo^post)) (= Pdolen^0 Pdolen^post)) (= conditional^0 conditional^post)) (= i^0 i^post)) (= status^0 status^post)))
    (cfg_trans2 pc^0 l5 pc^post l1 (and (and (and (and (and (and (and (and (and (and (<= (+ 0 DName^0) 0) (= DName^0 DName^post)) (= IoCreateDevice^0 IoCreateDevice^post)) (= PPBlockInits^0 PPBlockInits^post)) (= PPBunlockInits^0 PPBunlockInits^post)) (= Pdo^0 Pdo^post)) (= Pdolen^0 Pdolen^post)) (= conditional^0 conditional^post)) (= i^0 i^post)) (= num^0 num^post)) (= status^0 status^post)))
    (cfg_trans2 pc^0 l5 pc^post l3 (and (and (and (and (and (and (and (and (and (and (<= 1 (+ 0 DName^0)) (= IoCreateDevice^post 1)) (= conditional^post conditional^post)) (= DName^0 DName^post)) (= PPBlockInits^0 PPBlockInits^post)) (= PPBunlockInits^0 PPBunlockInits^post)) (= Pdo^0 Pdo^post)) (= Pdolen^0 Pdolen^post)) (= i^0 i^post)) (= num^0 num^post)) (= status^0 status^post)))
    (cfg_trans2 pc^0 l2 pc^post l1 (and (and (and (and (and (and (and (and (and (and (<= (+ 0 Pdolen^0) (+ 0 i^0)) (= status^post 0)) (= DName^0 DName^post)) (= IoCreateDevice^0 IoCreateDevice^post)) (= PPBlockInits^0 PPBlockInits^post)) (= PPBunlockInits^0 PPBunlockInits^post)) (= Pdo^0 Pdo^post)) (= Pdolen^0 Pdolen^post)) (= conditional^0 conditional^post)) (= i^0 i^post)) (= num^0 num^post)))
    (cfg_trans2 pc^0 l2 pc^post l5 (and (and (and (and (and (and (and (and (and (and (= PPBlockInits^post 1) (<= (+ 1 i^0) (+ 0 Pdolen^0))) (= DName^post DName^post)) (= status^post 0)) (= IoCreateDevice^0 IoCreateDevice^post)) (= PPBunlockInits^0 PPBunlockInits^post)) (= Pdo^0 Pdo^post)) (= Pdolen^0 Pdolen^post)) (= conditional^0 conditional^post)) (= i^0 i^post)) (= num^0 num^post)))
    (cfg_trans2 pc^0 l6 pc^post l2 (and (and (and (and (and (and (and (and (and (= i^post i^post) (= Pdolen^post Pdolen^post)) (= PPBunlockInits^post 0)) (= PPBlockInits^post 1)) (= status^post 0)) (= IoCreateDevice^post 0)) (= DName^0 DName^post)) (= Pdo^0 Pdo^post)) (= conditional^0 conditional^post)) (= num^0 num^post)))
    (cfg_trans2 pc^0 l7 pc^post l6 (and (and (and (and (and (and (and (and (and (= DName^0 DName^post) (= IoCreateDevice^0 IoCreateDevice^post)) (= PPBlockInits^0 PPBlockInits^post)) (= PPBunlockInits^0 PPBunlockInits^post)) (= Pdo^0 Pdo^post)) (= Pdolen^0 Pdolen^post)) (= conditional^0 conditional^post)) (= i^0 i^post)) (= num^0 num^post)) (= status^0 status^post)))
  )
)
