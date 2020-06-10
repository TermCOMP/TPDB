(declare-sort Loc 0)
(declare-const l0 Loc)
(declare-const l1 Loc)
(declare-const l2 Loc)
(assert (distinct l0 l1 l2))

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

(define-fun init_main ( (pc^0 Loc) (Result_4^0 Int) (cnt_60^0 Int) (devExt_7^0 Int) (i_12^0 Int) (irp_11^0 Int) (loop_count_14^0 Int) (loop_max_13^0 Int) (lt_48^0 Int) (nPacketsOld_9^0 Int) (nPackets_10^0 Int) (request_8^0 Int) ) Bool
  (cfg_init pc^0 l2 true))

(define-fun next_main (
                 (pc^0 Loc) (Result_4^0 Int) (cnt_60^0 Int) (devExt_7^0 Int) (i_12^0 Int) (irp_11^0 Int) (loop_count_14^0 Int) (loop_max_13^0 Int) (lt_48^0 Int) (nPacketsOld_9^0 Int) (nPackets_10^0 Int) (request_8^0 Int)
                 (pc^post Loc) (Result_4^post Int) (cnt_60^post Int) (devExt_7^post Int) (i_12^post Int) (irp_11^post Int) (loop_count_14^post Int) (loop_max_13^post Int) (lt_48^post Int) (nPacketsOld_9^post Int) (nPackets_10^post Int) (request_8^post Int)
             ) Bool
  (or
    (cfg_trans2 pc^0 l0 pc^post l1 (and (and (and (and (and (and (and (and (and (and (= loop_count_14^post loop_count_14^post) (= loop_max_13^post loop_max_13^post)) (= i_12^post i_12^post)) (= irp_11^post irp_11^post)) (= nPackets_10^post nPackets_10^post)) (= nPacketsOld_9^post nPacketsOld_9^post)) (= request_8^post request_8^post)) (= devExt_7^post devExt_7^post)) (= lt_48^post (+ 0 cnt_60^0))) (= Result_4^post Result_4^post)) (= cnt_60^0 cnt_60^post)))
    (cfg_trans2 pc^0 l2 pc^post l0 (and (and (and (and (and (and (and (and (and (and (= Result_4^0 Result_4^post) (= cnt_60^0 cnt_60^post)) (= devExt_7^0 devExt_7^post)) (= i_12^0 i_12^post)) (= irp_11^0 irp_11^post)) (= loop_count_14^0 loop_count_14^post)) (= loop_max_13^0 loop_max_13^post)) (= lt_48^0 lt_48^post)) (= nPacketsOld_9^0 nPacketsOld_9^post)) (= nPackets_10^0 nPackets_10^post)) (= request_8^0 request_8^post)))
  )
)
