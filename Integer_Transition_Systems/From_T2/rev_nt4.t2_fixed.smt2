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

(define-fun init_main ( (pc^0 Loc) (___patmp1^0 Int) (___patmp2^0 Int) (k_208^0 Int) (k_243^0 Int) (len_263^0 Int) ) Bool
  (cfg_init pc^0 l4 true))

(define-fun next_main (
                 (pc^0 Loc) (___patmp1^0 Int) (___patmp2^0 Int) (k_208^0 Int) (k_243^0 Int) (len_263^0 Int)
                 (pc^post Loc) (___patmp1^post Int) (___patmp2^post Int) (k_208^post Int) (k_243^post Int) (len_263^post Int)
             ) Bool
  (or
    (cfg_trans2 pc^0 l0 pc^post l1 (and (and (and (and (and (and (<= 0 (+ 0 k_208^0)) (= ___patmp1^post 1)) (= ___patmp2^post (+ 0 k_208^0))) (= len_263^post (+ 0 ___patmp1^post))) (= k_243^post (+ 0 ___patmp2^post))) (<= 0 (+ -1 k_243^post))) (= k_208^0 k_208^post)))
    (cfg_trans2 pc^0 l2 pc^post l3 (and (and (and (and (= ___patmp1^0 ___patmp1^post) (= ___patmp2^0 ___patmp2^post)) (= k_208^0 k_208^post)) (= k_243^0 k_243^post)) (= len_263^0 len_263^post)))
    (cfg_trans2 pc^0 l4 pc^post l0 (and (and (and (and (= ___patmp1^0 ___patmp1^post) (= ___patmp2^0 ___patmp2^post)) (= k_208^0 k_208^post)) (= k_243^0 k_243^post)) (= len_263^0 len_263^post)))
  )
)
