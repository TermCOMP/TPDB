int twn12(int a, int b, int c) {
    while(a + b*b > 0) {
        a = a + b*b*c;
        b = b - 2*c*c;
        c = c;
    }
    return 0;
}
