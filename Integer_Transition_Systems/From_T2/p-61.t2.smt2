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

(define-fun init_main ( (pc^0 Loc) (Result_4^0 Int) (__cil_tmp4_8^0 Int) (__const_1000^0 Int) (__const_101^0 Int) (__const_9^0 Int) (__retres3_7^0 Int) (i_5^0 Int) (x_6^0 Int) ) Bool
  (cfg_init pc^0 l4 true))

(define-fun next_main (
                 (pc^0 Loc) (Result_4^0 Int) (__cil_tmp4_8^0 Int) (__const_1000^0 Int) (__const_101^0 Int) (__const_9^0 Int) (__retres3_7^0 Int) (i_5^0 Int) (x_6^0 Int)
                 (pc^post Loc) (Result_4^post Int) (__cil_tmp4_8^post Int) (__const_1000^post Int) (__const_101^post Int) (__const_9^post Int) (__retres3_7^post Int) (i_5^post Int) (x_6^post Int)
             ) Bool
  (or
    (cfg_trans2 pc^0 l0 pc^post l1 (and (and (and (and (and (and (and (and (<= (+ (+ 1 __const_9^0) (* -1 x_6^0)) 0) (= __retres3_7^post 0)) (= __cil_tmp4_8^post (+ 0 __retres3_7^post))) (= Result_4^post (+ 0 __cil_tmp4_8^post))) (= __const_1000^0 __const_1000^post)) (= __const_101^0 __const_101^post)) (= __const_9^0 __const_9^post)) (= i_5^0 i_5^post)) (= x_6^0 x_6^post)))
    (cfg_trans2 pc^0 l0 pc^post l1 (and (and (and (and (and (and (and (and (and (<= 0 (+ (+ 0 __const_9^0) (* -1 x_6^0))) (<= (+ (+ 1 (* -1 __const_101^0)) i_5^0) 0)) (= __retres3_7^post 0)) (= __cil_tmp4_8^post (+ 0 __retres3_7^post))) (= Result_4^post (+ 0 __cil_tmp4_8^post))) (= __const_1000^0 __const_1000^post)) (= __const_101^0 __const_101^post)) (= __const_9^0 __const_9^post)) (= i_5^0 i_5^post)) (= x_6^0 x_6^post)))
    (cfg_trans2 pc^0 l0 pc^post l2 (and (and (and (and (and (and (and (and (and (<= 0 (+ (+ 0 __const_9^0) (* -1 x_6^0))) (<= 0 (+ (+ 0 (* -1 __const_101^0)) i_5^0))) (= i_5^post (+ -1 i_5^0))) (= Result_4^0 Result_4^post)) (= __cil_tmp4_8^0 __cil_tmp4_8^post)) (= __const_1000^0 __const_1000^post)) (= __const_101^0 __const_101^post)) (= __const_9^0 __const_9^post)) (= __retres3_7^0 __retres3_7^post)) (= x_6^0 x_6^post)))
    (cfg_trans2 pc^0 l2 pc^post l0 (and (and (and (and (and (and (and (= Result_4^0 Result_4^post) (= __cil_tmp4_8^0 __cil_tmp4_8^post)) (= __const_1000^0 __const_1000^post)) (= __const_101^0 __const_101^post)) (= __const_9^0 __const_9^post)) (= __retres3_7^0 __retres3_7^post)) (= i_5^0 i_5^post)) (= x_6^0 x_6^post)))
    (cfg_trans2 pc^0 l3 pc^post l0 (and (and (and (and (and (and (and (= i_5^post (+ 0 __const_1000^0)) (= Result_4^0 Result_4^post)) (= __cil_tmp4_8^0 __cil_tmp4_8^post)) (= __const_1000^0 __const_1000^post)) (= __const_101^0 __const_101^post)) (= __const_9^0 __const_9^post)) (= __retres3_7^0 __retres3_7^post)) (= x_6^0 x_6^post)))
    (cfg_trans2 pc^0 l4 pc^post l3 (and (and (and (and (and (and (and (= Result_4^0 Result_4^post) (= __cil_tmp4_8^0 __cil_tmp4_8^post)) (= __const_1000^0 __const_1000^post)) (= __const_101^0 __const_101^post)) (= __const_9^0 __const_9^post)) (= __retres3_7^0 __retres3_7^post)) (= i_5^0 i_5^post)) (= x_6^0 x_6^post)))
  )
)
