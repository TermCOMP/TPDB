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

(define-fun init_main ( (pc^0 Loc) (data16^0 Int) (data18^0 Int) (i6^0 Int) (ret17^0 Int) (ret28^0 Int) (ret_f19^0 Int) (ret_f212^0 Int) (ret_f215^0 Int) (tmp^0 Int) (val10^0 Int) (val13^0 Int) ) Bool
  (cfg_init pc^0 l12 true))

(define-fun next_main (
                 (pc^0 Loc) (data16^0 Int) (data18^0 Int) (i6^0 Int) (ret17^0 Int) (ret28^0 Int) (ret_f19^0 Int) (ret_f212^0 Int) (ret_f215^0 Int) (tmp^0 Int) (val10^0 Int) (val13^0 Int)
                 (pc^post Loc) (data16^post Int) (data18^post Int) (i6^post Int) (ret17^post Int) (ret28^post Int) (ret_f19^post Int) (ret_f212^post Int) (ret_f215^post Int) (tmp^post Int) (val10^post Int) (val13^post Int)
             ) Bool
  (or
    (cfg_trans2 pc^0 l0 pc^post l1 (and (and (and (and (and (and (and (and (and (and (= i6^post i6^post) (= data16^0 data16^post)) (= data18^0 data18^post)) (= ret17^0 ret17^post)) (= ret28^0 ret28^post)) (= ret_f19^0 ret_f19^post)) (= ret_f212^0 ret_f212^post)) (= ret_f215^0 ret_f215^post)) (= tmp^0 tmp^post)) (= val10^0 val10^post)) (= val13^0 val13^post)))
    (cfg_trans2 pc^0 l0 pc^post l2 (and (and (and (and (and (and (and (and (and (and (= ret_f19^post 1) (= data16^0 data16^post)) (= data18^0 data18^post)) (= i6^0 i6^post)) (= ret17^0 ret17^post)) (= ret28^0 ret28^post)) (= ret_f212^0 ret_f212^post)) (= ret_f215^0 ret_f215^post)) (= tmp^0 tmp^post)) (= val10^0 val10^post)) (= val13^0 val13^post)))
    (cfg_trans2 pc^0 l2 pc^post l3 (and (and (and (and (and (and (and (and (and (and (= tmp^post (+ 0 ret_f19^0)) (= data16^0 data16^post)) (= data18^0 data18^post)) (= i6^0 i6^post)) (= ret17^0 ret17^post)) (= ret28^0 ret28^post)) (= ret_f19^0 ret_f19^post)) (= ret_f212^0 ret_f212^post)) (= ret_f215^0 ret_f215^post)) (= val10^0 val10^post)) (= val13^0 val13^post)))
    (cfg_trans2 pc^0 l4 pc^post l2 (and (and (and (and (and (and (and (and (and (and (= ret_f19^post (+ 0 ret28^0)) (= data16^0 data16^post)) (= data18^0 data18^post)) (= i6^0 i6^post)) (= ret17^0 ret17^post)) (= ret28^0 ret28^post)) (= ret_f212^0 ret_f212^post)) (= ret_f215^0 ret_f215^post)) (= tmp^0 tmp^post)) (= val10^0 val10^post)) (= val13^0 val13^post)))
    (cfg_trans2 pc^0 l5 pc^post l2 (and (and (and (and (and (and (and (and (and (and (and (and (<= (+ 0 ret28^0) 0) (<= 0 (+ 0 ret28^0))) (= ret_f19^post 0)) (= data16^0 data16^post)) (= data18^0 data18^post)) (= i6^0 i6^post)) (= ret17^0 ret17^post)) (= ret28^0 ret28^post)) (= ret_f212^0 ret_f212^post)) (= ret_f215^0 ret_f215^post)) (= tmp^0 tmp^post)) (= val10^0 val10^post)) (= val13^0 val13^post)))
    (cfg_trans2 pc^0 l5 pc^post l4 (and (and (and (and (and (and (and (and (and (and (and (<= 1 (+ 0 ret28^0)) (= data16^0 data16^post)) (= data18^0 data18^post)) (= i6^0 i6^post)) (= ret17^0 ret17^post)) (= ret28^0 ret28^post)) (= ret_f19^0 ret_f19^post)) (= ret_f212^0 ret_f212^post)) (= ret_f215^0 ret_f215^post)) (= tmp^0 tmp^post)) (= val10^0 val10^post)) (= val13^0 val13^post)))
    (cfg_trans2 pc^0 l5 pc^post l4 (and (and (and (and (and (and (and (and (and (and (and (<= (+ 1 ret28^0) 0) (= data16^0 data16^post)) (= data18^0 data18^post)) (= i6^0 i6^post)) (= ret17^0 ret17^post)) (= ret28^0 ret28^post)) (= ret_f19^0 ret_f19^post)) (= ret_f212^0 ret_f212^post)) (= ret_f215^0 ret_f215^post)) (= tmp^0 tmp^post)) (= val10^0 val10^post)) (= val13^0 val13^post)))
    (cfg_trans2 pc^0 l6 pc^post l0 (and (and (and (and (and (and (and (and (and (and (= data16^0 data16^post) (= data18^0 data18^post)) (= i6^0 i6^post)) (= ret17^0 ret17^post)) (= ret28^0 ret28^post)) (= ret_f19^0 ret_f19^post)) (= ret_f212^0 ret_f212^post)) (= ret_f215^0 ret_f215^post)) (= tmp^0 tmp^post)) (= val10^0 val10^post)) (= val13^0 val13^post)))
    (cfg_trans2 pc^0 l6 pc^post l3 (and (and (and (and (and (and (and (and (and (and (= data16^0 data16^post) (= data18^0 data18^post)) (= i6^0 i6^post)) (= ret17^0 ret17^post)) (= ret28^0 ret28^post)) (= ret_f19^0 ret_f19^post)) (= ret_f212^0 ret_f212^post)) (= ret_f215^0 ret_f215^post)) (= tmp^0 tmp^post)) (= val10^0 val10^post)) (= val13^0 val13^post)))
    (cfg_trans2 pc^0 l7 pc^post l2 (and (and (and (and (and (and (and (and (and (and (= ret_f19^post (+ 0 ret17^0)) (= data16^0 data16^post)) (= data18^0 data18^post)) (= i6^0 i6^post)) (= ret17^0 ret17^post)) (= ret28^0 ret28^post)) (= ret_f212^0 ret_f212^post)) (= ret_f215^0 ret_f215^post)) (= tmp^0 tmp^post)) (= val10^0 val10^post)) (= val13^0 val13^post)))
    (cfg_trans2 pc^0 l8 pc^post l1 (and (and (and (and (and (and (and (and (and (and (and (and (<= (+ 0 ret17^0) 0) (<= 0 (+ 0 ret17^0))) (= i6^post (+ -1 i6^0))) (= data16^0 data16^post)) (= data18^0 data18^post)) (= ret17^0 ret17^post)) (= ret28^0 ret28^post)) (= ret_f19^0 ret_f19^post)) (= ret_f212^0 ret_f212^post)) (= ret_f215^0 ret_f215^post)) (= tmp^0 tmp^post)) (= val10^0 val10^post)) (= val13^0 val13^post)))
    (cfg_trans2 pc^0 l8 pc^post l7 (and (and (and (and (and (and (and (and (and (and (and (<= 1 (+ 0 ret17^0)) (= data16^0 data16^post)) (= data18^0 data18^post)) (= i6^0 i6^post)) (= ret17^0 ret17^post)) (= ret28^0 ret28^post)) (= ret_f19^0 ret_f19^post)) (= ret_f212^0 ret_f212^post)) (= ret_f215^0 ret_f215^post)) (= tmp^0 tmp^post)) (= val10^0 val10^post)) (= val13^0 val13^post)))
    (cfg_trans2 pc^0 l8 pc^post l7 (and (and (and (and (and (and (and (and (and (and (and (<= (+ 1 ret17^0) 0) (= data16^0 data16^post)) (= data18^0 data18^post)) (= i6^0 i6^post)) (= ret17^0 ret17^post)) (= ret28^0 ret28^post)) (= ret_f19^0 ret_f19^post)) (= ret_f212^0 ret_f212^post)) (= ret_f215^0 ret_f215^post)) (= tmp^0 tmp^post)) (= val10^0 val10^post)) (= val13^0 val13^post)))
    (cfg_trans2 pc^0 l1 pc^post l9 (and (and (and (and (and (and (and (and (and (and (= data16^0 data16^post) (= data18^0 data18^post)) (= i6^0 i6^post)) (= ret17^0 ret17^post)) (= ret28^0 ret28^post)) (= ret_f19^0 ret_f19^post)) (= ret_f212^0 ret_f212^post)) (= ret_f215^0 ret_f215^post)) (= tmp^0 tmp^post)) (= val10^0 val10^post)) (= val13^0 val13^post)))
    (cfg_trans2 pc^0 l10 pc^post l8 (and (and (and (and (and (and (and (and (and (and (= val10^post val10^post) (= data16^post (+ 0 val10^post))) (= ret_f212^post 0)) (= ret17^post (+ 0 ret_f212^post))) (= data18^0 data18^post)) (= i6^0 i6^post)) (= ret28^0 ret28^post)) (= ret_f19^0 ret_f19^post)) (= ret_f215^0 ret_f215^post)) (= tmp^0 tmp^post)) (= val13^0 val13^post)))
    (cfg_trans2 pc^0 l9 pc^post l5 (and (and (and (and (and (and (and (and (and (and (and (and (<= (+ 0 i6^0) 0) (<= 0 (+ 0 i6^0))) (= val13^post val13^post)) (= data18^post (+ 0 val13^post))) (= ret_f215^post 0)) (= ret28^post (+ 0 ret_f215^post))) (= data16^0 data16^post)) (= i6^0 i6^post)) (= ret17^0 ret17^post)) (= ret_f19^0 ret_f19^post)) (= ret_f212^0 ret_f212^post)) (= tmp^0 tmp^post)) (= val10^0 val10^post)))
    (cfg_trans2 pc^0 l9 pc^post l10 (and (and (and (and (and (and (and (and (and (and (and (<= 1 (+ 0 i6^0)) (= data16^0 data16^post)) (= data18^0 data18^post)) (= i6^0 i6^post)) (= ret17^0 ret17^post)) (= ret28^0 ret28^post)) (= ret_f19^0 ret_f19^post)) (= ret_f212^0 ret_f212^post)) (= ret_f215^0 ret_f215^post)) (= tmp^0 tmp^post)) (= val10^0 val10^post)) (= val13^0 val13^post)))
    (cfg_trans2 pc^0 l9 pc^post l10 (and (and (and (and (and (and (and (and (and (and (and (<= (+ 1 i6^0) 0) (= data16^0 data16^post)) (= data18^0 data18^post)) (= i6^0 i6^post)) (= ret17^0 ret17^post)) (= ret28^0 ret28^post)) (= ret_f19^0 ret_f19^post)) (= ret_f212^0 ret_f212^post)) (= ret_f215^0 ret_f215^post)) (= tmp^0 tmp^post)) (= val10^0 val10^post)) (= val13^0 val13^post)))
    (cfg_trans2 pc^0 l11 pc^post l6 (and (and (and (and (and (and (and (and (and (and (= data16^0 data16^post) (= data18^0 data18^post)) (= i6^0 i6^post)) (= ret17^0 ret17^post)) (= ret28^0 ret28^post)) (= ret_f19^0 ret_f19^post)) (= ret_f212^0 ret_f212^post)) (= ret_f215^0 ret_f215^post)) (= tmp^0 tmp^post)) (= val10^0 val10^post)) (= val13^0 val13^post)))
    (cfg_trans2 pc^0 l12 pc^post l11 (and (and (and (and (and (and (and (and (and (and (= data16^0 data16^post) (= data18^0 data18^post)) (= i6^0 i6^post)) (= ret17^0 ret17^post)) (= ret28^0 ret28^post)) (= ret_f19^0 ret_f19^post)) (= ret_f212^0 ret_f212^post)) (= ret_f215^0 ret_f215^post)) (= tmp^0 tmp^post)) (= val10^0 val10^post)) (= val13^0 val13^post)))
  )
)
