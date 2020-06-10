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
(assert (distinct l0 l1 l2 l3 l4 l5 l6 l7 l8 l9 l10))

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

(define-fun init_main ( (pc^0 Loc) (acc12^0 Int) (acc_length11^0 Int) (coef_len210^0 Int) (coef_len6^0 Int) (i8^0 Int) (in_len4^0 Int) (j9^0 Int) (scale7^0 Int) ) Bool
  (cfg_init pc^0 l10 true))

(define-fun next_main (
                 (pc^0 Loc) (acc12^0 Int) (acc_length11^0 Int) (coef_len210^0 Int) (coef_len6^0 Int) (i8^0 Int) (in_len4^0 Int) (j9^0 Int) (scale7^0 Int)
                 (pc^post Loc) (acc12^post Int) (acc_length11^post Int) (coef_len210^post Int) (coef_len6^post Int) (i8^post Int) (in_len4^post Int) (j9^post Int) (scale7^post Int)
             ) Bool
  (or
    (cfg_trans2 pc^0 l0 pc^post l1 (and (and (and (and (and (and (and (= acc12^0 acc12^post) (= acc_length11^0 acc_length11^post)) (= coef_len210^0 coef_len210^post)) (= coef_len6^0 coef_len6^post)) (= i8^0 i8^post)) (= in_len4^0 in_len4^post)) (= j9^0 j9^post)) (= scale7^0 scale7^post)))
    (cfg_trans2 pc^0 l2 pc^post l0 (and (and (and (and (and (and (and (and (<= (+ 0 coef_len6^0) (+ 0 acc_length11^0)) (= acc12^0 acc12^post)) (= acc_length11^0 acc_length11^post)) (= coef_len210^0 coef_len210^post)) (= coef_len6^0 coef_len6^post)) (= i8^0 i8^post)) (= in_len4^0 in_len4^post)) (= j9^0 j9^post)) (= scale7^0 scale7^post)))
    (cfg_trans2 pc^0 l2 pc^post l0 (and (and (and (and (and (and (and (and (<= (+ 1 acc_length11^0) (+ 0 coef_len6^0)) (= acc_length11^post (+ 1 acc_length11^0))) (= acc12^0 acc12^post)) (= coef_len210^0 coef_len210^post)) (= coef_len6^0 coef_len6^post)) (= i8^0 i8^post)) (= in_len4^0 in_len4^post)) (= j9^0 j9^post)) (= scale7^0 scale7^post)))
    (cfg_trans2 pc^0 l1 pc^post l3 (and (and (and (and (and (and (and (= i8^post (+ 1 i8^0)) (= acc12^0 acc12^post)) (= acc_length11^0 acc_length11^post)) (= coef_len210^0 coef_len210^post)) (= coef_len6^0 coef_len6^post)) (= in_len4^0 in_len4^post)) (= j9^0 j9^post)) (= scale7^0 scale7^post)))
    (cfg_trans2 pc^0 l4 pc^post l2 (and (and (and (and (and (and (and (= acc12^0 acc12^post) (= acc_length11^0 acc_length11^post)) (= coef_len210^0 coef_len210^post)) (= coef_len6^0 coef_len6^post)) (= i8^0 i8^post)) (= in_len4^0 in_len4^post)) (= j9^0 j9^post)) (= scale7^0 scale7^post)))
    (cfg_trans2 pc^0 l4 pc^post l1 (and (and (and (and (and (and (and (= acc_length11^post (+ -1 acc_length11^0)) (= acc12^0 acc12^post)) (= coef_len210^0 coef_len210^post)) (= coef_len6^0 coef_len6^post)) (= i8^0 i8^post)) (= in_len4^0 in_len4^post)) (= j9^0 j9^post)) (= scale7^0 scale7^post)))
    (cfg_trans2 pc^0 l4 pc^post l2 (and (and (and (and (and (and (and (= acc12^0 acc12^post) (= acc_length11^0 acc_length11^post)) (= coef_len210^0 coef_len210^post)) (= coef_len6^0 coef_len6^post)) (= i8^0 i8^post)) (= in_len4^0 in_len4^post)) (= j9^0 j9^post)) (= scale7^0 scale7^post)))
    (cfg_trans2 pc^0 l3 pc^post l5 (and (and (and (and (and (and (and (= acc12^0 acc12^post) (= acc_length11^0 acc_length11^post)) (= coef_len210^0 coef_len210^post)) (= coef_len6^0 coef_len6^post)) (= i8^0 i8^post)) (= in_len4^0 in_len4^post)) (= j9^0 j9^post)) (= scale7^0 scale7^post)))
    (cfg_trans2 pc^0 l6 pc^post l4 (and (and (and (and (and (and (and (and (<= (+ 0 acc_length11^0) (+ 0 j9^0)) (= acc12^0 acc12^post)) (= acc_length11^0 acc_length11^post)) (= coef_len210^0 coef_len210^post)) (= coef_len6^0 coef_len6^post)) (= i8^0 i8^post)) (= in_len4^0 in_len4^post)) (= j9^0 j9^post)) (= scale7^0 scale7^post)))
    (cfg_trans2 pc^0 l6 pc^post l7 (and (and (and (and (and (and (and (and (<= (+ 1 j9^0) (+ 0 acc_length11^0)) (= acc12^post acc12^post)) (= j9^post (+ 1 j9^0))) (= acc_length11^0 acc_length11^post)) (= coef_len210^0 coef_len210^post)) (= coef_len6^0 coef_len6^post)) (= i8^0 i8^post)) (= in_len4^0 in_len4^post)) (= scale7^0 scale7^post)))
    (cfg_trans2 pc^0 l7 pc^post l6 (and (and (and (and (and (and (and (= acc12^0 acc12^post) (= acc_length11^0 acc_length11^post)) (= coef_len210^0 coef_len210^post)) (= coef_len6^0 coef_len6^post)) (= i8^0 i8^post)) (= in_len4^0 in_len4^post)) (= j9^0 j9^post)) (= scale7^0 scale7^post)))
    (cfg_trans2 pc^0 l5 pc^post l8 (and (and (and (and (and (and (and (and (<= (+ 0 in_len4^0) (+ 0 i8^0)) (= acc12^0 acc12^post)) (= acc_length11^0 acc_length11^post)) (= coef_len210^0 coef_len210^post)) (= coef_len6^0 coef_len6^post)) (= i8^0 i8^post)) (= in_len4^0 in_len4^post)) (= j9^0 j9^post)) (= scale7^0 scale7^post)))
    (cfg_trans2 pc^0 l5 pc^post l7 (and (and (and (and (and (and (and (and (<= (+ 1 i8^0) (+ 0 in_len4^0)) (= acc12^post acc12^post)) (= j9^post 1)) (= acc_length11^0 acc_length11^post)) (= coef_len210^0 coef_len210^post)) (= coef_len6^0 coef_len6^post)) (= i8^0 i8^post)) (= in_len4^0 in_len4^post)) (= scale7^0 scale7^post)))
    (cfg_trans2 pc^0 l9 pc^post l3 (and (and (and (and (and (and (and (= in_len4^post 10) (= coef_len6^post 35)) (= scale7^post 285)) (= coef_len210^post coef_len210^post)) (= acc_length11^post (+ 0 coef_len210^post))) (= i8^post 0)) (= acc12^0 acc12^post)) (= j9^0 j9^post)))
    (cfg_trans2 pc^0 l10 pc^post l9 (and (and (and (and (and (and (and (= acc12^0 acc12^post) (= acc_length11^0 acc_length11^post)) (= coef_len210^0 coef_len210^post)) (= coef_len6^0 coef_len6^post)) (= i8^0 i8^post)) (= in_len4^0 in_len4^post)) (= j9^0 j9^post)) (= scale7^0 scale7^post)))
  )
)
