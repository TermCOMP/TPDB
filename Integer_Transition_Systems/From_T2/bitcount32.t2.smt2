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

(define-fun init_main ( (pc^0 Loc) (__const_8^0 Int) (nI6^0 Int) (nX4^0 Int) (nX9^0 Int) (nX^0 Int) (res10^0 Int) (res5^0 Int) (ret_nBC18^0 Int) (ret_nBC211^0 Int) (tmp7^0 Int) (tmp^0 Int) (tmp___0^0 Int) ) Bool
  (cfg_init pc^0 l6 true))

(define-fun next_main (
                 (pc^0 Loc) (__const_8^0 Int) (nI6^0 Int) (nX4^0 Int) (nX9^0 Int) (nX^0 Int) (res10^0 Int) (res5^0 Int) (ret_nBC18^0 Int) (ret_nBC211^0 Int) (tmp7^0 Int) (tmp^0 Int) (tmp___0^0 Int)
                 (pc^post Loc) (__const_8^post Int) (nI6^post Int) (nX4^post Int) (nX9^post Int) (nX^post Int) (res10^post Int) (res5^post Int) (ret_nBC18^post Int) (ret_nBC211^post Int) (tmp7^post Int) (tmp^post Int) (tmp___0^post Int)
             ) Bool
  (or
    (cfg_trans2 pc^0 l0 pc^post l1 (and (and (and (and (and (and (and (and (and (and (and (= res5^post (+ (+ 0 res5^0) tmp7^0)) (= nI6^post (+ 1 nI6^0))) (= __const_8^0 __const_8^post)) (= nX^0 nX^post)) (= nX4^0 nX4^post)) (= nX9^0 nX9^post)) (= res10^0 res10^post)) (= ret_nBC18^0 ret_nBC18^post)) (= ret_nBC211^0 ret_nBC211^post)) (= tmp^0 tmp^post)) (= tmp7^0 tmp7^post)) (= tmp___0^0 tmp___0^post)))
    (cfg_trans2 pc^0 l2 pc^post l0 (and (and (and (and (and (and (and (and (and (and (and (= tmp7^post 0) (= __const_8^0 __const_8^post)) (= nI6^0 nI6^post)) (= nX^0 nX^post)) (= nX4^0 nX4^post)) (= nX9^0 nX9^post)) (= res10^0 res10^post)) (= res5^0 res5^post)) (= ret_nBC18^0 ret_nBC18^post)) (= ret_nBC211^0 ret_nBC211^post)) (= tmp^0 tmp^post)) (= tmp___0^0 tmp___0^post)))
    (cfg_trans2 pc^0 l2 pc^post l0 (and (and (and (and (and (and (and (and (and (and (and (= tmp7^post 1) (= __const_8^0 __const_8^post)) (= nI6^0 nI6^post)) (= nX^0 nX^post)) (= nX4^0 nX4^post)) (= nX9^0 nX9^post)) (= res10^0 res10^post)) (= res5^0 res5^post)) (= ret_nBC18^0 ret_nBC18^post)) (= ret_nBC211^0 ret_nBC211^post)) (= tmp^0 tmp^post)) (= tmp___0^0 tmp___0^post)))
    (cfg_trans2 pc^0 l3 pc^post l4 (exists ( (res10^1 Int) (res10^2 Int) (res10^3 Int) (res10^4 Int) (res10^5 Int) ) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (<= (+ 0 (* 4 __const_8^0)) (+ 0 nI6^0)) (= ret_nBC18^post (+ 0 res5^0))) (= tmp^post (+ 0 ret_nBC18^post))) (= nX9^post (+ 0 nX^0))) (= res10^1 (+ 0 nX9^post))) (= res10^2 res10^2)) (= res10^3 res10^3)) (= res10^4 res10^4)) (= res10^5 res10^5)) (= res10^post res10^post)) (= ret_nBC211^post (+ 0 res10^post))) (= tmp___0^post (+ 0 ret_nBC211^post))) (= __const_8^0 __const_8^post)) (= nI6^0 nI6^post)) (= nX^0 nX^post)) (= nX4^0 nX4^post)) (= res5^0 res5^post)) (= tmp7^0 tmp7^post))))
    (cfg_trans2 pc^0 l3 pc^post l2 (and (and (and (and (and (and (and (and (and (and (and (and (<= (+ 1 nI6^0) (+ 0 (* 4 __const_8^0))) (= __const_8^0 __const_8^post)) (= nI6^0 nI6^post)) (= nX^0 nX^post)) (= nX4^0 nX4^post)) (= nX9^0 nX9^post)) (= res10^0 res10^post)) (= res5^0 res5^post)) (= ret_nBC18^0 ret_nBC18^post)) (= ret_nBC211^0 ret_nBC211^post)) (= tmp^0 tmp^post)) (= tmp7^0 tmp7^post)) (= tmp___0^0 tmp___0^post)))
    (cfg_trans2 pc^0 l1 pc^post l3 (and (and (and (and (and (and (and (and (and (and (and (= __const_8^0 __const_8^post) (= nI6^0 nI6^post)) (= nX^0 nX^post)) (= nX4^0 nX4^post)) (= nX9^0 nX9^post)) (= res10^0 res10^post)) (= res5^0 res5^post)) (= ret_nBC18^0 ret_nBC18^post)) (= ret_nBC211^0 ret_nBC211^post)) (= tmp^0 tmp^post)) (= tmp7^0 tmp7^post)) (= tmp___0^0 tmp___0^post)))
    (cfg_trans2 pc^0 l5 pc^post l1 (and (and (and (and (and (and (and (and (and (and (and (= nX4^post (+ 0 nX^0)) (= res5^post 0)) (= nI6^post 0)) (= __const_8^0 __const_8^post)) (= nX^0 nX^post)) (= nX9^0 nX9^post)) (= res10^0 res10^post)) (= ret_nBC18^0 ret_nBC18^post)) (= ret_nBC211^0 ret_nBC211^post)) (= tmp^0 tmp^post)) (= tmp7^0 tmp7^post)) (= tmp___0^0 tmp___0^post)))
    (cfg_trans2 pc^0 l6 pc^post l5 (and (and (and (and (and (and (and (and (and (and (and (= __const_8^0 __const_8^post) (= nI6^0 nI6^post)) (= nX^0 nX^post)) (= nX4^0 nX4^post)) (= nX9^0 nX9^post)) (= res10^0 res10^post)) (= res5^0 res5^post)) (= ret_nBC18^0 ret_nBC18^post)) (= ret_nBC211^0 ret_nBC211^post)) (= tmp^0 tmp^post)) (= tmp7^0 tmp7^post)) (= tmp___0^0 tmp___0^post)))
  )
)
