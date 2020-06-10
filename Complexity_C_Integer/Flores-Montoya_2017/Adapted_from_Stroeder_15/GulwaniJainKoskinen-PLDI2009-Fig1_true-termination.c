extern int __VERIFIER_nondet_int(void);

int foo(int id,int maxId,int tmp){
if(0 <= id && id < maxId) {
        tmp = id+1;
        while(tmp!=id && __VERIFIER_nondet_int() != 0) {
            if (tmp <= maxId) {
                tmp = tmp + 1;
            } else {
                tmp = 0;
            }
        }
    }
return 0;
}

