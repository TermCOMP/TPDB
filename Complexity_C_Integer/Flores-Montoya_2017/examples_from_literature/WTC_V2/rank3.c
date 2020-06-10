

int nondet();

void rank2(int m)
{
int x=m;
int y=m;
while(x>=2) {
    x--; y = y+x;
    while(y>=x+1 && nondet()>0) {
        y--;
        while(y>=x+3 && nondet()>0) {
           x++; y = y-2;
    	}
        y--;
    }
 x--; y = y-x;
 }
}


