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

(define-fun init_main ( (pc^0 Loc) (i1^0 Int) (i2^0 Int) (i3^0 Int) (i4^0 Int) (i5^0 Int) (i6^0 Int) (i7^0 Int) (i8^0 Int) (n17^0 Int) (n21^0 Int) (n25^0 Int) (n29^0 Int) (n33^0 Int) (n37^0 Int) (n41^0 Int) (n45^0 Int) (ret18^0 Int) (ret22^0 Int) (ret26^0 Int) (ret30^0 Int) (ret34^0 Int) (ret38^0 Int) (ret42^0 Int) (ret46^0 Int) (ret_fn120^0 Int) (ret_fn124^0 Int) (ret_fn128^0 Int) (ret_fn132^0 Int) (ret_fn136^0 Int) (ret_fn140^0 Int) (ret_fn144^0 Int) (ret_fn148^0 Int) (tmp19^0 Int) (tmp23^0 Int) (tmp27^0 Int) (tmp31^0 Int) (tmp35^0 Int) (tmp39^0 Int) (tmp43^0 Int) (tmp47^0 Int) (tmp^0 Int) (tmp___0^0 Int) (tmp___1^0 Int) (tmp___2^0 Int) (tmp___3^0 Int) (tmp___4^0 Int) (tmp___5^0 Int) (tmp___6^0 Int) ) Bool
  (cfg_init pc^0 l2 true))

(define-fun next_main (
                 (pc^0 Loc) (i1^0 Int) (i2^0 Int) (i3^0 Int) (i4^0 Int) (i5^0 Int) (i6^0 Int) (i7^0 Int) (i8^0 Int) (n17^0 Int) (n21^0 Int) (n25^0 Int) (n29^0 Int) (n33^0 Int) (n37^0 Int) (n41^0 Int) (n45^0 Int) (ret18^0 Int) (ret22^0 Int) (ret26^0 Int) (ret30^0 Int) (ret34^0 Int) (ret38^0 Int) (ret42^0 Int) (ret46^0 Int) (ret_fn120^0 Int) (ret_fn124^0 Int) (ret_fn128^0 Int) (ret_fn132^0 Int) (ret_fn136^0 Int) (ret_fn140^0 Int) (ret_fn144^0 Int) (ret_fn148^0 Int) (tmp19^0 Int) (tmp23^0 Int) (tmp27^0 Int) (tmp31^0 Int) (tmp35^0 Int) (tmp39^0 Int) (tmp43^0 Int) (tmp47^0 Int) (tmp^0 Int) (tmp___0^0 Int) (tmp___1^0 Int) (tmp___2^0 Int) (tmp___3^0 Int) (tmp___4^0 Int) (tmp___5^0 Int) (tmp___6^0 Int)
                 (pc^post Loc) (i1^post Int) (i2^post Int) (i3^post Int) (i4^post Int) (i5^post Int) (i6^post Int) (i7^post Int) (i8^post Int) (n17^post Int) (n21^post Int) (n25^post Int) (n29^post Int) (n33^post Int) (n37^post Int) (n41^post Int) (n45^post Int) (ret18^post Int) (ret22^post Int) (ret26^post Int) (ret30^post Int) (ret34^post Int) (ret38^post Int) (ret42^post Int) (ret46^post Int) (ret_fn120^post Int) (ret_fn124^post Int) (ret_fn128^post Int) (ret_fn132^post Int) (ret_fn136^post Int) (ret_fn140^post Int) (ret_fn144^post Int) (ret_fn148^post Int) (tmp19^post Int) (tmp23^post Int) (tmp27^post Int) (tmp31^post Int) (tmp35^post Int) (tmp39^post Int) (tmp43^post Int) (tmp47^post Int) (tmp^post Int) (tmp___0^post Int) (tmp___1^post Int) (tmp___2^post Int) (tmp___3^post Int) (tmp___4^post Int) (tmp___5^post Int) (tmp___6^post Int)
             ) Bool
  (or
    (cfg_trans2 pc^0 l0 pc^post l1 (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= n17^post 2) (= tmp19^post tmp19^post)) (= ret18^post (+ 0 tmp19^post))) (= ret_fn120^post (+ 0 ret18^post))) (= tmp^post (+ 0 ret_fn120^post))) (= i1^post (+ 0 tmp^post))) (= n21^post 2)) (= tmp23^post tmp23^post)) (= ret22^post (+ 0 tmp23^post))) (= ret_fn124^post (+ 0 ret22^post))) (= tmp___0^post (+ 0 ret_fn124^post))) (= i2^post (+ 0 tmp___0^post))) (= n25^post 2)) (= tmp27^post tmp27^post)) (= ret26^post (+ 0 tmp27^post))) (= ret_fn128^post (+ 0 ret26^post))) (= tmp___1^post (+ 0 ret_fn128^post))) (= i3^post (+ 0 tmp___1^post))) (= n29^post 2)) (= tmp31^post tmp31^post)) (= ret30^post (+ 0 tmp31^post))) (= ret_fn132^post (+ 0 ret30^post))) (= tmp___2^post (+ 0 ret_fn132^post))) (= i4^post (+ 0 tmp___2^post))) (= n33^post 2)) (= tmp35^post tmp35^post)) (= ret34^post (+ 0 tmp35^post))) (= ret_fn136^post (+ 0 ret34^post))) (= tmp___3^post (+ 0 ret_fn136^post))) (= i5^post (+ 0 tmp___3^post))) (= n37^post 2)) (= tmp39^post tmp39^post)) (= ret38^post (+ 0 tmp39^post))) (= ret_fn140^post (+ 0 ret38^post))) (= tmp___4^post (+ 0 ret_fn140^post))) (= i6^post (+ 0 tmp___4^post))) (= n41^post 2)) (= tmp43^post tmp43^post)) (= ret42^post (+ 0 tmp43^post))) (= ret_fn144^post (+ 0 ret42^post))) (= tmp___5^post (+ 0 ret_fn144^post))) (= i7^post (+ 0 tmp___5^post))) (= n45^post 2)) (= tmp47^post tmp47^post)) (= ret46^post (+ 0 tmp47^post))) (= ret_fn148^post (+ 0 ret46^post))) (= tmp___6^post (+ 0 ret_fn148^post))) (= i8^post (+ 0 tmp___6^post))))
    (cfg_trans2 pc^0 l2 pc^post l0 (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= i1^0 i1^post) (= i2^0 i2^post)) (= i3^0 i3^post)) (= i4^0 i4^post)) (= i5^0 i5^post)) (= i6^0 i6^post)) (= i7^0 i7^post)) (= i8^0 i8^post)) (= n17^0 n17^post)) (= n21^0 n21^post)) (= n25^0 n25^post)) (= n29^0 n29^post)) (= n33^0 n33^post)) (= n37^0 n37^post)) (= n41^0 n41^post)) (= n45^0 n45^post)) (= ret18^0 ret18^post)) (= ret22^0 ret22^post)) (= ret26^0 ret26^post)) (= ret30^0 ret30^post)) (= ret34^0 ret34^post)) (= ret38^0 ret38^post)) (= ret42^0 ret42^post)) (= ret46^0 ret46^post)) (= ret_fn120^0 ret_fn120^post)) (= ret_fn124^0 ret_fn124^post)) (= ret_fn128^0 ret_fn128^post)) (= ret_fn132^0 ret_fn132^post)) (= ret_fn136^0 ret_fn136^post)) (= ret_fn140^0 ret_fn140^post)) (= ret_fn144^0 ret_fn144^post)) (= ret_fn148^0 ret_fn148^post)) (= tmp^0 tmp^post)) (= tmp19^0 tmp19^post)) (= tmp23^0 tmp23^post)) (= tmp27^0 tmp27^post)) (= tmp31^0 tmp31^post)) (= tmp35^0 tmp35^post)) (= tmp39^0 tmp39^post)) (= tmp43^0 tmp43^post)) (= tmp47^0 tmp47^post)) (= tmp___0^0 tmp___0^post)) (= tmp___1^0 tmp___1^post)) (= tmp___2^0 tmp___2^post)) (= tmp___3^0 tmp___3^post)) (= tmp___4^0 tmp___4^post)) (= tmp___5^0 tmp___5^post)) (= tmp___6^0 tmp___6^post)))
  )
)
