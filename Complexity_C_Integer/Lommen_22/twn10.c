int twn10(int a, int b, int c, int d) {
    while(c + d > 0) {
        a = 2;
        b = b + 1;
        c = -2*c - a;
        d = b;
    }
    return 0;
}
