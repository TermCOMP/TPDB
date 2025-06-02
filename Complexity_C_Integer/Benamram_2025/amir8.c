/*
 * Example for complexity analysis
 * Contributed by Amir ben-Amram, june 2025
 */

void amir8(int L1, int L2, int X, int Y)
{
    int A, B;
    int R1 = 0;
    int R2 = 0;
    while ( L2-- > 0 ) {
        A = X; B = Y;
        for (i=0; i<L1; i++) {
            int tmp=A;
            B = A;
            A = tmp;
        }
        R1 = A;
        A = Y;
        B = X;
        for (i=0; i<L1; i++) {
            int tmp=A;
            B = A;
            A = tmp;
        }
        R2 = A;
        X =  R1 +R2;
    }
    while (X>0) X-- ;
}