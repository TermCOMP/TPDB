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

(define-fun init_main ( (pc^0 Loc) (__const_14^0 Int) (__const_8^0 Int) (fvalue3^0 Int) (low6^0 Int) (mid4^0 Int) (ret_binary_search7^0 Int) (tmp^0 Int) (up5^0 Int) (x2^0 Int) ) Bool
  (cfg_init pc^0 l6 true))

(define-fun next_main (
                 (pc^0 Loc) (__const_14^0 Int) (__const_8^0 Int) (fvalue3^0 Int) (low6^0 Int) (mid4^0 Int) (ret_binary_search7^0 Int) (tmp^0 Int) (up5^0 Int) (x2^0 Int)
                 (pc^post Loc) (__const_14^post Int) (__const_8^post Int) (fvalue3^post Int) (low6^post Int) (mid4^post Int) (ret_binary_search7^post Int) (tmp^post Int) (up5^post Int) (x2^post Int)
             ) Bool
  (or
    (cfg_trans2 pc^0 l0 pc^post l1 (and (and (and (and (and (and (and (and (= __const_14^0 __const_14^post) (= __const_8^0 __const_8^post)) (= fvalue3^0 fvalue3^post)) (= low6^0 low6^post)) (= mid4^0 mid4^post)) (= ret_binary_search7^0 ret_binary_search7^post)) (= tmp^0 tmp^post)) (= up5^0 up5^post)) (= x2^0 x2^post)))
    (cfg_trans2 pc^0 l0 pc^post l2 (and (and (and (and (and (and (and (and (= up5^post (+ -1 low6^0)) (= fvalue3^post fvalue3^post)) (= __const_14^0 __const_14^post)) (= __const_8^0 __const_8^post)) (= low6^0 low6^post)) (= mid4^0 mid4^post)) (= ret_binary_search7^0 ret_binary_search7^post)) (= tmp^0 tmp^post)) (= x2^0 x2^post)))
    (cfg_trans2 pc^0 l0 pc^post l1 (and (and (and (and (and (and (and (and (= __const_14^0 __const_14^post) (= __const_8^0 __const_8^post)) (= fvalue3^0 fvalue3^post)) (= low6^0 low6^post)) (= mid4^0 mid4^post)) (= ret_binary_search7^0 ret_binary_search7^post)) (= tmp^0 tmp^post)) (= up5^0 up5^post)) (= x2^0 x2^post)))
    (cfg_trans2 pc^0 l3 pc^post l4 (and (and (and (and (and (and (and (and (and (<= (+ 1 up5^0) (+ 0 low6^0)) (= ret_binary_search7^post (+ 0 fvalue3^0))) (= tmp^post (+ 0 ret_binary_search7^post))) (= __const_14^0 __const_14^post)) (= __const_8^0 __const_8^post)) (= fvalue3^0 fvalue3^post)) (= low6^0 low6^post)) (= mid4^0 mid4^post)) (= up5^0 up5^post)) (= x2^0 x2^post)))
    (cfg_trans2 pc^0 l3 pc^post l0 (and (and (and (and (and (and (and (and (and (<= (+ 0 low6^0) (+ 0 up5^0)) (= mid4^post mid4^post)) (= __const_14^0 __const_14^post)) (= __const_8^0 __const_8^post)) (= fvalue3^0 fvalue3^post)) (= low6^0 low6^post)) (= ret_binary_search7^0 ret_binary_search7^post)) (= tmp^0 tmp^post)) (= up5^0 up5^post)) (= x2^0 x2^post)))
    (cfg_trans2 pc^0 l2 pc^post l3 (and (and (and (and (and (and (and (and (= __const_14^0 __const_14^post) (= __const_8^0 __const_8^post)) (= fvalue3^0 fvalue3^post)) (= low6^0 low6^post)) (= mid4^0 mid4^post)) (= ret_binary_search7^0 ret_binary_search7^post)) (= tmp^0 tmp^post)) (= up5^0 up5^post)) (= x2^0 x2^post)))
    (cfg_trans2 pc^0 l1 pc^post l2 (and (and (and (and (and (and (and (and (= low6^post (+ 1 mid4^0)) (= __const_14^0 __const_14^post)) (= __const_8^0 __const_8^post)) (= fvalue3^0 fvalue3^post)) (= mid4^0 mid4^post)) (= ret_binary_search7^0 ret_binary_search7^post)) (= tmp^0 tmp^post)) (= up5^0 up5^post)) (= x2^0 x2^post)))
    (cfg_trans2 pc^0 l1 pc^post l2 (and (and (and (and (and (and (and (and (= up5^post (+ -1 mid4^0)) (= __const_14^0 __const_14^post)) (= __const_8^0 __const_8^post)) (= fvalue3^0 fvalue3^post)) (= low6^0 low6^post)) (= mid4^0 mid4^post)) (= ret_binary_search7^0 ret_binary_search7^post)) (= tmp^0 tmp^post)) (= x2^0 x2^post)))
    (cfg_trans2 pc^0 l5 pc^post l2 (and (and (and (and (and (and (and (and (= x2^post (+ 0 __const_8^0)) (= low6^post 0)) (= up5^post (+ 0 __const_14^0))) (= fvalue3^post -1)) (= __const_14^0 __const_14^post)) (= __const_8^0 __const_8^post)) (= mid4^0 mid4^post)) (= ret_binary_search7^0 ret_binary_search7^post)) (= tmp^0 tmp^post)))
    (cfg_trans2 pc^0 l6 pc^post l5 (and (and (and (and (and (and (and (and (= __const_14^0 __const_14^post) (= __const_8^0 __const_8^post)) (= fvalue3^0 fvalue3^post)) (= low6^0 low6^post)) (= mid4^0 mid4^post)) (= ret_binary_search7^0 ret_binary_search7^post)) (= tmp^0 tmp^post)) (= up5^0 up5^post)) (= x2^0 x2^post)))
  )
)
