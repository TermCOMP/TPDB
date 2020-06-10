(declare-sort Loc 0)
(declare-const l0 Loc)
(declare-const l2 Loc)
(declare-const l1 Loc)
(declare-const l3 Loc)
(declare-const l4 Loc)
(declare-const l5 Loc)
(declare-const l6 Loc)
(assert (distinct l0 l2 l1 l3 l4 l5 l6))

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

(define-fun init_main ( (pc^0 Loc) (delta^0 Int) (delta_new^0 Int) (deltaext^0 Int) (deltaext_new^0 Int) (deltext^0 Int) (wnt^0 Int) (wntext^0 Int) ) Bool
  (cfg_init pc^0 l6 true))

(define-fun next_main (
                 (pc^0 Loc) (delta^0 Int) (delta_new^0 Int) (deltaext^0 Int) (deltaext_new^0 Int) (deltext^0 Int) (wnt^0 Int) (wntext^0 Int)
                 (pc^post Loc) (delta^post Int) (delta_new^post Int) (deltaext^post Int) (deltaext_new^post Int) (deltext^post Int) (wnt^post Int) (wntext^post Int)
             ) Bool
  (or
    (cfg_trans2 pc^0 l0 pc^post l2 (and (and (and (and (and (and (and (<= (+ 1 delta^0) (+ 0 delta_new^0)) (= delta^0 delta^post)) (= delta_new^0 delta_new^post)) (= deltaext^0 deltaext^post)) (= deltaext_new^0 deltaext_new^post)) (= deltext^0 deltext^post)) (= wnt^0 wnt^post)) (= wntext^0 wntext^post)))
    (cfg_trans2 pc^0 l0 pc^post l2 (and (and (and (and (and (and (and (<= (+ 1 delta_new^0) (+ 0 delta^0)) (= delta^0 delta^post)) (= delta_new^0 delta_new^post)) (= deltaext^0 deltaext^post)) (= deltaext_new^0 deltaext_new^post)) (= deltext^0 deltext^post)) (= wnt^0 wnt^post)) (= wntext^0 wntext^post)))
    (cfg_trans2 pc^0 l2 pc^post l1 (and (and (and (and (and (and (= deltaext^post (+ 0 deltaext_new^0)) (= delta^post (+ 0 delta_new^0))) (= delta_new^0 delta_new^post)) (= deltaext_new^0 deltaext_new^post)) (= deltext^0 deltext^post)) (= wnt^0 wnt^post)) (= wntext^0 wntext^post)))
    (cfg_trans2 pc^0 l0 pc^post l3 (and (and (and (and (and (and (and (<= (+ 1 deltaext^0) (+ 0 deltaext_new^0)) (= delta^0 delta^post)) (= delta_new^0 delta_new^post)) (= deltaext^0 deltaext^post)) (= deltaext_new^0 deltaext_new^post)) (= deltext^0 deltext^post)) (= wnt^0 wnt^post)) (= wntext^0 wntext^post)))
    (cfg_trans2 pc^0 l0 pc^post l3 (and (and (and (and (and (and (and (<= (+ 1 deltaext_new^0) (+ 0 deltaext^0)) (= delta^0 delta^post)) (= delta_new^0 delta_new^post)) (= deltaext^0 deltaext^post)) (= deltaext_new^0 deltaext_new^post)) (= deltext^0 deltext^post)) (= wnt^0 wnt^post)) (= wntext^0 wntext^post)))
    (cfg_trans2 pc^0 l3 pc^post l1 (and (and (and (and (and (and (= deltaext^post (+ 0 deltaext_new^0)) (= delta^post (+ 0 delta_new^0))) (= delta_new^0 delta_new^post)) (= deltaext_new^0 deltaext_new^post)) (= deltext^0 deltext^post)) (= wnt^0 wnt^post)) (= wntext^0 wntext^post)))
    (cfg_trans2 pc^0 l4 pc^post l0 (and (and (and (and (and (and (and (and (<= (+ (+ 0 deltaext^0) wntext^0) (+ -1 (* 2 delta^0))) (<= (+ -1 (* 2 delta^0)) (+ (+ 0 deltaext^0) wntext^0))) (= delta_new^post (+ 0 delta^0))) (= delta^0 delta^post)) (= deltaext^0 deltaext^post)) (= deltaext_new^0 deltaext_new^post)) (= deltext^0 deltext^post)) (= wnt^0 wnt^post)) (= wntext^0 wntext^post)))
    (cfg_trans2 pc^0 l4 pc^post l0 (and (and (and (and (and (and (and (and (<= (+ (+ 0 deltaext^0) wntext^0) (+ 0 (* 2 delta^0))) (<= (+ 0 (* 2 delta^0)) (+ (+ 0 deltaext^0) wntext^0))) (= delta_new^post (+ 0 delta^0))) (= delta^0 delta^post)) (= deltaext^0 deltaext^post)) (= deltaext_new^0 deltaext_new^post)) (= deltext^0 deltext^post)) (= wnt^0 wnt^post)) (= wntext^0 wntext^post)))
    (cfg_trans2 pc^0 l4 pc^post l0 (and (and (and (and (and (and (and (<= (+ (+ 1 deltaext^0) wntext^0) (+ -1 (* 2 delta^0))) (= delta_new^post (+ -1 delta^0))) (= delta^0 delta^post)) (= deltaext^0 deltaext^post)) (= deltaext_new^0 deltaext_new^post)) (= deltext^0 deltext^post)) (= wnt^0 wnt^post)) (= wntext^0 wntext^post)))
    (cfg_trans2 pc^0 l4 pc^post l0 (and (and (and (and (and (and (and (<= (+ 1 (* 2 delta^0)) (+ (+ 0 deltaext^0) wntext^0)) (= delta_new^post (+ 1 delta^0))) (= delta^0 delta^post)) (= deltaext^0 deltaext^post)) (= deltaext_new^0 deltaext_new^post)) (= deltext^0 deltext^post)) (= wnt^0 wnt^post)) (= wntext^0 wntext^post)))
    (cfg_trans2 pc^0 l1 pc^post l4 (and (and (and (and (and (and (and (and (<= (+ 2 wnt^0) (+ -1 (* 2 deltaext^0))) (<= (+ -1 (* 2 deltaext^0)) (+ 2 wnt^0))) (= deltaext_new^post (+ 0 deltaext^0))) (= delta^0 delta^post)) (= delta_new^0 delta_new^post)) (= deltaext^0 deltaext^post)) (= deltext^0 deltext^post)) (= wnt^0 wnt^post)) (= wntext^0 wntext^post)))
    (cfg_trans2 pc^0 l1 pc^post l4 (and (and (and (and (and (and (and (and (<= (+ 2 wnt^0) (+ 0 (* 2 deltaext^0))) (<= (+ 0 (* 2 deltaext^0)) (+ 2 wnt^0))) (= deltaext_new^post (+ 0 deltaext^0))) (= delta^0 delta^post)) (= delta_new^0 delta_new^post)) (= deltaext^0 deltaext^post)) (= deltext^0 deltext^post)) (= wnt^0 wnt^post)) (= wntext^0 wntext^post)))
    (cfg_trans2 pc^0 l1 pc^post l4 (and (and (and (and (and (and (and (<= (+ 3 wnt^0) (+ -1 (* 2 deltaext^0))) (= deltaext_new^post (+ -1 deltaext^0))) (= delta^0 delta^post)) (= delta_new^0 delta_new^post)) (= deltaext^0 deltaext^post)) (= deltext^0 deltext^post)) (= wnt^0 wnt^post)) (= wntext^0 wntext^post)))
    (cfg_trans2 pc^0 l1 pc^post l4 (and (and (and (and (and (and (and (<= (+ 1 (* 2 deltaext^0)) (+ 2 wnt^0)) (= deltaext_new^post (+ 1 deltaext^0))) (= delta^0 delta^post)) (= delta_new^0 delta_new^post)) (= deltaext^0 deltaext^post)) (= deltext^0 deltext^post)) (= wnt^0 wnt^post)) (= wntext^0 wntext^post)))
    (cfg_trans2 pc^0 l5 pc^post l1 (and (and (and (and (and (and (and (and (and (and (and (and (and (and (<= 0 (+ 0 wnt^0)) (<= (+ 0 wnt^0) 3)) (<= 0 (+ 0 deltaext^0))) (<= (+ 0 deltext^0) 3)) (<= 0 (+ 0 wntext^0))) (<= (+ 0 wntext^0) 3)) (<= 0 (+ 0 delta^0))) (<= (+ 0 delta^0) 3)) (= delta^0 delta^post)) (= delta_new^0 delta_new^post)) (= deltaext^0 deltaext^post)) (= deltaext_new^0 deltaext_new^post)) (= deltext^0 deltext^post)) (= wnt^0 wnt^post)) (= wntext^0 wntext^post)))
    (cfg_trans2 pc^0 l6 pc^post l5 (and (and (and (and (and (and (= delta^0 delta^post) (= delta_new^0 delta_new^post)) (= deltaext^0 deltaext^post)) (= deltaext_new^0 deltaext_new^post)) (= deltext^0 deltext^post)) (= wnt^0 wnt^post)) (= wntext^0 wntext^post)))
  )
)
