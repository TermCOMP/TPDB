
int nondet();

void insertsort(int length)
{
  int i, j, value;

        for(i = 1; i < length; i++) {
                value = nondet();//a[i];
                for (j = i - 1; j >= 0 && nondet() > value; j--) {
                        ;//a[j + 1] = a[j];
                }
                ;//a[j+1] = value;
        }
}
