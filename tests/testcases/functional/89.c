
int testParam32(int a0, int a1, int a2, int a3,
                int a4, int a5, int a6, int a7,
                int a8, int a9, int a10, int a11,
                int a12, int a13, int a14, int a15,
                int a16, int a17, int a18, int a19,
                int a20, int a21, int a22, int a23,
                int a24, int a25, int a26, int a27,
                int a28, int a29, int a30, int a31)
{
   int a = a0+a1+a6+a25+a31;
    return a;
}

int main()
{ 
    int a = testParam32(32, 1, 2, 3,
                        4, 5, 6, 7,
                        8, 9, 10, 11,
                        12, 13, 14, 15,
                        16, 17, 18, 19,
                        20, 21, 22, 23,
                        24, 25, 26, 27,
                        28, 29, 30, 31);
 
  int b = testParam32(31, 1, 2, 3,
                        4, 5, 6, 7,
                        8, 9, 10, 11,
                        12, 13, 14, 15,
                        16, 17, 18, 19,
                        20, 21, 22, 23,
                        24, 25, 26, 27,
                        28, 29, 30, 31);
 
   
    return 0;
}
