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

(define-fun init_main ( (pc^0 Loc) (Result_4^0 Int) (___cil_tmp2_6^0 Int) (___cil_tmp6_12^0 Int) (maxRetries_9^0 Int) (retryCount_10^0 Int) (selected_11^0 Int) (x_5^0 Int) ) Bool
  (cfg_init pc^0 l6 true))

(define-fun next_main (
                 (pc^0 Loc) (Result_4^0 Int) (___cil_tmp2_6^0 Int) (___cil_tmp6_12^0 Int) (maxRetries_9^0 Int) (retryCount_10^0 Int) (selected_11^0 Int) (x_5^0 Int)
                 (pc^post Loc) (Result_4^post Int) (___cil_tmp2_6^post Int) (___cil_tmp6_12^post Int) (maxRetries_9^post Int) (retryCount_10^post Int) (selected_11^post Int) (x_5^post Int)
             ) Bool
  (or
    (cfg_trans2 pc^0 l0 pc^post l1 (exists ( (Result_4^1 Int) ) (and (and (and (and (and (and (and (= ___cil_tmp2_6^post (+ 0 x_5^0)) (= Result_4^1 (+ 0 ___cil_tmp2_6^post))) (= selected_11^post (+ 0 Result_4^1))) (= Result_4^post Result_4^post)) (= ___cil_tmp6_12^0 ___cil_tmp6_12^post)) (= maxRetries_9^0 maxRetries_9^post)) (= retryCount_10^0 retryCount_10^post)) (= x_5^0 x_5^post))))
    (cfg_trans2 pc^0 l2 pc^post l1 (exists ( (Result_4^1 Int) ) (and (and (and (and (and (and (and (= ___cil_tmp2_6^post (+ 0 x_5^0)) (= Result_4^1 (+ 0 ___cil_tmp2_6^post))) (= selected_11^post (+ 0 Result_4^1))) (= Result_4^post Result_4^post)) (= ___cil_tmp6_12^0 ___cil_tmp6_12^post)) (= maxRetries_9^0 maxRetries_9^post)) (= retryCount_10^0 retryCount_10^post)) (= x_5^0 x_5^post))))
    (cfg_trans2 pc^0 l3 pc^post l4 (and (and (and (and (and (and (= ___cil_tmp6_12^post (+ 0 selected_11^0)) (= Result_4^post (+ 0 ___cil_tmp6_12^post))) (= ___cil_tmp2_6^0 ___cil_tmp2_6^post)) (= maxRetries_9^0 maxRetries_9^post)) (= retryCount_10^0 retryCount_10^post)) (= selected_11^0 selected_11^post)) (= x_5^0 x_5^post)))
    (cfg_trans2 pc^0 l3 pc^post l1 (exists ( (Result_4^1 Int) ) (and (and (and (and (and (and (and (= ___cil_tmp2_6^post (+ 0 x_5^0)) (= Result_4^1 (+ 0 ___cil_tmp2_6^post))) (= selected_11^post (+ 0 Result_4^1))) (= Result_4^post Result_4^post)) (= ___cil_tmp6_12^0 ___cil_tmp6_12^post)) (= maxRetries_9^0 maxRetries_9^post)) (= retryCount_10^0 retryCount_10^post)) (= x_5^0 x_5^post))))
    (cfg_trans2 pc^0 l1 pc^post l3 (and (and (and (and (and (and (= retryCount_10^post (+ 1 retryCount_10^0)) (= Result_4^0 Result_4^post)) (= ___cil_tmp2_6^0 ___cil_tmp2_6^post)) (= ___cil_tmp6_12^0 ___cil_tmp6_12^post)) (= maxRetries_9^0 maxRetries_9^post)) (= selected_11^0 selected_11^post)) (= x_5^0 x_5^post)))
    (cfg_trans2 pc^0 l5 pc^post l3 (and (and (and (and (and (and (= maxRetries_9^post 4) (= retryCount_10^post 0)) (= selected_11^post 0)) (= Result_4^0 Result_4^post)) (= ___cil_tmp2_6^0 ___cil_tmp2_6^post)) (= ___cil_tmp6_12^0 ___cil_tmp6_12^post)) (= x_5^0 x_5^post)))
    (cfg_trans2 pc^0 l6 pc^post l5 (and (and (and (and (and (and (= Result_4^0 Result_4^post) (= ___cil_tmp2_6^0 ___cil_tmp2_6^post)) (= ___cil_tmp6_12^0 ___cil_tmp6_12^post)) (= maxRetries_9^0 maxRetries_9^post)) (= retryCount_10^0 retryCount_10^post)) (= selected_11^0 selected_11^post)) (= x_5^0 x_5^post)))
  )
)
