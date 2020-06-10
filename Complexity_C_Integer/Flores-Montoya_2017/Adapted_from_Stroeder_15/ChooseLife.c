extern int __VERIFIER_nondet_int(void);

int foo(int choose,int life,int death,int temp){
choose = 2;
life = 13;
death = 17;
while (life < death) {
        temp = death;
        death = life + 1;
        life = temp;
        
        if (choose < life || choose < death) {
            life = choose;
        }
    }
return 0;
}

