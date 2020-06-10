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

(define-fun init_main ( (pc^0 Loc) (Result_4^0 Int) (__cil_tmp5_9^0 Int) (a_10^0 Int) (a_178^0 Int) (k_121^0 Int) (k_83^0 Int) (len_181^0 Int) (len_54^0 Int) (lt_15^0 Int) (tmp_8^0 Int) (x_12^0 Int) (x_13^0 Int) (x_7^0 Int) (y_11^0 Int) (y_14^0 Int) ) Bool
  (cfg_init pc^0 l7 true))

(define-fun next_main (
                 (pc^0 Loc) (Result_4^0 Int) (__cil_tmp5_9^0 Int) (a_10^0 Int) (a_178^0 Int) (k_121^0 Int) (k_83^0 Int) (len_181^0 Int) (len_54^0 Int) (lt_15^0 Int) (tmp_8^0 Int) (x_12^0 Int) (x_13^0 Int) (x_7^0 Int) (y_11^0 Int) (y_14^0 Int)
                 (pc^post Loc) (Result_4^post Int) (__cil_tmp5_9^post Int) (a_10^post Int) (a_178^post Int) (k_121^post Int) (k_83^post Int) (len_181^post Int) (len_54^post Int) (lt_15^post Int) (tmp_8^post Int) (x_12^post Int) (x_13^post Int) (x_7^post Int) (y_11^post Int) (y_14^post Int)
             ) Bool
  (or
    (cfg_trans2 pc^0 l0 pc^post l1 (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (<= 0 (+ 0 k_121^0)) (= x_12^post (+ 0 a_10^0))) (<= (+ 1 y_11^0) (+ 0 x_12^post))) (= Result_4^0 Result_4^post)) (= __cil_tmp5_9^0 __cil_tmp5_9^post)) (= a_10^0 a_10^post)) (= a_178^0 a_178^post)) (= k_121^0 k_121^post)) (= k_83^0 k_83^post)) (= len_181^0 len_181^post)) (= len_54^0 len_54^post)) (= lt_15^0 lt_15^post)) (= tmp_8^0 tmp_8^post)) (= x_13^0 x_13^post)) (= x_7^0 x_7^post)) (= y_11^0 y_11^post)) (= y_14^0 y_14^post)))
    (cfg_trans2 pc^0 l0 pc^post l1 (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (<= 0 (+ 0 k_121^0)) (= x_12^post (+ 0 a_10^0))) (<= (+ 1 x_12^post) (+ 0 y_11^0))) (= Result_4^0 Result_4^post)) (= __cil_tmp5_9^0 __cil_tmp5_9^post)) (= a_10^0 a_10^post)) (= a_178^0 a_178^post)) (= k_121^0 k_121^post)) (= k_83^0 k_83^post)) (= len_181^0 len_181^post)) (= len_54^0 len_54^post)) (= lt_15^0 lt_15^post)) (= tmp_8^0 tmp_8^post)) (= x_13^0 x_13^post)) (= x_7^0 x_7^post)) (= y_11^0 y_11^post)) (= y_14^0 y_14^post)))
    (cfg_trans2 pc^0 l2 pc^post l0 (exists ( (Result_4^1 Int) (Result_4^2 Int) (Result_4^3 Int) (Result_4^4 Int) (Result_4^5 Int) (Result_4^6 Int) (Result_4^7 Int) (__cil_tmp5_9^1 Int) (__cil_tmp5_9^2 Int) (__cil_tmp5_9^3 Int) (tmp_8^1 Int) (tmp_8^2 Int) (tmp_8^3 Int) (x_13^1 Int) (x_13^2 Int) (x_13^3 Int) (x_13^4 Int) (x_7^1 Int) (x_7^2 Int) (x_7^3 Int) ) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= x_13^1 0) (= y_14^post 0)) (= tmp_8^1 tmp_8^1)) (= x_7^1 (+ 0 tmp_8^1))) (= __cil_tmp5_9^1 (+ 0 x_7^1))) (= Result_4^1 (+ 0 __cil_tmp5_9^1))) (= x_13^2 (+ 0 Result_4^1))) (= Result_4^2 Result_4^2)) (= tmp_8^2 tmp_8^2)) (= x_7^2 (+ 0 tmp_8^2))) (= __cil_tmp5_9^2 (+ 0 x_7^2))) (= Result_4^3 (+ 0 __cil_tmp5_9^2))) (= len_54^post 2)) (= x_13^3 (+ 0 Result_4^3))) (= Result_4^4 Result_4^4)) (<= 0 (+ 0 len_54^post))) (<= 0 (+ 0 len_54^post))) (<= 0 (+ 0 len_54^post))) (= tmp_8^3 tmp_8^3)) (= x_7^3 (+ 0 tmp_8^3))) (= __cil_tmp5_9^3 (+ 0 x_7^3))) (= Result_4^5 (+ 0 __cil_tmp5_9^3))) (<= 0 (+ 0 len_54^post))) (= k_83^post (+ 1 len_54^post))) (= x_13^4 (+ 0 Result_4^5))) (= Result_4^6 Result_4^6)) (<= 0 (+ 0 k_83^post))) (<= 0 (+ 0 k_83^post))) (<= 0 (+ 0 k_83^post))) (= tmp_8^post tmp_8^post)) (= x_7^post (+ 0 tmp_8^post))) (= __cil_tmp5_9^post (+ 0 x_7^post))) (= Result_4^7 (+ 0 __cil_tmp5_9^post))) (<= 0 (+ 0 k_83^post))) (= x_13^post (+ 0 Result_4^7))) (= Result_4^post Result_4^post)) (<= 0 (+ 0 k_121^0))) (<= 0 (+ 0 k_121^0))) (= a_10^0 a_10^post)) (= a_178^0 a_178^post)) (= k_121^0 k_121^post)) (= len_181^0 len_181^post)) (= lt_15^0 lt_15^post)) (= x_12^0 x_12^post)) (= y_11^0 y_11^post))))
    (cfg_trans2 pc^0 l1 pc^post l3 (exists ( (lt_15^1 Int) ) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (<= 0 (+ 0 k_121^0)) (= len_181^post 1)) (<= (+ 1 y_11^0) (+ 0 x_12^0))) (= lt_15^1 lt_15^1)) (= x_12^post (+ 0 lt_15^1))) (= lt_15^post lt_15^post)) (= Result_4^0 Result_4^post)) (= __cil_tmp5_9^0 __cil_tmp5_9^post)) (= a_10^0 a_10^post)) (= a_178^0 a_178^post)) (= k_121^0 k_121^post)) (= k_83^0 k_83^post)) (= len_54^0 len_54^post)) (= tmp_8^0 tmp_8^post)) (= x_13^0 x_13^post)) (= x_7^0 x_7^post)) (= y_11^0 y_11^post)) (= y_14^0 y_14^post))))
    (cfg_trans2 pc^0 l1 pc^post l3 (exists ( (lt_15^1 Int) ) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (<= 0 (+ 0 k_121^0)) (= len_181^post 1)) (<= (+ 1 x_12^0) (+ 0 y_11^0))) (= lt_15^1 lt_15^1)) (= x_12^post (+ 0 lt_15^1))) (= lt_15^post lt_15^post)) (= Result_4^0 Result_4^post)) (= __cil_tmp5_9^0 __cil_tmp5_9^post)) (= a_10^0 a_10^post)) (= a_178^0 a_178^post)) (= k_121^0 k_121^post)) (= k_83^0 k_83^post)) (= len_54^0 len_54^post)) (= tmp_8^0 tmp_8^post)) (= x_13^0 x_13^post)) (= x_7^0 x_7^post)) (= y_11^0 y_11^post)) (= y_14^0 y_14^post))))
    (cfg_trans2 pc^0 l3 pc^post l4 (exists ( (Result_4^1 Int) ) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (<= 0 (+ 0 a_178^0)) (<= 0 (+ 0 len_181^0))) (<= (+ 0 y_11^0) (+ 0 x_12^0))) (<= (+ 0 x_12^0) (+ 0 y_11^0))) (= Result_4^1 Result_4^1)) (<= 0 (+ 0 len_181^0))) (<= 0 (+ 0 len_181^0))) (= Result_4^post Result_4^post)) (= __cil_tmp5_9^0 __cil_tmp5_9^post)) (= a_10^0 a_10^post)) (= a_178^0 a_178^post)) (= k_121^0 k_121^post)) (= k_83^0 k_83^post)) (= len_181^0 len_181^post)) (= len_54^0 len_54^post)) (= lt_15^0 lt_15^post)) (= tmp_8^0 tmp_8^post)) (= x_12^0 x_12^post)) (= x_13^0 x_13^post)) (= x_7^0 x_7^post)) (= y_11^0 y_11^post)) (= y_14^0 y_14^post))))
    (cfg_trans2 pc^0 l3 pc^post l5 (exists ( (lt_15^1 Int) ) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (<= 0 (+ 0 a_178^0)) (<= 0 (+ 0 len_181^0))) (= len_181^post (+ 1 len_181^0))) (<= (+ 1 y_11^0) (+ 0 x_12^0))) (= lt_15^1 lt_15^1)) (= x_12^post (+ 0 lt_15^1))) (= lt_15^post lt_15^post)) (= Result_4^0 Result_4^post)) (= __cil_tmp5_9^0 __cil_tmp5_9^post)) (= a_10^0 a_10^post)) (= a_178^0 a_178^post)) (= k_121^0 k_121^post)) (= k_83^0 k_83^post)) (= len_54^0 len_54^post)) (= tmp_8^0 tmp_8^post)) (= x_13^0 x_13^post)) (= x_7^0 x_7^post)) (= y_11^0 y_11^post)) (= y_14^0 y_14^post))))
    (cfg_trans2 pc^0 l5 pc^post l3 (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= Result_4^0 Result_4^post) (= __cil_tmp5_9^0 __cil_tmp5_9^post)) (= a_10^0 a_10^post)) (= a_178^0 a_178^post)) (= k_121^0 k_121^post)) (= k_83^0 k_83^post)) (= len_181^0 len_181^post)) (= len_54^0 len_54^post)) (= lt_15^0 lt_15^post)) (= tmp_8^0 tmp_8^post)) (= x_12^0 x_12^post)) (= x_13^0 x_13^post)) (= x_7^0 x_7^post)) (= y_11^0 y_11^post)) (= y_14^0 y_14^post)))
    (cfg_trans2 pc^0 l3 pc^post l6 (exists ( (lt_15^1 Int) ) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (<= 0 (+ 0 a_178^0)) (<= 0 (+ 0 len_181^0))) (= len_181^post (+ 1 len_181^0))) (<= (+ 1 x_12^0) (+ 0 y_11^0))) (= lt_15^1 lt_15^1)) (= x_12^post (+ 0 lt_15^1))) (= lt_15^post lt_15^post)) (= Result_4^0 Result_4^post)) (= __cil_tmp5_9^0 __cil_tmp5_9^post)) (= a_10^0 a_10^post)) (= a_178^0 a_178^post)) (= k_121^0 k_121^post)) (= k_83^0 k_83^post)) (= len_54^0 len_54^post)) (= tmp_8^0 tmp_8^post)) (= x_13^0 x_13^post)) (= x_7^0 x_7^post)) (= y_11^0 y_11^post)) (= y_14^0 y_14^post))))
    (cfg_trans2 pc^0 l6 pc^post l3 (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= Result_4^0 Result_4^post) (= __cil_tmp5_9^0 __cil_tmp5_9^post)) (= a_10^0 a_10^post)) (= a_178^0 a_178^post)) (= k_121^0 k_121^post)) (= k_83^0 k_83^post)) (= len_181^0 len_181^post)) (= len_54^0 len_54^post)) (= lt_15^0 lt_15^post)) (= tmp_8^0 tmp_8^post)) (= x_12^0 x_12^post)) (= x_13^0 x_13^post)) (= x_7^0 x_7^post)) (= y_11^0 y_11^post)) (= y_14^0 y_14^post)))
    (cfg_trans2 pc^0 l7 pc^post l2 (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= Result_4^0 Result_4^post) (= __cil_tmp5_9^0 __cil_tmp5_9^post)) (= a_10^0 a_10^post)) (= a_178^0 a_178^post)) (= k_121^0 k_121^post)) (= k_83^0 k_83^post)) (= len_181^0 len_181^post)) (= len_54^0 len_54^post)) (= lt_15^0 lt_15^post)) (= tmp_8^0 tmp_8^post)) (= x_12^0 x_12^post)) (= x_13^0 x_13^post)) (= x_7^0 x_7^post)) (= y_11^0 y_11^post)) (= y_14^0 y_14^post)))
  )
)
