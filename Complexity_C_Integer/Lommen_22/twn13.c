int twn13(int a, int b, int c) {
    if (c < 0) {
        while(a + b*b > 0) {
            a = a + b*b*c;
            b = b - 2*c*c;
            c = c;
        }
    }
    return 0;
}
