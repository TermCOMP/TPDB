void jama_ex6(int a,int b,int c, int d){
int i,j,k;
for( i=a;i<=b;i++)
  for( j=c;j<=d;j++)
    for(k=i-j;k<=i+j;k++)
    ;
}
