

int nondet();

void rank2(int m)
{
int x=m;
int y=m;
while(x>=2) {
x--; y = y+x;
while(y>=x && nondet()>0) y--;
x--; y = y-x;
}
}


